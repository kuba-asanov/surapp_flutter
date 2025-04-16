import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';

import '../../../../../common/ui_kit/text_styles.dart';
import '../../../../../core/navigation/auto_router.dart';


class CreatePasswordView extends StatefulWidget {
  const CreatePasswordView({super.key});

  @override
  State<CreatePasswordView> createState() => _CreatePasswordViewState();
}

class _CreatePasswordViewState extends State<CreatePasswordView> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: AutoLeadingButton(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Придумайте пароль",
              style: SurAppTextStyle.fS24FW700,
              textAlign: TextAlign.center,
            ),
            16.toHeight,
            Text(
              "Создайте пароль",
              style:
                  SurAppTextStyle.fS14FW500.copyWith(color: Color(0xFFC7C7CC)),
              textAlign: TextAlign.center,
            ),
            16.toHeight,
            TextField(
              decoration: InputDecoration(
                hintText: 'Пароль',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            16.toHeight,
            Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    activeColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                12.toWidth,
                const Text(
                  'Сохранить пароль',
                  style: TextStyle(color: Color(0xFF8E8E93), fontSize: 13),
                ),
              ],
            ),
            16.toHeight,
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // bloc.add(InitEvent());
                  context.router.push(AddPhoneRoute());
                },
                child: Text(
                  'Далее',
                  style:
                      SurAppTextStyle.fS14FW500.copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
