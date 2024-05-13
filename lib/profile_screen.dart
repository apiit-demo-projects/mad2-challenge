import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/product');
            },
            child: const BackButton()),
        title: const Text(
          'My Profile',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),


      //Profile Details Section
      body: const Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('lib/images/user.jpg'),
            ),
            SizedBox(height: 20,),

            Expanded(
              flex: 0,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name', style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                      ),
                      Text('Michonne', style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: 10),
                      Text('Account Level', style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                      ),
                      Text('10', style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Divider(
              color: Colors.grey,
              thickness: 1,
              height: 40,
            ),


            //Tiles
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Personal Details'),
                    leading: Icon(CupertinoIcons.person),
                    trailing: Icon(Icons.arrow_forward, color: Colors.grey,),
                    tileColor: Colors.white,
                  ),
                  ListTile(
                    title: Text('My Card'),
                    leading: Icon(CupertinoIcons.creditcard),
                    trailing: Icon(Icons.arrow_forward, color: Colors.grey,),
                    tileColor: Colors.white,
                  ),
                  ListTile(
                    title: Text('My Orders'),
                    leading: Icon(CupertinoIcons.bag),
                    trailing: Icon(Icons.arrow_forward, color: Colors.grey,),
                    tileColor: Colors.white,
                  ),
                  ListTile(
                    title: Text('Settings'),
                    leading: Icon(CupertinoIcons.settings),
                    trailing: Icon(Icons.arrow_forward, color: Colors.grey,),
                    tileColor: Colors.white,
                  ),
                  ListTile(
                    title: Text('FAQs'),
                    leading: Icon(CupertinoIcons.question_circle),
                    trailing: Icon(Icons.arrow_forward, color: Colors.grey,),
                    tileColor: Colors.white,
                  ),
                  ListTile(
                    title: Text('Privacy Policy'),
                    leading: Icon(CupertinoIcons.flag),
                    trailing: Icon(Icons.arrow_forward, color: Colors.grey,),
                    tileColor: Colors.white,
                  ),
                  ListTile(
                    title: Text('Terms and Conditions'),
                    leading: Icon(CupertinoIcons.lock_circle),
                    trailing: Icon(Icons.arrow_forward, color: Colors.grey,),
                    tileColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
      ),
    );
  }
}
