import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surapp_flutter/common/ui_kit/app_color_scheme.dart';
import 'package:surapp_flutter/common/ui_kit/app_text_styles.dart';
import 'package:surapp_flutter/common/ui_kit/custom_bottom_sheet/custom_bottom_sheet.dart';
import 'package:surapp_flutter/common/ui_kit/resize_indicator.dart';
import 'package:surapp_flutter/common/ui_kit/search_field/search_field.dart';
import 'package:surapp_flutter/common/ui_kit/text_styles.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';
import 'package:surapp_flutter/features/ustaz_selector/presentation/bloc/ustaz_selector_bloc.dart';

class UstazSelectorPage extends StatefulWidget {
  const UstazSelectorPage({
    super.key,
    this.onSelect,
    required this.bloc,
    required this.selectedId,
  });

  final UstazPickerBloc bloc;
  final ValueChanged<UserModel>? onSelect;
  final int selectedId;

  @override
  State<UstazSelectorPage> createState() => _UstazSelectorPageState();
}

class _UstazSelectorPageState extends State<UstazSelectorPage> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();

    super.dispose();
  }

  void _scrollListener() {
    if (widget.bloc.state.last) return;
    if (!_scrollController.hasClients) return;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    if (currentScroll >= (maxScroll * 0.9)) {
      widget.bloc.add(ListScrolledEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UstazPickerBloc, UstazPickerState>(
      bloc: widget.bloc,
      builder: (context, state) {
        final reciters = state.reciters;

        return Container(
          height: CustomBottomSheet.getMaxHeight(context),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ResizeIndicator(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Устаздар",
                  style: AppTextStyles.heading3(
                    AppColorScheme.secondary,
                  ),
                ),
              ),
              SearchField(
                controller: _searchController,
                placeholder: "Поиск",
                onChanged: (text) =>
                    widget.bloc.add(GetRecitersEvent(query: text)),
              ),
              const SizedBox(height: 16),
              state.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : state.reciters.isEmpty
                      ? const _Empty()
                      : Expanded(
                          child: ListView.builder(
                              keyboardDismissBehavior:
                                  ScrollViewKeyboardDismissBehavior.onDrag,
                              itemCount: state.reciters.length,
                              controller: _scrollController,
                              itemBuilder: (_, index) {
                                final reciter = reciters[index];
                                final name = [
                                  reciter.name ?? '',
                                  reciter.surname ?? ''
                                ].join(" ").trim();

                                return GestureDetector(
                                  onTap: () {
                                    widget.onSelect
                                        ?.call(state.reciters[index]);
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 12),
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF2F2F7),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 26,
                                          backgroundImage:
                                              NetworkImage(reciter.avatarUrl),
                                        ),
                                        SizedBox(width: 12),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(name,
                                                style:
                                                    SurAppTextStyle.fS15FW600),
                                            Text(
                                              "@${reciter.username}",
                                              style: SurAppTextStyle.fS14FW500
                                                  .copyWith(
                                                      color: Color(0xFFAEAEB2)),
                                            ),
                                          ],
                                        ),
                                        if (reciter.id == widget.selectedId)
                                          Container(
                                            padding: EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.green,
                                            ),
                                            child: Icon(Icons.check,
                                                color: Colors.white, size: 18),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
            ],
          ),
        );
      },
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 33),
        Text(
          "Список пустой",
          style: AppTextStyles.heading2(AppColorScheme.secondary),
        ),
      ],
    );
  }
}
