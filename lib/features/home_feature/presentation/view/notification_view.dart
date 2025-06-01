import 'package:auto_route/auto_route.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:surapp_flutter/common/app_assets/app_assets.dart';
import 'package:surapp_flutter/common/ui_kit/text_styles.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';
import 'package:surapp_flutter/common/widgets/buttons/app_button.dart';
import 'package:surapp_flutter/core/navigation/auto_router.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_questions/get_questions_bloc.dart';
import 'package:surapp_flutter/features/home_feature/presentation/view/empty_home_widget.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key, required this.bloc});

  final GetQuestionsBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            SvgPicture.asset(AppAssets.svg.mosque),
            Text(
              "Берилген суроолор",
              style: SurAppTextStyle.fS18FW600,
            )
          ],
        ),
      ),
      body: BlocBuilder<GetQuestionsBloc, GetQuestionsState>(
        bloc: bloc,
        builder: (context, state) {
          if (state.status.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.status.isFailure) {
            return Center(
              child: Text('Error: ${state.errorMessage}'),
            );
          }
          if (state.status.isLoaded) {
            if (state.questions.isEmpty) {
              return EmptyHomeWidget(
                title: 'Сизге азырынча эч ким суроо бере элек',
                description: 'Сизге суроо келип тушсо, бул жерден пайда болот',
              );
            }
            return ListView.separated(
              itemCount: state.questions.length,
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemBuilder: (context, index) {
                final question = state.questions[index];
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
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
                                        text: question.author.name ??
                                            "" " ${question.author.surname ?? ''}",
                                        style: SurAppTextStyle.fS14FW700,
                                      ),
                                      TextSpan(
                                        text: ' @${question.author.username}',
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
                                  question.content,
                                  style: SurAppTextStyle.fS14FW400,
                                  maxLines: 3,
                                  expandText: 'толук коруу',
                                  collapseText: 'жабуу',
                                  linkColor: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      10.toHeight,
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: AppButton.primary(
                          child: Text(
                            "Жооп берүү",
                            style: SurAppTextStyle.fS14FW500
                                .copyWith(color: Colors.white),
                          ),
                          onPressed: () {
                            context.router.push(
                              AnswerToQuestionRoute(
                                question: question,
                                bloc: bloc,
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
