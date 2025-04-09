
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: TagtimeColor.scaffoldBackground,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Colors.white),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 44,
        centerTitle: false,
        title: Text(
          'Профиль',
          // style: AppTextStyles.label1,
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          top: 24,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListView(
          children: [
         
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
//               style: TagtimeTextStyle.fS22FW600,
//             ),
//             8.toHeight,
//             Text('Вы действительно хотите безвозвратно удалить свой профиль?',
//                 // textAlign: TextAlign.center,
//                 style: TagtimeTextStyle.fS15FW400
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
//                       TagtimeTextStyle.fS15FW600.copyWith(color: Colors.black),
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
