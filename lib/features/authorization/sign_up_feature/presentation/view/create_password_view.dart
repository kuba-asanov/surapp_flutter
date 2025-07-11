import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';

import '../../../../../common/ui_kit/text_styles.dart';
import '../../../../../common/widgets/buttons/app_button.dart';
import '../../../../../core/navigation/auto_router.dart';

class CreatePasswordView extends StatefulWidget {
  const CreatePasswordView({super.key, required this.username});
  final String username;

  @override
  State<CreatePasswordView> createState() => _CreatePasswordViewState();
}

class _CreatePasswordViewState extends State<CreatePasswordView> {
  final TextEditingController _passwordController = TextEditingController();
  String? _errorText;
  bool isChecked = false;

  void _validateAndContinue() {
    final password = _passwordController.text.trim();

    if (password.isEmpty) {
      setState(() {
        _errorText = 'Сырсөздү жазыңыз';
      });
      return;
    }

    if (password.length < 4) {
      setState(() {
        _errorText = 'Сырсөз кеминде 4 символдон турушу керек';
      });
      return;
    }

    setState(() {
      _errorText = null;
    });

    context.router.push(AddPhoneRoute(
      username: widget.username,
      password: password,
    ));
  }

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
              "Сырсөздү түзүңүз",
              style: SurAppTextStyle.fS24FW700,
              textAlign: TextAlign.center,
            ),
            16.toHeight,
            Text(
              "Сырсөз кеминде 4 символдон турушу керек",
              style:
                  SurAppTextStyle.fS14FW500.copyWith(color: Color(0xFFC7C7CC)),
              textAlign: TextAlign.center,
            ),
            16.toHeight,
            TextField(
              style: SurAppTextStyle.fS15FW500,
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Пароль',
                errorText: _errorText,
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            26.toHeight,
            AppButton.primary(
              onPressed: _validateAndContinue,
              isLoading: false,
              child: Text('Улантуу'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
