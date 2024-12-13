import 'package:errortest/product/model/product_model.dart';
import 'package:errortest/product/service/product_service.dart';
import 'package:errortest/productpage.dart';
import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  final List<String> price = [
    ' Rs299',
    ' Rs199',
    ' Rs399',
    ' Rs249',
    ' Rs299',
    ' Rs299',
    ' Rs299',
    ' Rs299',
    ' Rs299',
    ' Rs299',
  ];
  final List<String> names = [
    ' Belt Bag',
    ' Office Code',
    ' Hang Top',
    ' Old Fashion',
    ' Square Bag',
    ' Casual Bag',
    ' Wallet Bag',
    ' White Bag',
    ' Boxy Bag',
    ' Yellow Bag',
  ];
  final List<String> images = [
    'android/assets/images/png1.png',
    'android/assets/images/png2.png',
    'android/assets/images/png3.png',
    'android/assets/images/png4.png',
    'android/assets/images/png5.png',
    'android/assets/images/png6.png',
    'android/assets/images/png7.png',
    'android/assets/images/png8.png',
    'android/assets/images/png9.png',
  ];
  final List<Color> colors = [
    const Color.fromARGB(255, 153, 53, 53),
    const Color.fromARGB(255, 167, 27, 27),
    const Color.fromARGB(224, 200, 202, 182),
    const Color.fromARGB(224, 25, 25, 26),
    const Color.fromARGB(255, 122, 19, 19),
    const Color.fromARGB(224, 4, 1, 8),
    const Color.fromARGB(224, 141, 15, 63),
    const Color.fromARGB(224, 212, 209, 216),
    const Color.fromARGB(224, 13, 83, 139),
    const Color.fromARGB(224, 211, 231, 26),
  ];
  Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color.fromARGB(255, 245, 7, 86),
        title: const Text(
          'DENOMAC online shop',
          style: TextStyle(
              color: Color.fromARGB(255, 4, 217, 250),
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
                              builder: (context) => Productpage(
                                    price:
                                        snapshot.data![index].price.toString(),
                                    rating:
                                        snapshot.data![index].rating.toString(),
                                    snap: snapshot.data![index].image,
                                    descriptionn: snapshot
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
