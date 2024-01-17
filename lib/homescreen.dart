import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void SignOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.logout_rounded),
          onPressed: SignOut,
        ),
        backgroundColor: Colors.deepPurple[600],
      ),
      body: Center(
        child: Text(
          "PREORDERS",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
