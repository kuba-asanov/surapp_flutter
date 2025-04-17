import 'package:auto_route/auto_route.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surapp_flutter/common/ui_kit/text_styles.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';
import 'package:surapp_flutter/common/widgets/buttons/app_button.dart';
import 'package:surapp_flutter/features/home_feature/data/models/post_model/post_model.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_questions/get_questions_bloc.dart';

class AnswerToQuestionView extends StatefulWidget {
  const AnswerToQuestionView({
    super.key,
    required this.bloc,
    required this.question,
  });

  final GetQuestionsBloc bloc;
  final PostModel question;

  @override
  State<AnswerToQuestionView> createState() => _AnswerToQuestionViewState();
}

class _AnswerToQuestionViewState extends State<AnswerToQuestionView> {
  final textController = TextEditingController();

  @override
  void initState() {
    textController.addListener(_onUserNameChange);
    super.initState();
  }

  void _onUserNameChange() {
    widget.bloc.add(TextChangedEvent(text: textController.text.trim()));
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
            'Жообунузду жазыңыз',
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
            child: BlocConsumer<GetQuestionsBloc, GetQuestionsState>(
              bloc: widget.bloc,
              listenWhen: (p, c) => p.status != c.status,
              listener: (context, state) {
                context.router.pop();
              },
              buildWhen: (p, c) => p.status != c.status || p.answer != c.answer,
              builder: (context, state) {
                return AppButton.primary(
                  isLoading: state.status.isLoading,
                  child: Text('Жарыялоо'),
                  onPressed: () {
                    if (state.answer.isNotEmpty) {
                      widget.bloc.add(
                          CreateAnswerEvent(questionId: widget.question.id));
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
                "Суроо:",
                style: SurAppTextStyle.fS16FW500,
              ),
              16.toHeight,
              Container(
                margin: EdgeInsets.only(bottom: 12),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFFF7F7FB),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ExpandableText(
                  widget.question.content,
                  style: SurAppTextStyle.fS14FW400,
                  maxLines: 4,
                  expandText: 'толук коруу',
                  collapseText: 'жабуу',
                  linkColor: Colors.blue,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Сиздин жообунуз?",
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
