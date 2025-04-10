import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/ui_kit/app_color_scheme.dart';
import '../../../../common/ui_kit/text_styles.dart';

class Teacher {
  final String name;
  final String username;
  final String avatarUrl;
  bool isSelected;

  Teacher({
    required this.name,
    required this.username,
    required this.avatarUrl,
    this.isSelected = false,
  });
}

class SelectUstazView extends StatefulWidget {
  const SelectUstazView({super.key});

  @override
  State<SelectUstazView> createState() => _SelectUstazViewState();
}

class _SelectUstazViewState extends State<SelectUstazView> {
  List<Teacher> teachers = List.generate(
    4,
    (index) => Teacher(
      name: 'Ustaz Emil Andartegin',
      username: '@ustazemilandartegin',
      avatarUrl: 'https://i.pravatar.cc/150?img=${index + 10}',
    ),
  );

  void selectTeacher(int index) {
    setState(() {
      for (int i = 0; i < teachers.length; i++) {
        teachers[i].isSelected = i == index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title:
              Text('Устаздар', style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(AppColorScheme.primary)),
                  onPressed: () {
                    context.router.back();
                  },
                  child: Text(
                    "Тандоо",
                    style:
                        SurAppTextStyle.fS15FW600.copyWith(color: Colors.white),
                  ))),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Издоо',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Color(0xFFF5F5F5),
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            // List of Teachers
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemCount: teachers.length,
                itemBuilder: (context, index) {
                  final teacher = teachers[index];
                  return GestureDetector(
                    onTap: () => selectTeacher(index),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 12),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F2F7),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 26,
                            backgroundImage: NetworkImage(teacher.avatarUrl),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(teacher.name,
                                    style: SurAppTextStyle.fS15FW600),
                                Text(
                                  teacher.username,
                                  style: SurAppTextStyle.fS14FW500
                                      .copyWith(color: Color(0xFFAEAEB2)),
                                ),
                              ],
                            ),
                          ),
                          if (teacher.isSelected)
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                              child: Icon(Icons.check,
                                  color: Colors.white, size: 18),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
