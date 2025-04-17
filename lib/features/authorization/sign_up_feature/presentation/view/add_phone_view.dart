import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/common/utils/widget_ext.dart';

import '../../../../../common/ui_kit/text_styles.dart';


class AddPhoneView extends StatefulWidget {
  const AddPhoneView({super.key});

  @override
  State<AddPhoneView> createState() => _AddPhoneViewState();
}

class _AddPhoneViewState extends State<AddPhoneView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    phoneController.dispose();
    super.dispose();
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
              "Добавьте номер телефона или электронный адрес",
              style: SurAppTextStyle.fS24FW700,
              textAlign: TextAlign.center,
            ),
            16.toHeight,
            TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.black,
              indicatorWeight: 2,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              labelStyle: SurAppTextStyle.fS16FW700,
              tabs: const [
                Tab(text: "Телефон"),
                Tab(text: "Эл. адрес"),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  buildPhoneInput(),
                  buildEmailInput(),
                ],
              ),
            ),
            16.toHeight,
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildPhoneInput() {
    return Column(
      children: [
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F7),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const Text("KG +996", style: TextStyle(color: Colors.blue)),
              const SizedBox(width: 12),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Container(
                  width: 1,
                  height: 40,
                  color: Colors.black26,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextField(
                  style: SurAppTextStyle.fS14FW500,
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "707899889",
                  ),
                ),
              ),
              if (phoneController.text.isNotEmpty)
                GestureDetector(
                  onTap: () => setState(phoneController.clear),
                  child: const Icon(Icons.clear, color: Colors.grey),
                ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: const Text("Далее", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  Widget buildEmailInput() {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Введите ваш электронный адрес',
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        24.toHeight,
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
              // context.router.push(const AddPhoneRoute());
            },
            child: Text(
              'Далее',
              style: SurAppTextStyle.fS14FW500.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    ));
  }
}
