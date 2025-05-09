import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surapp_flutter/common/ui_kit/text_styles.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';
import 'package:surapp_flutter/common/widgets/buttons/app_button.dart';
import 'package:take_it/take_it.dart';

import '../../../../common/ui_kit/app_color_scheme.dart';
import '../../../home_feature/di/home_di_module.dart';
import '../../../home_feature/presentation/bloc/get_categories/get_categories_bloc.dart';
import '../../../home_feature/presentation/widgets/category_shimmer_widget.dart';
import '../../../ustaz_selector/presentation/ustaz_selector_wrapper.dart';
import '../bloc/ask_question_bloc.dart';

class SendQuestioniew extends StatefulWidget {
  const SendQuestioniew({
    super.key,
    required this.bloc,
  });

  final AskQuestionBloc bloc;

  @override
  State<SendQuestioniew> createState() => _SendQuestioniewState();
}

class _SendQuestioniewState extends State<SendQuestioniew> {
  final textController = TextEditingController();

  List<int> selectedCategories = [];

  @override
  void initState() {
    textController.addListener(_onUserNameChange);
    super.initState();
  }

  void _onUserNameChange() {
    widget.bloc.add(TextChangedEvent(textController.text.trim()));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Сурооңузду жазыңыз',
            style: SurAppTextStyle.fS18FW600,
          ),
          leading: AutoLeadingButton(
            color: Colors.black,
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: BlocConsumer<AskQuestionBloc, AskQuestionState>(
              bloc: widget.bloc,
              listenWhen: (p, c) =>
                  p.status != c.status || p.categories != c.categories,
              buildWhen: (p, c) =>
                  p.status != c.status || p.question != c.question,
              listener: (context, state) {
                selectedCategories = state.categories;
                setState(() {});
                if (state.status == AskQuestionStatus.loaded) {
                  context.router.pop();
                }
              },
              builder: (context, state) {
                return AppButton.primary(
                  isLoading: state.status.isLoading,
                  child: Text('Жарыялоо'),
                  onPressed: () {
                    log("state.categories ${state.categories}");

                    if (state.question.isNotEmpty &&
                        state.categories.isNotEmpty) {
                      widget.bloc.add(CreateQuestionEvent());
                    }
                  },
                );
              },
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Устазды тандоо",
                style: SurAppTextStyle.fS16FW500,
              ),
              16.toHeight,
              GestureDetector(
                onTap: () {
                  showUstazPicker(
                    context,
                    selectedId: widget.bloc.state.selectedReciter?.id ?? 0,
                    onSelect: (user) {
                      widget.bloc.add(SelectUstazEvent(user));
                    },
                  );
                },
                child: BlocBuilder<AskQuestionBloc, AskQuestionState>(
                  buildWhen: (p, c) => p.selectedReciter != c.selectedReciter,
                  bloc: widget.bloc,
                  builder: (context, state) {
                    final reciter = state.selectedReciter;
                    final name = [reciter?.name ?? '', reciter?.surname ?? '']
                        .join(" ")
                        .trim();
                    return Container(
                      margin: EdgeInsets.only(bottom: 12),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xFFF7F7FB),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 26,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_kSSoomJ9hiFXmiF2RdZlwx72Y23XsT6iwQ&s"),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name.isNotEmpty ||
                                          reciter?.username.isNotEmpty == true
                                      ? name
                                      : "Устазды танданыз",
                                  style: SurAppTextStyle.fS16FW600,
                                ),
                                Text(
                                  reciter?.username != null
                                      ? "@${reciter?.username}"
                                      : "",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          // if (teacher.isSelected)
                          Icon(Icons.arrow_forward_ios,
                              color: Colors.black, size: 18),
                        ],
                      ),
                    );
                  },
                ),
              ),
              // ignore: lines_longer_than_80_chars
              Text(
                "Сурооңуз кайсы категорияга тиешелүү экенин белгилеңиз?",
                style: SurAppTextStyle.fS16FW600,
              ),
              16.toHeight,

              DiScopeBuilder(
                  createModule: HomeDiModule.new,
                  builder: (_, module) {
                    return BlocBuilder<GetCategoriesBloc, GetCategoriesState>(
                      bloc: module.get<GetCategoriesBloc>()
                        ..add(
                          GetCategoriesEvent.started(),
                        ),
                      builder: (context, state) {
                        if (state is GetCategoriesLoading) {
                          return CategoryShimmerWidget();
                        }
                        if (state is GetCategoriesError) {
                          return Center(
                            child: Text(
                              'Error: ${state.errorMessage}',
                              style: SurAppTextStyle.fS16FW700
                                  .copyWith(color: AppColorScheme.primary),
                            ),
                          );
                        }
                        if (state is GetCategoriesFetched) {
                          final item = state.data;
                          return SizedBox(
                            height: 30,
                            child: ListView.separated(
                              // padding:
                              // const EdgeInsets.symmetric(horizontal: 16),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: item.length,
                              separatorBuilder: (context, index) {
                                return 8.toWidth;
                              },
                              itemBuilder: (context, index) {
                                // return BlocBuilder<AskQuestionBloc,
                                //     AskQuestionState>(
                                //   builder: (context, askState) {
                                return InkWell(
                                  onTap: () {
                                    // setState(() {});
                                    widget.bloc.add(
                                        AddRemoveCategoryEvent(item[index].id));
                                    log(" selectedCategories $selectedCategories");
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    decoration: BoxDecoration(
                                      color: selectedCategories
                                              .contains(item[index].id)
                                          ? AppColorScheme.primary
                                          : Colors.black26,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        item[index].name,
                                        style: SurAppTextStyle.fS14FW700
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                );
                                //   },
                                // );
                              },
                            ),
                          );
                        } else {
                          return SizedBox();
                        }
                      },
                    );
                  }),
              16.toHeight,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Сиздин суроонуз?",
                    style: SurAppTextStyle.fS16FW500,
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: textController,
                    maxLines: 6, // Makes it "big"
                    style: SurAppTextStyle.fS15FW400,
                    decoration: InputDecoration(
                      hintText: "Бул жерге жазыңыз...",
                      hintStyle: SurAppTextStyle.fS15FW400
                          .copyWith(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Color(0xFFF5F5F5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
