import 'package:e_commerce/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(viewModelBuilder: ()=> LoginViewmodel(), builder: (context,viewmodel, child){
      return Scaffold(

      );
    });
  }
}
