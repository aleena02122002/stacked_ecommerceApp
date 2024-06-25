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
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: const Image(image: AssetImage("assets/images/logo.png")),
              ),
              body: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 5.0),
                    child: const Center(
                      child: Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search",
                              filled: true,
                              fillColor: Colors.white,
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.mic),
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 11.0, vertical: 8.0),
                    child: Row(
                      children: [
                        const Text(
                          "All Featured",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          width: 85,
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                Text("Sort"),
                                Icon(Icons.compare_arrows)
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 10),
                    child: Container(
                      height: 86,
                      color: Colors.white,
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/images/beauty.png")),
                                  Text("Beauty"),
                                ],
                              ),
                              SizedBox(width: 15),
                              Column(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/images/fashion.png")),
                                  Text("Fashion"),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Image(
                                      image:
                                          AssetImage("assets/images/kids.png")),
                                  Text("Kids"),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Image(
                                      image:
                                          AssetImage("assets/images/men.png")),
                                  Text("Men"),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/images/women.png")),
                                  Text("Women"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: <Widget>[
                      Image.asset("assets/images/offer1.png"),
                      Positioned(
                        top: 50, // specify the position of the text
                        left: 20,
                        child: Column(
                          children: [
                            const Text(
                              "50-40% OFF",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "Now in (product)",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                            const Text(
                              "All colours",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Container(
                                width: 101,
                                height: 32,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white,
                                    )),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 3.2),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Shop Now",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 60,
                    width: 343,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xFF4392F9)),
                    child: Row(
                      children: [
                        const Column(
                          children: [
                            Text(
                              "Deal of the Day",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Row(
                                children: [
                                  Icon(Icons.alarm, color: Colors.white,size: 20,),

                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 9.0),
                                    child: Text(
                                      "22h 55m 20s remaining",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.5),
                          child: Container(
                            width: 101,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                )),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8),
                              child: Row(
                                children: [
                                  Text(
                                    "View all",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 3),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
