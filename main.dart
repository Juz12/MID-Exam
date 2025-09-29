import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GRC App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('GRC'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //profile picture
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black38,
                  width: 12,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5)
                  )
                ],
              ),
              child: ClipOval(
                  child: Image.network('https://static.vecteezy.com/system/resources/previews/009/606/437/non_2x/grc-circle-letter-logo-design-with-circle-and-ellipse-shape-grc-ellipse-letters-with-typographic-style-the-three-initials-form-a-circle-logo-grc-circle-emblem-abstract-monogram-letter-mark-vector.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover, )
              ),
            ),
            //NAME
            SizedBox(height: 20),
            Text('Global Reciprocal College',style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),),

            //About me Section

            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, 3)
                    )
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mission :',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 5),
                  Text('GRC is creating a culture for successful, socially responsible, morally upright skilled workers and highly competent professional through values-based quality education. ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left,
                  )
                  ,SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: Offset(0, 3)
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Vission :',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        SizedBox(height: 5),
                        Text('A global community of excellent individuals with values.                                                                                                                                                                                                                                  ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],

                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }}

