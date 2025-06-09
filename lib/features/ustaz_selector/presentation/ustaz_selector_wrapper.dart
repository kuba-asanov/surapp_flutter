import 'package:flutter/material.dart';
import 'package:surapp_flutter/common/ui_kit/custom_bottom_sheet/custom_bottom_sheet.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';
import 'package:surapp_flutter/features/ustaz_selector/di/ustaz_selector_di_module.dart';
import 'package:surapp_flutter/features/ustaz_selector/presentation/bloc/ustaz_selector_bloc.dart';
import 'package:surapp_flutter/features/ustaz_selector/presentation/ustaz_selector_page.dart';
import 'package:take_it/take_it.dart';

Future<void> showUstazPicker(
  BuildContext context, {
  ValueChanged<UserModel>? onSelect,
  required int selectedId,
}) {
  return CustomBottomSheet.showScrollBottomSheet<void>(
    context,
    // showCloseButton: true,
    title: "",
    child: DiScopeBuilder(
      createModule: UstazPickerDiModule.new,
      builder: (_, module) {
        return UstazSelectorPage(
            onSelect: onSelect,
            bloc: module.get<UstazPickerBloc>()
              ..add(GetRecitersEvent(query: '')),
            selectedId: selectedId);
      },
    ),
  );
}
