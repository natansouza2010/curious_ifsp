// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';

import 'package:curious_ifsp/app/modules/auth/infra/datasources/auth_firebase_datasource_contract.dart';
import 'package:curious_ifsp/app/modules/auth/infra/model/user_model.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseDatasourceImpl implements AuthFirebaseDatasourceContract {
  final FirebaseAuth auth;
  final GoogleSignIn googleSignIn;

  FirebaseDatasourceImpl({
    required this.auth,
    required this.googleSignIn,
  });

  @override
  Future<UserModel> currentUser() {
    // TODO: implement currentUser
    throw UnimplementedError();
  }

  @override
  Future<UserModel> loginWithGoogleAccount() async {
    final googleSignInAccount = await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
    }

    throw UnimplementedError();
  }

  @override
  Future<UserModel> loginWithPhone() {
    // TODO: implement loginWithPhone
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
