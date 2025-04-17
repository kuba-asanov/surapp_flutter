import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyHomeWidget extends StatelessWidget {
  const EmptyHomeWidget({super.key, required this.onAddPressed});
  final VoidCallback onAddPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/empty_page.json',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 24),
            Text(
              'Пока нет ни одного вопроса',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              'Нажмите кнопку ниже, чтобы добавить свой первый вопрос.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            // AppButton.primary(
            //     child: Row(
            //       children: [
            //         const Icon(Icons.add),
            //         const Text('Добавить вопрос')
            //       ],
            //     ),
            //     onPressed: onAddPressed),
            // ElevatedButton.icon(
            //   onPressed: onAddPressed,
            //   icon: const Icon(Icons.add),
            //   label: const Text('Добавить вопрос'),
            //   style: ElevatedButton.styleFrom(
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: 24,
            //       vertical: 14,
            //     ),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(12),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
