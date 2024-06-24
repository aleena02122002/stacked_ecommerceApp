import 'package:e_commerce/app/app.router.dart';
import 'package:e_commerce/register/register_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => RegisterViewmodel(),
        builder: (context, viewmodel, index) {
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
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Confirm Password"),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
                      child: TextButton(
                        onPressed: () {},
                        child: RichText(
                          text: TextSpan(
                            text: "By Clicking the ",
                            style: const TextStyle(color: Color(0xFF676767)), // Default text style
                            children: <TextSpan>[
                              TextSpan(
                                text: "Register",
                                style: TextStyle(color: Color(0xFFF83758)), // Different color for "Register"
                              ),
                              TextSpan(
                                text: " button, you agree to the public offer",
                                style: const TextStyle(color: Color(0xFF676767)), // Continue with default style
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

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
                          "Register",
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
                          horizontal: 80, vertical: 150),
                      child: Row(
                        children: [
                          Text("Already have an account"),
                          TextButton(
                              onPressed: () {
                                viewmodel.navigationService.navigateToLoginView();
                              },
                              child: Text(
                                "Login",
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
