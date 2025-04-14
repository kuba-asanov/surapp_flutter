part of '../custom_bottom_sheet.dart';

class StaticBottomSheetContent extends StatelessWidget {
  const StaticBottomSheetContent({
    super.key,
    required this.title,
    required this.withIndicator,
    this.fixedHeight,
    required this.showCloseButton,
    required this.child,
    this.titleMaxLines = 1,
    this.description,
    this.withoutTitleAndClose = false,
  });

  final String title;
  final bool withIndicator;
  final double? fixedHeight;
  final bool showCloseButton;
  final Widget child;
  final int titleMaxLines;
  final String? description;
  final bool withoutTitleAndClose;

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
        child: Wrap(
          children: [
            Container(
              color: AppColorScheme.onSupplementary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  BottomSheetAppBar(
                    title: title,
                    withIndicator: withIndicator,
                    showCloseButton: showCloseButton,
                    titleMaxLines: titleMaxLines,
                    withoutTitleAndClose: withoutTitleAndClose,
                    description: description,
                  ),
                  SizedBox(
                    height: fixedHeight,
                    child: child,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
