// ignore_for_file: unused_field

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:surapp_flutter/common/utils/widget_ext.dart';
import 'package:surapp_flutter/core/navigation/auto_router.dart';

import '../../../../../common/ui_kit/focus_remover/app_focus_remover.dart';
import '../../../../../common/ui_kit/text_styles.dart';
import '../../../../../common/widgets/buttons/app_button.dart';
import '../bloc/sign_up/sign_up_bloc.dart';

class AddPhoneView extends StatefulWidget {
  const AddPhoneView({
    super.key,
    required this.username,
    required this.password,
    required this.bloc,
  });
  final String username;
  final String password;
  final SignUpBloc bloc;
  @override
  State<AddPhoneView> createState() => _AddPhoneViewState();
}

class _AddPhoneViewState extends State<AddPhoneView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();

  String? _emailError;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    phoneController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      bloc: widget.bloc,
      listenWhen: (p, c) => p.status != c.status,
      listener: (context, state) {
        if (state.status.isLoaded) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("Ийгилик"),
              content: const Text("Каттоо ийгиликтүү аяктады."),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("ОК"),
                ),
              ],
            ),
          ).then((value) {
            context.router.replaceAll([
              SignInRoute(
                onResult: (p0) => false,
              )
            ]);
          });
        } else if (state.status.isFailure) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("Ката"),
              content: Text(state.errorMessage ?? "Бир нерсе туура эмес кетти"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Түшүнүктүү"),
                ),
              ],
            ),
          );
        }
      },
      child: AppFocusRemover(
        child: Scaffold(
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
                  "Телефон номериңизди же электрондук дарегиңизди кошуңуз",
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
                    Tab(text: "Эл. дарек"),
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
        ),
      ),
    );
  }

  Widget buildPhoneInput() {
    return Form(
      key: _formKey2,
      child: Column(
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
                  child: TextFormField(
                    style: SurAppTextStyle.fS14FW500,
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "777000000",
                    ),
                    validator: (value) {
                      final trimmed = value?.trim() ?? '';
                      if (trimmed.isEmpty) {
                        return 'Телефон номери талап кылынат';
                      }
                      if (!RegExp(r'^\d{9}$').hasMatch(trimmed)) {
                        return 'Туура эмес номер: 9 цифра болушу керек';
                      }
                      return null;
                    },
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
          BlocBuilder<SignUpBloc, SignUpState>(
            bloc: widget.bloc,
            builder: (context, state) {
              return AppButton.primary(
                onPressed: () {
                  if (_formKey2.currentState!.validate()) {
                    widget.bloc.add(
                      SignUpEvent.started(
                        username: widget.username,
                        password: widget.password,
                        phone: "+996${phoneController.text.trim()}",
                        email: null,
                      ),
                    );
                  }
                },
                isLoading: state.status.isLoading,
                child: Text('Улантуу'),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildEmailInput() {
    return Center(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: TextFormField(
                controller: emailController,
                style: SurAppTextStyle.fS15FW500,
                decoration: InputDecoration(
                  hintText: 'Электрондук дарегиңизди киргизиңиз',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Талаа бош болбошу керек';
                  }
                  if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value.trim())) {
                    return 'Email  туура жазылсын';
                  }
                  return null;
                },
              ),
            ),
            24.toHeight,
            BlocBuilder<SignUpBloc, SignUpState>(
              bloc: widget.bloc,
              builder: (context, state) {
                return AppButton.primary(
                  onPressed: () {
                    final email = emailController.text.trim();
                    if (_formKey.currentState!.validate()) {
                      widget.bloc.add(
                        SignUpEvent.started(
                          username: widget.username,
                          password: widget.password,
                          email: email,
                          phone: null,
                        ),
                      );
                    }
                  },
                  isLoading: state.status.isLoading,
                  child: Text('Жөнөтүү'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
