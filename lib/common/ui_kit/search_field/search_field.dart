// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter/services.dart';
import 'package:surapp_flutter/common/ui_kit/app_color_scheme.dart';

/// Компонент Search из DesignSystem
class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.placeholder,
    required this.controller,
    required this.onChanged,
    this.autofocus = false,
    this.keyboardType,
    this.prefixIconColor,
    this.inputFormatters,
  });

  final String placeholder;
  final void Function(String) onChanged;
  final TextEditingController controller;
  final bool autofocus;
  final TextInputType? keyboardType;
  final Color? prefixIconColor;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69.0,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColorScheme.tertiary,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        children: [
          Icon(Icons.search),
          const SizedBox(width: 15),
          Expanded(
            child: TextField(
              keyboardType: keyboardType,
              autofocus: autofocus,
              onChanged: onChanged,
              controller: controller,
              inputFormatters: inputFormatters,
              // decoration: InputDecorations.search(placeholder),
              // style: TextStyles.header3(Palette.supplementary900),
              onEditingComplete: () {
                FocusScope.of(context).unfocus();
              },
            ),
          ),
          if (controller.text.isNotEmpty) ...[
            const SizedBox(width: 15),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: _clear,
              icon: Icon(
                Icons.clear,
                color: Colors.black,
                size: 20,
              ),
            ),
          ],
        ],
      ),
    );
  }

  void _clear() {
    controller.clear();
    onChanged('');
  }
}
