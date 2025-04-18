import 'package:auto_route/auto_route.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:surapp_flutter/common/ui_kit/app_color_scheme.dart';
import 'package:surapp_flutter/common/ui_kit/search_field/search_field.dart';
import 'package:surapp_flutter/common/ui_kit/text_styles.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';
import 'package:surapp_flutter/core/navigation/auto_router.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_posts/get_posts_bloc.dart';
import 'package:surapp_flutter/features/home_feature/presentation/view/empty_home_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
    required this.bloc,
  });
  final GetPostsBloc bloc;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _controller = TextEditingController();

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
                SvgPicture.asset('assets/images/mosque.svg'),
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
            ),
          ),
          body: BlocBuilder<GetPostsBloc, GetPostsState>(
            bloc: widget.bloc,
            builder: (context, state) {
              if (state is GetPostsLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is GetPostsError) {
                return Center(
                  child: Text('Error: ${state.errorMessage}'),
                );
              }
              if (state is GetPostsFetched) {
                if (state.data.isEmpty) {
                  return EmptyHomeWidget(
                    title: 'Азырынча бир да суроо жок',
                    description:
                        'Биринчилерден болуп суроо беруу учун "+" баскычын басыныз',
                  );
                }
                return ListView.separated(
                  itemCount: state.data.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.grey,
                      height: 1,
                    );
                  },
                  itemBuilder: (context, index) {
                    final post = state.data[index];
                    final name = [
                      post.recipient?.name ?? '',
                      post.recipient?.surname ?? ''
                    ].join(" ").trim();

                    return Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 27,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_kSSoomJ9hiFXmiF2RdZlwx72Y23XsT6iwQ&s'), // replace with actual avatar
                          ),
                          8.toWidth,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: name,
                                        style: SurAppTextStyle.fS14FW700,
                                      ),
                                      TextSpan(
                                        text: ' @${post.recipient?.username}',
                                        style: SurAppTextStyle.fS14FW500,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Суроо:',
                                  style: SurAppTextStyle.fS14FW700,
                                ),
                                SizedBox(height: 8),
                                ExpandableText(
                                  post.content,
                                  style: SurAppTextStyle.fS14FW400,
                                  maxLines: 3,
                                  expandText: 'толук коруу',
                                  collapseText: 'жабуу',
                                  linkColor: Colors.blue,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Жооп:',
                                  style: SurAppTextStyle.fS14FW700,
                                ),
                                SizedBox(height: 8),
                                ExpandableText(
                                  post.answer ?? '',
                                  style: SurAppTextStyle.fS14FW400,
                                  maxLines: 3,
                                  expandText: 'толук коруу',
                                  collapseText: 'жабуу',
                                  linkColor: Colors.blue,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.ios_share_rounded,
                                          size: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
              return SizedBox();
            },
          ),
        ));
  }
}
