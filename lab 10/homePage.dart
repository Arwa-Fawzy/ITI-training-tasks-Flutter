import 'package:flutter/material.dart';
import 'package:todo/lab 8.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  bool visible = false;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(children: [
              Expanded(
                  child: ListView(
                    children: [
                      Container(
                          width: double.infinity,
                          padding:
                          const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 100),
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black,
                                    Colors.black54
                                  ])),
                          child: Center(
                            child: Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom:
                                        BorderSide(
                                            color: Colors.white, width: 2))),
                                child: const Text("LOGIN",
                                    style:
                                    TextStyle(
                                        color: Colors.white, fontSize: 30))),
                          )),
                      Form(
                          key: _formKey,
                          child: Container(
                              margin: const EdgeInsets.all(40),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 7),
                                    child: TextFormField(
                                      decoration:
                                      const InputDecoration(
                                          hintText: "username"),
                                      controller: userNameController,
                                      validator: (value) {
                                        if (value!.length <= 3) {
                                          return "invalid username";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: TextFormField(
                                      obscureText: !visible,
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          suffixIcon: IconButton(
                                            icon: Icon(visible
                                                ? Icons.visibility
                                                : Icons.visibility_off),
                                            onPressed: () {
                                              setState(() {
                                                visible = !visible;
                                              });
                                            },
                                          )),
                                      keyboardType: TextInputType
                                          .visiblePassword,
                                      controller: passwordController,
                                      validator: (value) {
                                        if (value!.length <= 8) {
                                          return "Please enter a valid password";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (
                                                      context) => const API()));
                                        }
                                      },
                                      style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty
                                              .all<Color>(
                                               Colors.black),
                                          foregroundColor: MaterialStateProperty
                                              .all<Color>(
                                              Colors.white),
                                          padding: MaterialStateProperty.all<
                                              EdgeInsetsGeometry>(
                                              const EdgeInsets.symmetric(
                                                  horizontal: 50,
                                                  vertical: 12)),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                              const RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(25))))),
                                      child: const Text("login",
                                          style: TextStyle(color: Colors.white,
                                              fontSize: 20)))
                                ],
                              )))
                    ],
                  ))
            ]),
          ),
        ));
  }
}
