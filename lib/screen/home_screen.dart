import 'package:flutter/material.dart';
import 'package:submission_dicoding_1/model/item.dart';
import 'package:submission_dicoding_1/screen/detail_screen.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 10),
            _appBar(),
            const SizedBox(height: 10),
            _hero(context),
            const SizedBox(height: 20),
            _category(),
            const SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              
              children: List.generate(itemList.length,
              (index) => ItemCard(item: itemList[index])),
            )
        
              //   Container(
              //   height: 163,
              //   width: 177,
              //   decoration: BoxDecoration(
              //   color: Color(0xFFEEEEEE),
              //   borderRadius: BorderRadius.circular(12.72)
              //   )
              // )
            
              
          ]
            ),
      ),
      );
  }

  Padding _category() {
    return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Year, New You',
                  style: TextStyle(
                    fontFamily: 'Matter',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.32
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xFF1235AD),
                        fontFamily: 'Matter',
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.24
                      ),
                    ),
                    Icon(Icons.arrow_outward, size: 19, color: Color(0xFF1235AD))
                  ],
                )
              ],
              
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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                  margin: const EdgeInsets.symmetric(vertical: 25),
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

class ItemCard extends StatelessWidget {
  final Nike item;

  ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return DetailScreen(item: item);
        })
        );
      },
      child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Row(
                    children: [
                      Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(item.image,
                            fit: BoxFit.cover,),
                          ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Text(
                                      item.name,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Matter',
                                        fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(item.price,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Matter',
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF1235AD)),
                                      )
                                  ],
                                ),
                              ),
                              )
                        ],
                      ),
                    ),
                    ],
                  ),
                  ),
    );
  }
}