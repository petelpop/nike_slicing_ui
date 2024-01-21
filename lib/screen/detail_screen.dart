import 'package:flutter/material.dart';
import 'package:submission_dicoding_1/model/item.dart';

class DetailScreen extends StatefulWidget {
  final Nike item;

  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            _appbar(),
            SizedBox(height: 10),
            _image(context),
            SizedBox(height: 10),
            _titlePrice(),
            SizedBox(height: 5),
            _reviews(),
            SizedBox(height: 10),
            _detailsTitle(context),
            SizedBox(height: 10),
            _description(),
          ],
        ),
      ),
    );
  }

  Container _description() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        widget.item.description,
        style: TextStyle(
          color: Color(0xFF5B5B5B),
          fontSize: 15,
          fontFamily: 'Matter',
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Column _detailsTitle(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Details',
                style: TextStyle(
                  fontFamily: 'Matter',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SaveButton()  
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Container(
            height: 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: 3,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 8,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
        )
      ],
    );
  }

  Padding _reviews() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Icon(
            Icons.star_rounded,
            color: Colors.yellow,
            size: 20,
          ),
          Text(
            widget.item.rating,
            style: TextStyle(
              color: Colors.black.withOpacity(0.550000011920929),
              fontFamily: 'Matter',
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            ' | ',
            style: TextStyle(
              fontFamily: 'Matter',
              fontSize: 17,
              color: Color(0xFFD6D6D8),
            ),
          ),
          Text(
            widget.item.reviews,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Matter',
              color: Color(0xFF1235AD),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  Padding _titlePrice() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.item.name,
                style: TextStyle(
                  fontFamily: 'Matter',
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                widget.item.subTitle,
                style: TextStyle(
                  fontFamily: 'Matter',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.550000011920929),
                ),
              )
            ],
          ),
          Text(
            widget.item.price,
            style: TextStyle(
              fontFamily: 'Matter',
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1235AD),
            ),
          ),
        ],
      ),
    );
  }

  Image _image(BuildContext context) {
    return Image.asset(
      'asset/img/model.png',
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }

  Padding _appbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              iconSize: 30,
            ),
            Image.asset('asset/img/icon_2.png'),
            Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  iconSize: 30,
                ),
                Positioned(
                  right: 8,
                  top: 7,
                  child: Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                        color: const Color(0XFF1235AD),
                        borderRadius: BorderRadius.circular(15 / 2)),
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
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

class SaveButton extends StatefulWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  _SaveButtonState createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton>{
  bool save = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        save? Icons.star_rounded : Icons.star_border_rounded,
        color: Colors.yellow,
      ),
      onPressed: () {
        setState(() {
          save = !save; 
        });
      }
      );
  }
}