import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:surapp_flutter/common/ui_kit/app_color_scheme.dart';
import 'package:surapp_flutter/common/ui_kit/app_divider.dart';
import 'package:surapp_flutter/common/ui_kit/app_text_styles.dart';
import 'package:surapp_flutter/common/ui_kit/custom_tap_handler/custom_tap_handler.dart';
import 'package:surapp_flutter/common/ui_kit/resize_indicator.dart';

part 'helpers/bottom_sheet_app_bar.dart';

part 'view/draggable_bottom_sheet_content.dart';

part 'view/scrollable_bottom_sheet_content.dart';

part 'view/static_bottom_sheet_content.dart';

class CustomBottomSheet {
  /// Показывает боттом шит, поджимающийся к размерам child, если не укзывать размер шторки
  static Future<T?> showStaticBottomSheet<T>(
    BuildContext context, {
    required String title,
    bool withIndicator = true,
    double? fixedHeight,
    bool showCloseButton = false,
    String? description,
    bool withoutTitleAndClose = false,

    /// Добавлен, чтобы боттомшит создавался не в корне авторизованного рута, а в корне стака,
    /// что приводило к некорректной навигации (показ диалога выхода из приложения).
    /// Нужно убрать, когда все будут в сабрутах
    bool useRootNavigator = false, //todo remove
    //todo переделать на builder, чтобы получать правильный контекст
    required Widget child,
    int titleMaxLines = 1,
  }) {
    return showModalBottomSheet(
      useRootNavigator: useRootNavigator,
      useSafeArea: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      context: context,
      constraints: BoxConstraints(
        maxHeight: getMaxHeight(context),
        maxWidth: double.infinity,
      ),
      builder: (context) => Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: StaticBottomSheetContent(
          title: title,
          withIndicator: withIndicator,
          fixedHeight: fixedHeight,
          showCloseButton: showCloseButton,
          titleMaxLines: titleMaxLines,
          withoutTitleAndClose: withoutTitleAndClose,
          description: description,
          child: child,
        ),
      ),
    );
  }

  /// Показывает фуллскрин боттом шит со скроллом внутри
  static Future<T?> showScrollBottomSheet<T>(
    BuildContext context, {
    required String title,
    bool withIndicator = true,
    bool showCloseButton = false,
    required Widget child,
    String? description,
    bool withoutTitleAndClose = false,
  }) {
    return showModalBottomSheet<T>(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      context: context,
      constraints: BoxConstraints(maxHeight: getMaxHeight(context)),
      builder: (context) => ScrollableBottomSheetContent(
        title: title,
        withIndicator: withIndicator,
        showCloseButton: showCloseButton,
        withoutTitleAndClose: withoutTitleAndClose,
        description: description,
        child: child,
      ),
    );
  }

  static double getMaxHeight(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenPadding = mediaQuery.padding.vertical;
    final screenHeight = mediaQuery.size.height;
    return screenHeight - kToolbarHeight - screenPadding;
  }
}
