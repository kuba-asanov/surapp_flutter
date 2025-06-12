import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:surapp_flutter/common/widgets/buttons/app_button.dart';
import 'package:surapp_flutter/core/navigation/auto_router.dart';

class NotAuthProfileView extends StatelessWidget {
  const NotAuthProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Профиль"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.person_outline, size: 100, color: Colors.grey),
              const SizedBox(height: 16),
              const Text(
                "Сиз аккаунтуңузга кире элексиз",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              const Text(
                "Суроолоруңузга жооп алуу учун аккаунтуңузга кириңиз",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 24),
              AppButton.primary(
                child: Text('Кирүү'),
                onPressed: () {
                  context.router.push(SignInRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
