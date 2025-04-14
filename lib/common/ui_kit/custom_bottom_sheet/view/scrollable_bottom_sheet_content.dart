part of '../custom_bottom_sheet.dart';

class ScrollableBottomSheetContent extends StatelessWidget {
  const ScrollableBottomSheetContent({
    super.key,
    required this.title,
    this.withIndicator = true,
    required this.showCloseButton,
    required this.child,
    this.description,
    this.withoutTitleAndClose = false,
  });

  final String title;
  final bool withIndicator;
  final bool showCloseButton;
  final Widget child;
  final String? description;
  final bool withoutTitleAndClose;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          color: AppColorScheme.onSupplementary,
        ),
        child: ListView(
          children: [
            BottomSheetAppBar(
              title: title,
              withIndicator: withIndicator,
              showCloseButton: showCloseButton,
              withoutTitleAndClose: withoutTitleAndClose,
              description: description,
            ),
            child,
          ],
        ),
      );
}
