import 'package:flutter/material.dart';
import './dashboard.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: formKey,
          child: Center(
            child: SizedBox(
              width: 280,
              height: 230,
              child: Card(
                elevation: 10,
                shadowColor: Colors.black,
                color: const Color.fromARGB(255, 241, 228, 178),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: cUser,
                        decoration: InputDecoration(
                            labelText: 'Username',
                            hintText: 'Input Username',
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(10),
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Username Masih Kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: cPass,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Input Password',
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(10),
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password Masih Kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            String tUser = cUser.text;
                            String tPass = cPass.text;
                            if (formKey.currentState!.validate()) {
                              if (tUser == 'ahmadfuji' &&
                                  tPass == '20552011254') {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()),
                                    (route) => false);
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text('Konfirmasi Login'),
                                        content: const Text(
                                            'Username atau Password Salah'),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: () {
                                                cUser.text = '';
                                                cPass.text = '';
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('OK'))
                                        ],
                                      );
                                    });
                              }
                            }
                          },
                          child: const Text('LOGIN')),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
