import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:surapp_flutter/common/ui_kit/text_styles.dart';
import 'package:surapp_flutter/core/navigation/auto_router.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/presentation/bloc/sign_in_bloc.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({
    super.key,
    required this.bloc,
  });

  final SignInBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/mosque.svg',
              height: 60,
              width: 60,
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Телефон, колдонуучунун аты',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Купуя сөз',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'купуя созду унуттуңузбу?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 10),
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
                  bloc.add(InitEvent());
                  context.router.replaceAll([NavigationRoute()]);
                },
                child: Text(
                  'Кируу',
                  style:
                      SurAppTextStyle.fS14FW500.copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Аккаунтуңуз жокпу?',
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    context.router.push(SignUpRoute());
                  },
                  child: const Text(
                    'Катталыныз',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
