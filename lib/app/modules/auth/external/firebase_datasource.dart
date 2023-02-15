// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';

import 'package:curious_ifsp/app/modules/auth/infra/datasources/auth_firebase_datasource_contract.dart';
import 'package:curious_ifsp/app/modules/auth/infra/model/user_model.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseDatasourceImpl implements AuthFirebaseDatasourceContract {
  final FirebaseAuth auth;
  final GoogleSignIn googleSignIn;
  late final UserModel _userModel;

  FirebaseDatasourceImpl({
    required this.auth,
    required this.googleSignIn,
  });

  @override
  Future<UserModel> currentUser() async {
    final user = auth.currentUser;
    if (user == null) throw Error();
    return UserModel.fromUser(user);
  }

  @override
  Future<UserModel> loginWithGoogleAccount() async {
    final googleSignInAccount = await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final resultAuth = await auth.signInWithCredential(credential);
      _userModel = UserModel.fromUserCredential(resultAuth);
    }
    return _userModel;
  }

  @override
  Future<void> logout() async {
    await googleSignIn.signOut();
    await auth.signOut();
  }
}
