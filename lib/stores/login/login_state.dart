import 'package:meta/meta.dart';

@immutable
class LoginState {
  final bool auth;

  LoginState({
    this.auth,
  });
}
