import 'package:finance_project1/submit.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController userNumberController = TextEditingController();
  String? errorText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black54, size: 30)),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login to continue',
                      style: TextStyle(
                          color: Colors.lightBlueAccent.shade400,
                          fontSize: 24,
                          height: 2)),
                  const Text(
                    'Enter your mobile number \nWe will send you OTP to verify',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: 400,
                    child: TextFormField(
                       textAlign: TextAlign.center,
                      controller: userNumberController,
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        hintText: 'XXXXXXXXXX',
                        hintStyle: const TextStyle(
                            color: Colors.black,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold),
                        errorText: errorText,
                        errorStyle: const TextStyle(fontSize: 20),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.black54, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'By continuing you agree',
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 18, height: 1.5),
                        children: [
                          TextSpan(
                              text: ' terms & conditions',
                              style: TextStyle(
                                  color: Colors.lightBlueAccent.shade400)),
                          const TextSpan(text: '\nand the'),
                          TextSpan(
                              text: ' privacy policy',
                              style: TextStyle(
                                  color: Colors.lightBlueAccent.shade400))
                        ],
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                      height: 60,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => const Submit()));
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.lightBlueAccent)),
                        child: const Text(
                          'Send OTP',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'Already a User? ',
                          style:
                              const TextStyle(color: Colors.black, fontSize: 18),
                          children: [
                        TextSpan(
                            text: 'Sign in',
                            style: TextStyle(
                                color: Colors.lightBlueAccent.shade400,
                                fontWeight: FontWeight.bold))
                      ]))
                ],
              ),
            ),
          ),
        ),
    );
  }
}
