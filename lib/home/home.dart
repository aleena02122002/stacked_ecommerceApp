import 'package:e_commerce/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewmodel(),
        builder: (context, viewmodel, child) {
          return Scaffold(

          );
        });
  }
}
