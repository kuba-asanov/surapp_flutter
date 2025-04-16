import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:surapp_flutter/common/ui_kit/text_styles.dart';
import 'package:surapp_flutter/common/widgets/buttons/app_button.dart';
import 'package:surapp_flutter/core/navigation/auto_router.dart';
import 'package:surapp_flutter/features/authorization/sign_in_feature/presentation/bloc/sign_in_bloc.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({
    super.key,
    required this.bloc,
    required this.onResult,
  });

  final SignInBloc bloc;
  final Function(bool) onResult;

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    userNameController.addListener(_onUserNameChange);
    passwordController.addListener(_onPasswordChange);
    super.initState();
  }

  @override
  void dispose() {
    userNameController.removeListener(_onUserNameChange);
    passwordController.removeListener(_onPasswordChange);
    super.dispose();
  }

  void _onUserNameChange() {
    widget.bloc
        .add(UserNameChangedEvent(username: userNameController.text.trim()));
  }

  void _onPasswordChange() {
    widget.bloc
        .add(PasswordChangedEvent(password: passwordController.text.trim()));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      bloc: widget.bloc,
      listenWhen: (p, c) => p.status != c.status,
      listener: (context, state) {
        if (state.status.isLoaded) {
          widget.onResult(true);
          // context.router.replaceAll([NavigationRoute()]);
        }
      },
      child: Scaffold(
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
                controller: userNameController,
                style: SurAppTextStyle.fS15FW500,
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
                controller: passwordController,
                // obscureText: true,
                style: SurAppTextStyle.fS15FW500,
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
              BlocBuilder<SignInBloc, SignInState>(
                bloc: widget.bloc,
                builder: (context, state) {
                  return AppButton.primary(
                    isLoading: state.status.isLoading,
                    child: Text('Кируу'),
                    onPressed: () {
                      widget.bloc.add(SignInStartEvent());
                    },
                  );
                },
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
      ),
    );
  }
}
