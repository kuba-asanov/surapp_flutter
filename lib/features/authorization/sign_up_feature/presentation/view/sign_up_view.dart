import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';
import 'package:surapp_flutter/core/navigation/auto_router.dart';

import '../../../../../common/ui_kit/text_styles.dart';
import '../../../../../common/widgets/buttons/app_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _controller = TextEditingController();
  String? _errorText;

  void _validateAndContinue() {
    final username = _controller.text.trim();

    if (username.isEmpty) {
      setState(() {
        _errorText = 'Логин жазыңыз';
      });
      return;
    }
    if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(username)) {
      setState(() {
        _errorText = 'Логин англис тамгалары менен гана болушу керек';
      });
      return;
    }

    // Optional: add more checks (length, invalid characters, etc.)

    setState(() {
      _errorText = null;
    });

    context.router.push(CreatePasswordRoute(username: username));
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
              "Жаңы колдонуучу түзүү",
              style: SurAppTextStyle.fS24FW700,
              textAlign: TextAlign.center,
            ),
            16.toHeight,
            Text(
              "Каттоо үчүн логин жазыңыз.",
              style:
                  SurAppTextStyle.fS14FW500.copyWith(color: Color(0xFFC7C7CC)),
              textAlign: TextAlign.center,
            ),
            16.toHeight,
            TextField(
              controller: _controller,
              style: SurAppTextStyle.fS15FW500,
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Text("@"),
                ),
                hintText: 'login',
                errorText: _errorText,
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 26),
            AppButton.primary(
              onPressed: _validateAndContinue,
              child: Text('Улантуу'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
