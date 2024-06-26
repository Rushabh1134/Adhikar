import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //signup
  Future<String> signUp({
    required String email,
    required String password,
    required String username,
  }) async {
    String res = 'some error occured';
    try {
      if (email.isNotEmpty && password.isNotEmpty && username.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        await _firestore.collection("Users").doc(cred.user!.uid).set({
          'email':email,
          'password':password,
          'username':username
        });
        res = 'success';
      } else {
        res = 'Please fill all the empty fields';
      }
      print(res);
    } catch (err) {
      res = err.toString();
      print(res);
    }
    return res;
  }

//login
  Future<String> login({
    required String email,
    required String password,
  }) async {
    String res = 'some error occured';
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'success';
      } else {
        res = 'Please fill all the empty fields';
      }
      print(res);
    } catch (err) {
      res = err.toString();
      print(res);
    }
    return res;
  }

  //logout

  Future<String> logout() async {
    String res = 'some error occured';
    await _auth.signOut();
    res = 'success';
    return res;
  }
}
