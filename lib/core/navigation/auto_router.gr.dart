// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_router.dart';

/// generated route for
/// [AddPhonePage]
class AddPhoneRoute extends PageRouteInfo<AddPhoneRouteArgs> {
  AddPhoneRoute({
    Key? key,
    required String username,
    required String password,
    List<PageRouteInfo>? children,
  }) : super(
         AddPhoneRoute.name,
         args: AddPhoneRouteArgs(
           key: key,
           username: username,
           password: password,
         ),
         initialChildren: children,
       );

  static const String name = 'AddPhoneRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddPhoneRouteArgs>();
      return AddPhonePage(
        key: args.key,
        username: args.username,
        password: args.password,
      );
    },
  );
}

class AddPhoneRouteArgs {
  const AddPhoneRouteArgs({
    this.key,
    required this.username,
    required this.password,
  });

  final Key? key;

  final String username;

  final String password;

  @override
  String toString() {
    return 'AddPhoneRouteArgs{key: $key, username: $username, password: $password}';
  }
}

/// generated route for
/// [AnswerToQuestionPage]
class AnswerToQuestionRoute extends PageRouteInfo<AnswerToQuestionRouteArgs> {
  AnswerToQuestionRoute({
    Key? key,
    required PostModel question,
    required GetQuestionsBloc bloc,
    List<PageRouteInfo>? children,
  }) : super(
         AnswerToQuestionRoute.name,
         args: AnswerToQuestionRouteArgs(
           key: key,
           question: question,
           bloc: bloc,
         ),
         initialChildren: children,
       );

  static const String name = 'AnswerToQuestionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AnswerToQuestionRouteArgs>();
      return AnswerToQuestionPage(
        key: args.key,
        question: args.question,
        bloc: args.bloc,
      );
    },
  );
}

class AnswerToQuestionRouteArgs {
  const AnswerToQuestionRouteArgs({
    this.key,
    required this.question,
    required this.bloc,
  });

  final Key? key;

  final PostModel question;

  final GetQuestionsBloc bloc;

  @override
  String toString() {
    return 'AnswerToQuestionRouteArgs{key: $key, question: $question, bloc: $bloc}';
  }
}

/// generated route for
/// [CreatePasswordPage]
class CreatePasswordRoute extends PageRouteInfo<CreatePasswordRouteArgs> {
  CreatePasswordRoute({
    Key? key,
    required String username,
    List<PageRouteInfo>? children,
  }) : super(
         CreatePasswordRoute.name,
         args: CreatePasswordRouteArgs(key: key, username: username),
         initialChildren: children,
       );

  static const String name = 'CreatePasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreatePasswordRouteArgs>();
      return CreatePasswordPage(key: args.key, username: args.username);
    },
  );
}

class CreatePasswordRouteArgs {
  const CreatePasswordRouteArgs({this.key, required this.username});

  final Key? key;

  final String username;

  @override
  String toString() {
    return 'CreatePasswordRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [EmptyFirstPage]
class EmptyFirstRoute extends PageRouteInfo<void> {
  const EmptyFirstRoute({List<PageRouteInfo>? children})
    : super(EmptyFirstRoute.name, initialChildren: children);

  static const String name = 'EmptyFirstRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EmptyFirstPage();
    },
  );
}

/// generated route for
/// [EmptySecondePage]
class EmptySecondeRoute extends PageRouteInfo<void> {
  const EmptySecondeRoute({List<PageRouteInfo>? children})
    : super(EmptySecondeRoute.name, initialChildren: children);

  static const String name = 'EmptySecondeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EmptySecondePage();
    },
  );
}

/// generated route for
/// [EmptyThirdPage]
class EmptyThirdRoute extends PageRouteInfo<void> {
  const EmptyThirdRoute({List<PageRouteInfo>? children})
    : super(EmptyThirdRoute.name, initialChildren: children);

  static const String name = 'EmptyThirdRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EmptyThirdPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [NavigationPage]
class NavigationRoute extends PageRouteInfo<void> {
  const NavigationRoute({List<PageRouteInfo>? children})
    : super(NavigationRoute.name, initialChildren: children);

  static const String name = 'NavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NavigationPage();
    },
  );
}

/// generated route for
/// [NotificationPage]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute({List<PageRouteInfo>? children})
    : super(NotificationRoute.name, initialChildren: children);

  static const String name = 'NotificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NotificationPage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [SendQuestionPage]
class SendQuestionRoute extends PageRouteInfo<void> {
  const SendQuestionRoute({List<PageRouteInfo>? children})
    : super(SendQuestionRoute.name, initialChildren: children);

  static const String name = 'SendQuestionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SendQuestionPage();
    },
  );
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    Key? key,
    dynamic Function(bool)? onResult,
    List<PageRouteInfo>? children,
  }) : super(
         SignInRoute.name,
         args: SignInRouteArgs(key: key, onResult: onResult),
         initialChildren: children,
       );

  static const String name = 'SignInRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignInRouteArgs>(
        orElse: () => const SignInRouteArgs(),
      );
      return SignInPage(key: args.key, onResult: args.onResult);
    },
  );
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key, this.onResult});

  final Key? key;

  final dynamic Function(bool)? onResult;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignUpPage();
    },
  );
}
