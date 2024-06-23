import 'package:e_commerce/register/register_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(viewModelBuilder: ()=> RegisterViewmodel(), builder: (context,viewmodel,index){
      return Scaffold();
    });
  }
}
