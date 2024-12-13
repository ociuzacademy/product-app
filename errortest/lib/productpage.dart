import 'package:flutter/material.dart';

class Productpage extends StatelessWidget {
  final snap;
  final String price;
  final descriptionn;
  final String rating;
  final List<Color> colors = [
    const Color.fromARGB(226, 173, 3, 3),
    const Color.fromARGB(225, 4, 236, 55),
    const Color.fromARGB(225, 90, 5, 226),
  ];
  Productpage(
      {super.key,
      this.snap,
      required this.price,
      this.descriptionn,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(223, 255, 0, 0),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: double.infinity,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Stack(
            children: [
              const Positioned(
                  top: 620,
                  left: 15,
                  child: Text(
                    'Rs.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )),
              Positioned(
                  top: 610,
                  left: 50,
                  child: Text(
                    price,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic),
                  )),
              Positioned(
                  top: 125,
                  left: 125,
                  child: Image.network(
                    snap,
                    width: 300,
                    height: 300,
                  )),
              const Positioned(
                  top: 420,
                  left: 54,
                  child: Text(
                    'Color',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  )),
              const Positioned(
                  top: 420,
                  left: 295,
                  child: Text(
                    'RATING',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  )),
              Positioned(
                  top: 445,
                  left: 200,
                  child: Text(
                    rating,
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  )),
              Positioned(
                  top: 490,
                  child: Container(
                    width: 500,
                    height: 200,
                    child: Text(
                      textAlign: TextAlign.center,
                      descriptionn,
                      style: TextStyle(
                          color: Colors.black, fontStyle: FontStyle.italic),
                    ),
                  )),
              Positioned(
                  top: 695,
                  left: 150,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.minimize,
                        color: Colors.black,
                      ))),
              Positioned(
                  top: 700,
                  left: 195,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ))),
              const Positioned(
                  top: 710,
                  left: 185,
                  child: Text(
                    '01',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  )),
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
                  top: 50,
                  left: 410,
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
                        )),
                  )),
              Positioned(
                  top: 695,
                  left: 300,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          fixedSize: WidgetStatePropertyAll(Size(150, 45)),
                          backgroundColor: WidgetStatePropertyAll(
                              Color.fromARGB(223, 228, 21, 7))),
                      onPressed: () {},
                      child: const Text(
                        'Buy Now',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      ))),
              Positioned(
                  top: 700,
                  left: 230,
                  child: Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 194, 16, 3))),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_checkout_outlined,
                          size: 30,
                          color: Colors.black,
                        )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
