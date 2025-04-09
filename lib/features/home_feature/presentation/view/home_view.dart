import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:surapp_flutter/common/ui_kit/text_styles.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _controller = TextEditingController();

  List<bool> listQExpanded = List.generate(10000, (index) => false);
  List<bool> listAExpanded = List.generate(10000, (index) => false);

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 120,
            title: Column(
              children: [
                SvgPicture.asset('assets/images/mosque.svg'),
                24.toHeight,
                SizedBox(
                  height: 40,
                  child: TextField(
                    controller: _controller,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF2F2F7),
                      hintText: 'Search',
                      suffixIcon: _controller.text.isNotEmpty
                          ? IconButton(
                              icon: Icon(
                                Icons.clear,
                                color: Colors.black,
                                size: 20,
                              ),
                              onPressed: () {
                                _controller.clear();
                                FocusScope.of(context).requestFocus(
                                    FocusNode()); // remove keyboard
                              },
                            )
                          : null,
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8E8E93),
                      ),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //
          body: ListView.separated(
            itemCount: 10,
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.grey,
                height: 1,
              );
            },
            itemBuilder: (context, index) {
              final isQExpanded = listQExpanded[index];
              final isAExpanded = listAExpanded[index];

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
                            """ Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker """,
                            style: SurAppTextStyle.fS14FW400,
                            maxLines: isQExpanded ? null : 3,
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
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero),
                              child:
                                  Text(listQExpanded[index] ? 'Hide' : 'Show'),
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
                            """ Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker """,
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
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero),
                              child:
                                  Text(listAExpanded[index] ? 'Hide' : 'Show'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.share_outlined, size: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
