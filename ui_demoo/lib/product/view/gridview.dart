import 'package:flutter/material.dart';
import 'package:ui_demoo/product/model/product_model.dart';
import 'package:ui_demoo/product/service/product_service.dart';
import 'package:ui_demoo/productpg.dart';

class gridview extends StatelessWidget {
  final List<String> price = [
    ' Rs299',
    ' Rs199',
    ' Rs399',
    ' Rs249',
    ' Rs279',
    ' Rs289',
    ' Rs599',
    ' Rs799',
    ' Rs469',
    ' Rs199',
  ];
  final List<String> names = [
    ' back Bag',
    ' outing Code',
    ' Hang Top',
    ' Old Fashion',
    ' Square Bag',
    ' Casual Bags set',
    ' large Bag',
    ' short Bag',
    ' golen Bag',
    ' boxy Bag',
  ];
  final List<String> images = [
    'android/assets/images/b1.png',
    'android/assets/images/b2.png',
    'android/assets/images/b3.png',
    'android/assets/images/b4.png',
    'android/assets/images/bg1.png',
    'android/assets/images/b15.png',
    'android/assets/images/b16.png',
    'android/assets/images/b13.png',
    'android/assets/images/b12.png',
    'android/assets/images/bg11.png',
  ];
  final List<Color> colors = [
    const Color.fromARGB(255, 90, 37, 37),
    const Color.fromARGB(208, 148, 3, 3),
    const Color.fromARGB(224, 200, 202, 182),
    const Color.fromARGB(223, 92, 92, 93),
    const Color.fromARGB(255, 107, 102, 102),
    const Color.fromARGB(239, 114, 114, 113),
    const Color.fromARGB(223, 167, 79, 2),
    const Color.fromARGB(224, 212, 209, 216),
    const Color.fromARGB(224, 13, 83, 139),
    const Color.fromARGB(224, 211, 231, 26),
  ];
  gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color.fromARGB(255, 250, 247, 248),
        title: const Text(
          '      Women Store',
          style: TextStyle(
              color: Color.fromARGB(255, 14, 13, 13),
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              fontSize: 28),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_sharp,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(7),
          children: const [
            DrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 238, 8, 84),
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 28,
                      fontStyle: FontStyle.italic),
                )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
          future: fetchUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final ProductModel = snapshot.data;
              return Container(
                height: double.infinity,
                width: double.infinity,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 350, crossAxisCount: 2),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Productpg(
                                    price:
                                        snapshot.data![index].price.toString(),
                                    rating:
                                        snapshot.data![index].rating.toString(),
                                    snap: snapshot.data![index].image,
                                    description: snapshot
                                        .data![index].description
                                        .toString(),
                                  )),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 170,
                                width: 220,
                                child:
                                    Image.network(snapshot.data![index].image)),
                            Text(
                              snapshot.data![index].title,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 68, 66, 66),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              snapshot.data![index].price.toString(),
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            } else {
              return const Center(
                child: Text('NO USERS FOUND'),
              );
            }
          }),
    );
  }
}
