import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:surapp_flutter/common/ui_kit/app_color_scheme.dart';
import 'package:surapp_flutter/common/ui_kit/text_styles.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  List<bool> listQExpanded = List.generate(10000, (index) => false);
  List<bool> listAExpanded = List.generate(10000, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            SvgPicture.asset('assets/images/mosque.svg'),
            Text(
              "Берилген суроолор",
              style: SurAppTextStyle.fS18FW600,
            )
          ],
        ),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          final isQExpanded = listQExpanded[index];
          final isAExpanded = listAExpanded[index];
          // final post = state.data[index];
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundImage: NetworkImage(
                      'https://steela.ir/en/wp-content/uploads/2022/11/User-Avatar-in-Suit-PNG.png'), // replace with actual avatar
                ),
                8.toWidth,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Randy Calzoni ',
                              style: SurAppTextStyle.fS14FW700,
                            ),
                            TextSpan(
                              text: '@randycalzoni • 5м',
                              style: SurAppTextStyle.fS14FW500,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Суроо:',
                        style: SurAppTextStyle.fS14FW700,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "post.content",
                        style: SurAppTextStyle.fS14FW400,
                        maxLines: isQExpanded ? null : 1,
                        overflow: isQExpanded
                            ? TextOverflow.visible
                            : TextOverflow.ellipsis,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              listQExpanded[index] = !listQExpanded[index];
                            });
                          },
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          child: Text(listQExpanded[index] ? 'Hide' : 'Show'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Жооп:',
                            style: SurAppTextStyle.fS14FW700,
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "post.answer",
                        // ?? 'No answer provided',
                        style: SurAppTextStyle.fS14FW400,
                        maxLines: isAExpanded ? null : 3,
                        overflow: isAExpanded
                            ? TextOverflow.visible
                            : TextOverflow.ellipsis,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              listAExpanded[index] = !listAExpanded[index];
                            });
                          },
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          child: Text(listAExpanded[index] ? 'Hide' : 'Show'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.ios_share_rounded, size: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  AppColorScheme.primary)),
                          onPressed: () {},
                          child: Text(
                            "Жооп берүү",
                            style: SurAppTextStyle.fS14FW500
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
