import 'package:flutter/material.dart';
import 'package:surapp_flutter/common/widgets/logout_dialog.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';
import 'package:surapp_flutter/features/home_feature/domain/usecases/get_posts_usecase.dart';
import 'package:surapp_flutter/features/home_feature/presentation/bloc/get_posts/get_posts_bloc.dart';

import '../../../../common/ui_kit/text_styles.dart';
import '../widgets/list_posts_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({
    super.key,
    required this.user,
    required this.onLogout,
    required this.postsUscase,
  });

  final UserModel user;
  final VoidCallback onLogout;
  final GetPostsUsecase postsUscase;

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with SingleTickerProviderStateMixin {
  final int askedQuestions = 12;
  final int answeredQuestions = 34;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Профиль"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              final resp = await showGeneralDialog(
                context: context,
                barrierDismissible: true,
                barrierLabel: 'LogOutLite',
                pageBuilder: (context, anim1, anim2) {
                  return const LogOutDialog();
                },
              );
              if (resp == true) {
                widget.onLogout();
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_kSSoomJ9hiFXmiF2RdZlwx72Y23XsT6iwQ&s', // Random avatar
              ),
            ),
            SizedBox(height: 16),

            Text(
              widget.user.username,
              style: SurAppTextStyle.fS18FW600,
            ),
            SizedBox(height: 24),
            widget.user.isUstaz
                ? Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.question_answer),
                        title: Text('Менин жоопторум'),
                      ),
                      // Flexible(
                      //   child: ListPostsWidget(
                      //     bloc: GetPostsBloc(getPostsUsecase: widget.postsUscase)
                      //       ..add(
                      //         GetPostsEvent(
                      //           params: GetPostsParams(PostType.myAnsweredForReciter),
                      //         ),
                      //       ),
                      //   ),
                      // ),
                    ],
                  )
                : Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TabBar(
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorColor: Colors.black,
                          indicatorWeight: 2,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          labelStyle: SurAppTextStyle.fS14FW700,
                          tabs: const [
                            Tab(text: "Менин суроолорум"),
                            Tab(text: "Берилген жооптор"),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Expanded(
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              ListPostsWidget(
                                physics: const NeverScrollableScrollPhysics(),
                                bloc: GetPostsBloc(
                                    getPostsUsecase: widget.postsUscase)
                                  ..add(
                                    GetPostsEvent(
                                        params:
                                            GetPostsParams(PostType.myPending)),
                                  ),
                              ),
                              ListPostsWidget(
                                physics: const NeverScrollableScrollPhysics(),
                                bloc: GetPostsBloc(
                                    getPostsUsecase: widget.postsUscase)
                                  ..add(
                                    GetPostsEvent(
                                        params: GetPostsParams(
                                            PostType.myAnswered)),
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

            // ListTile(
            //   leading: Icon(Icons.logout, color: Colors.red),
            //   title: Text('Чыгуу',
            //       style: TextStyle(color: Colors.red, fontSize: 16)),
            //   onTap: () async {
            //     final resp = await showGeneralDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       barrierLabel: 'LogOutLite',
            //       pageBuilder: (context, anim1, anim2) {
            //         return const LogOutDialog();
            //       },
            //     );
            //     if (resp != null) {
            //       if (resp == true) {
            //         log("loggedout");
            //         widget.bloc.add(LogoutUserEvent());

            //         // ignore: use_build_context_synchronously
            //         // context.read<LoginBloc>().add(const LoginEvent.logOut());
            //       }
            //     }
            //   },
            // ),

            // Delete account button
            // ListTile(
            //   leading:
            //       Icon(Icons.delete_forever, color: Colors.redAccent),
            //   title: Text('Аккаунтту өчүрүү',
            //       style:
            //           TextStyle(color: Colors.redAccent, fontSize: 16)),
            //   onTap: () {
            //     showDeleteBottomSheet(context: context);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

// Future<bool?> showDeleteBottomSheet({
//   required BuildContext context,
// }) async {
//   return showModalBottomSheet<bool>(
//     backgroundColor: Colors.white,
//     context: context,
//     showDragHandle: true,
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//     ),
//     builder: (context) {
//       return Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Удаление профиля',
//               textAlign: TextAlign.center,
//               style: SurAppTextStyle.fS22FW600,
//             ),
//             8.toHeight,
//             Text('Вы действительно хотите безвозвратно удалить свой профиль?',
//                 // textAlign: TextAlign.center,
//                 style: SurAppTextStyle.fS15FW400
//                     .copyWith(color: const Color(0xFFACAEBA))),
//             const SizedBox(height: 16),
//             SizedBox(
//               height: 50,
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFFF8FBFF),
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).pop(false);
//                 },
//                 child: Text(
//                   'Отменить',
//                   style:
//                       SurAppTextStyle.fS15FW600.copyWith(color: Colors.black),
//                 ),
//               ),
//             ),
//             16.toHeight,
//             SizedBox(
//               height: 50,
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white,
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).pop(true);
//                 },
//                 child: const Text(
//                   'Удалить аккаунт',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     color: Colors.red,
//                   ),
//                 ),
//               ),
//             ),
//             50.toHeight,
//           ],
//         ),
//       );
//     },
//   );
// }
