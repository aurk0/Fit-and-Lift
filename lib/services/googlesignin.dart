import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authservice {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  Future signin() async {
    try {
      final GoogleSignInAccount googleuser = await GoogleSignIn().signIn();
      if (googleuser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleuser.authentication;

        final GoogleAuthCredential credential = GoogleAuthProvider.credential(
            idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
        User user = (await auth.signInWithCredential(credential)).user;
      }
    } catch (e) {
      print(e);
    }
  }

  void signout() async {
    await googleSignIn.signOut();
  }
}
