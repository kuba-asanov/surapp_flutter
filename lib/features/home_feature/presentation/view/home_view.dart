import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:surapp_flutter/common/ui_kit/app_color_scheme.dart';
import 'package:surapp_flutter/common/ui_kit/text_styles.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';
import 'package:surapp_flutter/core/navigation/auto_router.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_posts/get_posts_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.bloc});
  final GetPostsBloc bloc;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _controller = TextEditingController();

  List<bool> listQExpanded = List.generate(10000, (index) => false);
  List<bool> listAExpanded = List.generate(10000, (index) => false);

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
                SizedBox(
                  height: 40,
                  child: TextField(
                    controller: _controller,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF2F2F7),
                      hintText: 'Search',
                      suffixIcon: _controller.text.isNotEmpty
                          ? IconButton(
                              icon: Icon(
                                Icons.clear,
                                color: Colors.black,
                                size: 20,
                              ),
                              onPressed: () {
                                _controller.clear();
                                FocusScope.of(context).requestFocus(
                                    FocusNode()); // remove keyboard
                              },
                            )
                          : null,
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8E8E93),
                      ),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
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
          //
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
                return ListView.separated(
                  itemCount: state.data.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.grey,
                      height: 1,
                    );
                  },
                  itemBuilder: (context, index) {
                    final isQExpanded = listQExpanded[index];
                    final isAExpanded = listAExpanded[index];
                    final post = state.data[index];

                    return Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 27,
                            backgroundImage: NetworkImage(
                                'https://steela.ir/en/wp-content/uploads/2022/11/User-Avatar-in-Suit-PNG.png'), // replace with actual avatar
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
                                        text: 'Randy Calzoni ',
                                        style: SurAppTextStyle.fS14FW700,
                                      ),
                                      TextSpan(
                                        text: '@randycalzoni • 5м',
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
                                Text(
                                  post.content,
                                  style: SurAppTextStyle.fS14FW400,
                                  maxLines: isQExpanded ? null : 1,
                                  overflow: isQExpanded
                                      ? TextOverflow.visible
                                      : TextOverflow.ellipsis,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        listQExpanded[index] =
                                            !listQExpanded[index];
                                      });
                                    },
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero),
                                    child: Text(
                                        listQExpanded[index] ? 'Hide' : 'Show'),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Жооп:',
                                      style: SurAppTextStyle.fS14FW700,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  post.answer ?? 'No answer provided',
                                  style: SurAppTextStyle.fS14FW400,
                                  maxLines: isAExpanded ? null : 3,
                                  overflow: isAExpanded
                                      ? TextOverflow.visible
                                      : TextOverflow.ellipsis,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        listAExpanded[index] =
                                            !listAExpanded[index];
                                      });
                                    },
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero),
                                    child: Text(
                                        listAExpanded[index] ? 'Hide' : 'Show'),
                                  ),
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
              } else {
                return SizedBox();
              }
            },
          ),
        ));
  }
}
