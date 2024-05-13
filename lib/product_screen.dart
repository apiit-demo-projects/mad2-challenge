import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Nike Store',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                icon: const Icon(Icons.person_outline, color: Colors.grey, size: 30,),
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
            ),
          ],
        ),


      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 18,),
            Image.asset(
              "lib/images/shoe.jpeg",
              width: 500,
              height: 240,
            ),
            Expanded(
                child: Container(
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40, top: 20),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  "Nike Air Max (Pink)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
            ))
          ],
        ),
      ),


    );
  }
}
