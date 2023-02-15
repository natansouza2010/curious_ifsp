import 'package:curious_ifsp/app/modules/auth/infra/model/user_model.dart';

abstract class AuthFirebaseDatasourceContract {
  Future<UserModel> loginWithGoogleAccount();

  Future<UserModel> currentUser();
  Future<void> logout();
}
