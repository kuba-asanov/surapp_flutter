import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/common/ui_kit/app_color_scheme.dart';
import 'package:surapp_flutter/common/ui_kit/text_styles.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';
import 'package:surapp_flutter/features/ustaz_selector/presentation/ustaz_selector_wrapper.dart';

class SendQuestioniew extends StatelessWidget {
  const SendQuestioniew({super.key});

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
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(AppColorScheme.primary)),
                  onPressed: () {},
                  child: Text(
                    "Жарыялоо",
                    style:
                        SurAppTextStyle.fS15FW600.copyWith(color: Colors.white),
                  ))),
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
                  showUstazPicker(context, selectedId: 1);
                  // context.router.push(SelectUstazRoute());
                },
                child: Container(
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
                            "https://static.vecteezy.com/system/resources/previews/011/209/565/non_2x/user-profile-avatar-free-vector.jpg"),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "teacher.name",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              " teacher.username",
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
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Сиздин суроонуз?",
                    style: SurAppTextStyle.fS16FW500,
                  ),
                  const SizedBox(height: 8),
                  TextField(
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
