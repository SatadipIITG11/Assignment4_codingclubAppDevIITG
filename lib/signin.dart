import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:preorder/signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  late TextEditingController controlleremail;
  late TextEditingController controllerpass;

  @override
  void initState() {
    super.initState();
    controlleremail = TextEditingController();
    controllerpass = TextEditingController();
  }

  @override
  void dispose() {
    controlleremail.dispose();
    controllerpass.dispose();
    super.dispose();
  }

  // void wrongEmailMessage() {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return const AlertDialog(
  //           title: Text("Wrong Email"),
  //         );
  //       });
  // }

  // void wrongPasswordMessage() {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return const AlertDialog(
  //           title: Text("Wrong Password"),
  //         );
  //       });
  // }

  void signIn() async {
    // String email = _controlleremail.text;
    // String password = _controllerpass.text;
    void wrongPasswordMessage() {
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Center(child: Text("Wrong Password")),
            );
          });
    }

    void wrongEmailMessage() {
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Center(child: Text("Wrong Email")),
            );
          });
    }

    showDialog(
        context: context,
        builder: (context) {
          return Center(child: const CircularProgressIndicator());
        });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: controlleremail.text, password: controllerpass.text);
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        wrongEmailMessage();
      } else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
        
      }
    }
  }

  // late String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "SignIn",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: controlleremail,
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: controllerpass,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                child: Text(
                  "SIGN IN",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black87,
                  minimumSize: Size(150, 60),
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                ),
                onPressed: signIn,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have account?",
                    style: TextStyle(fontSize: 17),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 7,
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
