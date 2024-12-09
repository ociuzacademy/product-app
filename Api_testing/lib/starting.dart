import 'package:flutter/material.dart';
import 'package:ui_design/product/view/grid.dart';

class Startingpage extends StatelessWidget {
  const Startingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 247, 248, 238),
        child: Column(
          children: [
            Image.asset(
              'android/assets/images/coverimg.jpg',
              width: double.infinity,
              height: 500,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Clothings, accessories, and shoes that\n are designed to help you express your\n unique personality and individuality',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 2,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx1) {
                  return Gridview();
                }));
              },
              style: const ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(Size(80, 40)),
                  maximumSize: WidgetStatePropertyAll(Size(200, 40)),
                  fixedSize: WidgetStatePropertyAll(Size(175, 45)),
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 163, 7, 80))),
              child: const Text(
                'Grid View',
                style: TextStyle(
                    color: Color.fromARGB(255, 241, 237, 237),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
    );
  }
}
