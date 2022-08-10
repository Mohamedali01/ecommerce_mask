import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<bool> isChecked = [false, false, false, false];

  final List<String> images = [
    'assets/image_test.png',
    'assets/image_test.png',
    'assets/image_test.png',
    'assets/image_test.png'
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (_, index) {
          print(height);
          print(width);

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  width: width,
                  height: height * 0.3,
                  child: Image.asset(
                    images[index],
                    width: 100,
                  ),
                ),
                SizedBox(
                  width: width,
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.8,
                        child: Column(
                          children: [Text('Hello')],
                        ),
                      ),
                      IconButton(
                        color: Colors.black,
                        onPressed: () {
                          setState(() {
                            isChecked[index] = !isChecked[index];
                          });
                        },
                        icon: Icon(isChecked[index]
                            ? Icons.favorite
                            : Icons.favorite_border),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
