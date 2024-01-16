import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            _appBar(),
            const SizedBox(height: 10),
            _hero(context),
            const SizedBox(height: 10),
            
          ],
        ),
      ),
    );
  }

  Stack _hero(BuildContext context) {
    return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
              'asset/img/image_2.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill),
              SizedBox(
                height: 150,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(text: "Check Out Our \n Exclusive Collection",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Matter',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1.12,
                  ),
                  ),
                ),
              ),
              Center(
                  child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                  margin: EdgeInsets.symmetric(vertical: 25),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
                     ),
                  child: TextButton(
                    onPressed: () {}, 
                    child: const Text(
                    textAlign: TextAlign.center,
                    'Check Now',
                    style: TextStyle(
                    fontFamily: 'Matter',
                    color: Color(0xFF1235AD),
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                    ),
                    ),
                    ),
                  ),

                ),
            ],
          );
  }

  Padding _appBar() {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(Icons.menu),
                      iconSize: 30,),
                      Image.asset('asset/img/icon_2.png'),
                      Stack(
                        children: [
                          IconButton(
                            onPressed: (){}
                          , icon: const Icon(Icons.shopping_cart),
                          iconSize: 30,
                          ),
                          Positioned(
                            right: 8,
                            top: 7,
                            child: Container(
                              height: 13,
                              width: 13,
                              decoration: BoxDecoration(color: const Color(0XFF1235AD),
                              borderRadius: BorderRadius.circular(15/2)),
                              child: const Center(
                                child: Text('3', style: TextStyle(
                                  fontFamily: 'Matter',
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                  ],
                ),
              ),
              
            );
  }
}