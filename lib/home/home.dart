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
                      suffixIcon: Icon(Icons.mic),
                      prefixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
              ),
              ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0,vertical: 8.0),
                    child: Row(
                      children: [
                        Text("All Featured",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(width: 85,),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Text("Sort"),
                                Icon(Icons.compare_arrows)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 30,
                          width: 70,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Text("Filter"),
                                Icon(Icons.filter_alt_outlined)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image(image: AssetImage("assets/images/beauty.png")),
                              Text("Beauty"),
                            ],
                          ),
                          SizedBox(width: 15),
                          Column(
                            children: [
                              Image(image: AssetImage("assets/images/fashion.png")),
                              Text("Fashion"),
                            ],
                          ),
                          SizedBox(width: 15,),
                          Column(
                            children: [
                              Image(image: AssetImage("assets/images/kids.png")),
                              Text("Kids"),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
