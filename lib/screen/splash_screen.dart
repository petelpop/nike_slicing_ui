
import 'package:flutter/material.dart';
import 'package:submission_dicoding_1/screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomeScreen()), 
      (route) => false);
    });


    return Scaffold(
        body: Stack(
          children: [
            Image.asset('asset/img/image_1.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fitHeight,
            ),
            Center(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30
                    ),
                    Image.asset('asset/img/icon_1.png')
                  ],
                ),
                ),
            )
          ],
        ),
    );
  }
  
}