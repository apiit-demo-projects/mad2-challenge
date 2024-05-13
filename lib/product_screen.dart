import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

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
              icon: const Icon(
                Icons.person_outline,
                color: Colors.grey,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ),
        ],
      ),

      //body
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 18),
            Image.asset(
              "lib/images/shoe.jpeg",
              width: 500,
              height: 240,
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [

                    //Heading
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Nike Air Max (Pink)",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Price
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                          const Text(
                            "USD 1200",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.blue,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: List.generate(5, (index) {
                              return const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              );
                            }),
                          ),
                        ],
                      ),
                    ),

                    //Description
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Nike air max is a sneakers from the Nike Collection. It has various colors from various sizes'
                                'that is affordable in all forms. Check out for the Original Nike because there are a lot of'
                                'fake products out there and they seem to look original while they are not.',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Review
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reviews',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Sabinus',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'The sneaker is really good and I love the color. I will be buying another one very soon'
                                'for my brother as well as my sister. I will recommend this sneaker to more people',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

