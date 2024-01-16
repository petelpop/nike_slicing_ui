import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox( height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {}, 
                      icon: Icon(Icons.menu)),
                      Image.asset('asset/img/icon_2.png'),
                      Stack(
                        children: [
                          IconButton(
                            onPressed: (){}
                          , icon: const Icon(
                            Icons.shopping_cart
                          )),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(color: Color(0XFF1235AD),
                              borderRadius: BorderRadius.circular(15/2)),
                              child: Center(
                                child: Text('3', style: GoogleFonts.plusJakartaSans(
                                  color: Colors.white,
                                  fontSize: 5, 
                                  fontWeight: FontWeight.w800
                                ),),
                              ),
                            ),
                          )
                        ],
                      )
                  ],
                ),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}