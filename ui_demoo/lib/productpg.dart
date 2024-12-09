import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_demoo/product/model/product_model.dart';

class Productpg extends StatelessWidget {
  final snap;
  final String price;
  final description;
  final String rating;

  Productpg(
      {super.key,
      this.snap,
      required this.price,
      this.description,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'product',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyan,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shop_sharp))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: 555,
          color: Colors.cyan,
          child: Stack(
            children: <Widget>[
              const Positioned(
                  left: 45,
                  top: 25,
                  child: Text(
                    'PRODUCT',
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  )),
              const Positioned(
                  top: 55,
                  left: 30,
                  child: Text('PRODUCT DETAILS',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))),
              const Positioned(
                  top: 160,
                  left: 100,
                  child: Text('price',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))),
              Positioned(
                  top: 200,
                  left: 100,
                  child: Text(price,
                      style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ))),
              Positioned(
                  top: 330,
                  child: Container(
                    height: 500,
                    width: 512,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                  )),
              Positioned(
                  top: 120,
                  left: 255,
                  child: Image.network(
                    snap,
                    height: 350,
                    width: 300,
                  )),
              const Positioned(
                  top: 460,
                  left: 420,
                  child: Text(
                    'RATING',
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  )),
              Positioned(
                  top: 485,
                  left: 280,
                  child: Text(
                    rating,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  top: 600,
                  child: Container(
                    width: 500,
                    height: 250,
                    child: Text(
                      textAlign: TextAlign.center,
                      description,
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  )),
              const Positioned(
                  top: 420,
                  left: 50,
                  child: Text(
                    'color',
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  )),
              Positioned(
                  top: 750,
                  left: 20,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.minimize))),
              const Positioned(
                  top: 770,
                  left: 65,
                  child: Text(
                    '01',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  top: 760,
                  left: 80,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.add))),
              const Positioned(
                  top: 450,
                  left: 55,
                  child: PhysicalModel(
                    shadowColor: Colors.black,
                    shape: BoxShape.circle,
                    elevation: 10,
                    color: Colors.transparent,
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: Color.fromARGB(226, 173, 3, 3),
                    ),
                  )),
              const Positioned(
                  top: 450,
                  left: 70,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Color.fromARGB(255, 42, 5, 102),
                  )),
              const Positioned(
                  top: 450,
                  left: 85,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Color.fromARGB(255, 5, 156, 25),
                  )),
              Positioned(
                  top: 750,
                  left: 350,
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color.fromARGB(213, 243, 18, 18),
                      child: IconButton(
                          alignment: Alignment.center,
                          onPressed: () {},
                          icon: const Icon(
                            size: 22,
                            Icons.favorite,
                            color: Colors.white,
                          ))))
            ],
          ),
        ),
      ),
    );
  }
}
