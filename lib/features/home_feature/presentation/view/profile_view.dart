import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surapp_flutter/common/ui_kit/app_color_scheme.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_user/get_user_bloc.dart';

import '../../../../common/ui_kit/text_styles.dart';
import '../../../../common/widgets/logout_dialog.dart';

class ProfileView extends StatefulWidget {
  final GetUserBloc bloc;
  const ProfileView({super.key, required this.bloc});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final String firstName = "Alex";
  final String lastName = "Johnson";
  final int askedQuestions = 12;
  final int answeredQuestions = 34;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Профиль"),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.settings),
      //       onPressed: () => context.router.push(SettingsRoute()),
      //     ),
      //   ],
      // ),
      body: BlocBuilder<GetUserBloc, GetUserState>(
        bloc: widget.bloc,
        builder: (context, state) {
          if (state is GetUserLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GetUserError) {
            return Center(
              child: Text(
                state.errorMessage,
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else if (state is GetUserFetched) {
            final user = state.user;
            return Padding(
              padding: const EdgeInsets.only(
                top: 60,
                left: 16,
                right: 16,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://static.vecteezy.com/system/resources/previews/011/209/565/non_2x/user-profile-avatar-free-vector.jpg', // Random avatar
                    ),
                  ),
                  SizedBox(height: 16),

                  Text(
                    '${user.username}',
                    style: SurAppTextStyle.fS18FW600,
                  ),
                  SizedBox(height: 24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStat('Asked', 30, Icons.help_outline),
                      _buildStat('Answered', 20, Icons.check_circle_outline),
                    ],
                  ),
                  SizedBox(height: 40),
                  ListTile(
                    leading: Icon(Icons.question_answer,
                        color: AppColorScheme.primary),
                    title: Text(
                      'Менин суроолорум  \nМенин жоопторум',
                      style: SurAppTextStyle.fS16FW500,
                    ),
                    onTap: () {},
                  ),

                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.red),
                    title: Text('Чыгуу',
                        style: TextStyle(color: Colors.red, fontSize: 16)),
                    onTap: () async {
                      final resp = await showGeneralDialog(
                        context: context,
                        barrierDismissible: true,
                        barrierLabel: 'LogOutLite',
                        pageBuilder: (context, anim1, anim2) {
                          return const LogOutDialog();
                        },
                      );
                      if (resp != null) {
                        if (resp == true) {
                          log("loggedout");

                          // ignore: use_build_context_synchronously
                          // context.read<LoginBloc>().add(const LoginEvent.logOut());
                          // context.router.replaceAll([const LoginRoute()]);
                        }
                      }
                    },
                  ),

                  // Delete account button
                  ListTile(
                    leading:
                        Icon(Icons.delete_forever, color: Colors.redAccent),
                    title: Text('Аккаунтту өчүрүү',
                        style:
                            TextStyle(color: Colors.redAccent, fontSize: 16)),
                    onTap: () {
                      showDeleteBottomSheet(context: context);
                    },
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text('Unknown state'),
            );
          }
        },
      ),
    );
  }
}

Widget _buildStat(String label, int count, IconData icon) {
  return Column(
    children: [
      Icon(icon, size: 30, color: AppColorScheme.primary),
      SizedBox(height: 4),
      Text('$count', style: SurAppTextStyle.fS16FW500),
      Text(label, style: TextStyle(color: Colors.black)),
    ],
  );
}

Future<bool?> showDeleteBottomSheet({
  required BuildContext context,
}) async {
  return showModalBottomSheet<bool>(
    backgroundColor: Colors.white,
    context: context,
    showDragHandle: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Удаление профиля',
              textAlign: TextAlign.center,
              style: SurAppTextStyle.fS22FW600,
            ),
            8.toHeight,
            Text('Вы действительно хотите безвозвратно удалить свой профиль?',
                // textAlign: TextAlign.center,
                style: SurAppTextStyle.fS15FW400
                    .copyWith(color: const Color(0xFFACAEBA))),
            const SizedBox(height: 16),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF8FBFF),
                ),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text(
                  'Отменить',
                  style:
                      SurAppTextStyle.fS15FW600.copyWith(color: Colors.black),
                ),
              ),
            ),
            16.toHeight,
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text(
                  'Удалить аккаунт',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            50.toHeight,
          ],
        ),
      );
    },
  );
}
