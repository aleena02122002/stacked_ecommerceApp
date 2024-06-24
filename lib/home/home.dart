import 'package:e_commerce/app/app.dart';
import 'package:e_commerce/home/home_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewmodel(),
        builder: (context, viewmodel, child) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Image(image: AssetImage("assets/images/logo.png")),
              ),
              body: Column(
                children: [
              Container(
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5.0),
              child: Center(
                child: Flexible(
                  child: TextField(

                    decoration: InputDecoration(
                      hintText: "Search",
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.mic, color: Colors.black),
                      prefixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
              ),
              ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Text("All Featured",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
