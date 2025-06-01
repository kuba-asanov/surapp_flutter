import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:surapp_flutter/common/app_assets/app_assets.dart';

import 'package:surapp_flutter/common/ui_kit/app_color_scheme.dart';
import 'package:surapp_flutter/common/ui_kit/search_field/search_field.dart';
import 'package:surapp_flutter/common/ui_kit/text_styles.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';
import 'package:surapp_flutter/core/navigation/auto_router.dart';

import '../bloc/get_categories/get_categories_bloc.dart';
import '../bloc/get_posts/get_posts_bloc.dart';
import '../widgets/category_shimmer_widget.dart';
import '../widgets/list_posts_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
    required this.postBloc,
    required this.categoriesBloc,
  });
  final GetPostsBloc postBloc;
  final GetCategoriesBloc categoriesBloc;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _controller = TextEditingController();
  List<int> selectedCategories = [];

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
          toolbarHeight: 120,
          title: Column(
            children: [
              SvgPicture.asset(AppAssets.svg.mosque),
              24.toHeight,
              SearchField(
                placeholder: "Издоо",
                controller: _controller,
                onChanged: (val) {},
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: AppColorScheme.primary,
          onPressed: () {
            context.router.push(SendQuestionRoute());
          },
          child: Icon(
            Icons.add,
            size: 40,
            color: Colors.white,
          ),
        ),
        body: ListView(
          children: [
            BlocBuilder<GetCategoriesBloc, GetCategoriesState>(
              bloc: widget.categoriesBloc,
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
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: item.length,
                      separatorBuilder: (context, index) {
                        return 8.toWidth;
                      },
                      itemBuilder: (context, index) {
                        return BlocConsumer<GetPostsBloc, GetPostsState>(
                          listener: (context, state) {
                            selectedCategories = state.categories;
                          },
                          bloc: widget.postBloc,
                          builder: (context, postState) {
                            return InkWell(
                              onTap: () {
                                widget.postBloc.add(AddRemoveCategoryEvent(
                                    category: item[index].id));
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  color: selectedCategories
                                          .contains(item[index].id)
                                      ? AppColorScheme.primary
                                      : Colors.black12,
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
                          },
                        );
                      },
                    ),
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
            ListPostsWidget(
              bloc: widget.postBloc,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
