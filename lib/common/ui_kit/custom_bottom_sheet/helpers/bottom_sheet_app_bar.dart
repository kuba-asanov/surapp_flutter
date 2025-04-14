part of '../custom_bottom_sheet.dart';

class BottomSheetAppBar extends StatelessWidget {
  const BottomSheetAppBar({
    required this.title,
    required this.withIndicator,
    required this.showCloseButton,
    this.titleMaxLines,
    this.onCloseTap,
    this.description,
    this.withoutTitleAndClose = false,
    super.key,
  });

  final String title;
  final bool withIndicator;
  final bool showCloseButton;
  final int? titleMaxLines;
  final VoidCallback? onCloseTap;
  final String? description;
  final bool withoutTitleAndClose;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColorScheme.onSupplementary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (withIndicator) ...[
            const ResizeIndicator(),
          ],
          if (!withoutTitleAndClose)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Text(
                            title,
                            style: AppTextStyles.heading2(
                              AppColorScheme.secondary,
                            ),
                          ),
                        ),
                        if (description != null &&
                            (description?.isNotEmpty ?? false))
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 4,
                              top: 4,
                            ),
                            child: Text(
                              description ?? '',
                              style: AppTextStyles.label1(
                                AppColorScheme.secondary,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (showCloseButton)
                    CustomTapHandler(
                      inkBorderRadius: BorderRadius.circular(12),
                      onTap: () {
                        onCloseTap?.call();
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.clear),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
