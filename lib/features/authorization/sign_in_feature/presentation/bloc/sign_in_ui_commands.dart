part of 'sign_in_bloc.dart';

sealed class SignInUiCommands extends UiCommand {
  const SignInUiCommands();
}

final class ShowToastUiCommand extends SignInUiCommands {
  const ShowToastUiCommand({required this.type});

  final ToastType type;
}

enum ToastType {
  unauthorized,
  badRequest,
  unknownError;

  factory ToastType.getErrorFromAppFailure(AppFailure failure) {
    if (failure is ServerFailure) {
      return switch (failure.statusCode) {
        401 => unauthorized,
        400 => badRequest,
        _ => unknownError,
      };
    }

    return unknownError;
  }
}
