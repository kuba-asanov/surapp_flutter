import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';

import '../../../../common/ui_kit/text_styles.dart';
import '../bloc/get_posts/get_posts_bloc.dart';
import '../view/empty_home_widget.dart';

class ListPostsWidget extends StatelessWidget {
  const ListPostsWidget({
    super.key,
    required this.bloc,
    this.physics,
  });

  final GetPostsBloc bloc;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPostsBloc, GetPostsState>(
      bloc: bloc,
      builder: (context, state) {
        if (state.status == GetPostsStatus.loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.status == GetPostsStatus.failure) {
          return Center(
            child: Text('Error: ${state.errorMessage}'),
          );
        }
        if (state.status == GetPostsStatus.loaded) {
          if (state.data.isEmpty) {
            return EmptyHomeWidget(
              title: 'Азырынча бир да суроо жок',
              description:
                  'Биринчилерден болуп суроо беруу учун "+" баскычын басыныз',
            );
          }
          return ListView.separated(
            itemCount: state.data.length,
            physics: physics ?? AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
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
                                icon: Icon(Icons.ios_share_rounded, size: 20),
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
    );
  }
}
