part of 'ask_question_bloc.dart';

sealed class AskQuestionUiCommands extends UiCommand {
  const AskQuestionUiCommands();
}

final class ShowToastUiCommand extends AskQuestionUiCommands {
  const ShowToastUiCommand({required this.type});

  final ToastType type;
}

enum ToastType {
  created,
  ustazRequired,
  categoryRequired,
  unknownError;

  factory ToastType.getErrorFromAppFailure(AppFailure failure) {
    if (failure is ServerFailure) {
      return switch (failure.statusCode) {
        401 => ustazRequired,
        400 => categoryRequired,
        _ => unknownError,
      };
    }

    return unknownError;
  }
}
