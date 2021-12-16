import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(children: [
        SizedBox(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 200,
                          height: 200,
                          child: Image.asset('assets/images/cafe.png')),
                      const SizedBox(height: 10),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            children: [
                              TextField(
                                onChanged: (text) {
                                  email = text;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Email'),
                              ),
                              const SizedBox(height: 10),
                              TextField(
                                onChanged: (text) {
                                  password = text;
                                },
                                obscureText: true,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Senha'),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                  onPressed: () {
                                    if (email == 'email' && password == '123') {
                                      Navigator.of(context)
                                          .pushReplacementNamed('/home');
                                    } else {
                                      // ignore: avoid_print
                                      print('invalido');
                                    }
                                  },
                                  child: const Text('Entrar'))
                            ],
                          ),
                        ),
                      ),
                    ]))),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/images/bg.jpg', fit: BoxFit.cover)),
          Container(color: Colors.black.withOpacity(0.8)),
          _body(),
        ],
      ),
    );
  }
}
