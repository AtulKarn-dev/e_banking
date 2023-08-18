import 'package:finance_project1/welcome_page.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  bool canLookPassword1 = true;
  bool canLookPassword2 = true;
  bool obscure1 = false;
  bool obscure2 = false;
  @override
  void dispose() {
    super.dispose();
    name.dispose();
    password.dispose();
    confirmPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(children: [
               const SizedBox(
                  height: 40,
                ),
              const  Text('Sign up',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54)),
               const  SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 400,
                  child: TextFormField(
                      controller: name,
                      keyboardType: TextInputType.name,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Your Full Name',
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.black54,
                        ),
                        contentPadding:
                          const  EdgeInsets.symmetric(horizontal: 50, vertical: 18),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                      )),
                ),
             const    SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 400,
                  child: TextFormField(
                      controller: password,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: obscure1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Set a password',
                        prefixIcon:const  Icon(
                          Icons.lock,
                          color: Colors.black54,
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              canLookPassword1 = !canLookPassword1;
                              obscure1 = !obscure1;
                            });
                          },
                          child: canLookPassword1
                              ? const Icon(Icons.visibility,
                                  color: Colors.black54)
                              : const Icon(Icons.visibility_off,
                                  color: Colors.black54),
                        ),
                        contentPadding:
                           const  EdgeInsets.symmetric(horizontal: 50, vertical: 18),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                      )),
                ),
              const   SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 400,
                  child: TextFormField(
                      controller: confirmPassword,
                      keyboardType: TextInputType.visiblePassword,
                      textAlign: TextAlign.center,
                      obscureText: obscure2,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              canLookPassword2 = !canLookPassword2;
                              obscure2 = !obscure2;
                            });
                          },
                          child: canLookPassword2
                              ? const Icon(
                                  Icons.visibility,
                                  color: Colors.black54,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                  color: Colors.black54,
                                ),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black54,
                        ),
                        contentPadding:
                           const  EdgeInsets.symmetric(horizontal: 50, vertical: 18),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                      )),
                ),
               const  SizedBox(height: 60,),
                  SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context) =>  const Welcome()));
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.lightBlueAccent)),
                child: const Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              )),
              ])),
        ),
      ),
    );
  }
}
