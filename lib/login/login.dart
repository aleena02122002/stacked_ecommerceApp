import 'package:e_commerce/app/app.router.dart';
import 'package:e_commerce/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => LoginViewmodel(),
        builder: (context, viewmodel, child) {
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: true,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 25.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Text("Welcome",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              Text("Back!",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Username or Email"),
                          prefixIcon: Icon(Icons.person),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Color(0xFFA8A8A9))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFA8A8A9), width: 2.0)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Password"),
                          prefixIcon: Icon(Icons.lock),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Color(0xFFA8A8A9))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFA8A8A9), width: 2.0)),
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forget Password",
                              style: TextStyle(color: Color(0xFFF83758)),
                            ))),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 55,
                      width: 317,
                      child: ElevatedButton(
                        onPressed: () {
                          viewmodel.navigationService.navigateToHomeView();
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF83758),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 90, vertical: 150),
                      child: Row(
                        children: [
                          Text("Create an Account"),
                          TextButton(
                              onPressed: () {
                                viewmodel.navigationService
                                    .navigateToRegisterView();
                              },
                              child: Text(
                                "Signup",
                                style: TextStyle(color: Color(0xFFF83758)),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
