import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app_firebase/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // text controllers
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  // login method
  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;

    try {
      await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  // signup method

  Future<UserCredential?> signupMethod({email, password, context}) async {
    UserCredential? userCredential;

    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  // storing data method
  storeUserData({name, password, email}) async {
    DocumentReference store =
        fireStore.collection(usersCollections).doc(currentUser!.uid);
    store.set({
      'name': name,
      'password': password,
      'email': email,
      'imageUrl': '',
    });
  }

  // sign-out method
  signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
