import 'package:auto_route/auto_route.dart';
import 'package:surapp_flutter/core/navigation/auto_router.dart';
import 'package:surapp_flutter/core/storage/secure_storage.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required this.secureStorage});

  final SecureStorage secureStorage;
  
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    final token = await secureStorage.getValue(SecureStorageKey.authToken);
    if (token?.isNotEmpty ?? false) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      // tip: use resolver.redirectUntil to have the redirected route
      // automatically removed from the stack when the resolver is completed
      resolver.redirectUntil(
        SignInRoute(
          onResult: (success) {
            // if success == true the navigation will be resumed
            // else it will be aborted
            resolver.next(success);
          },
        ),
      );
    }
  }
}
