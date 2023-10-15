import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test(),
    );
  }
}

class Test extends StatelessWidget {
  final List<String> likes = ['1000 Likes', '500 Likes', '1500 Likes', '800 Likes', '1200 Likes', '2000 Likes'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/profile_image.jpg'),
          ),
          SizedBox(height: 16.0),
          Text(
            'Allll',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'WOIIII',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'Pengikut',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('100K'),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Disukai',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('500k'),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Mengikuti',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('50'),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Jumlah kolom
              ),
              itemCount: 6, // Jumlah postingan foto
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      width: 425.0,
                      height: 425.0,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/postingan_$index.jpg',
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.7),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                ),
                              ),
                              child: Text(
                                likes[index], // Menggunakan jumlah like berdasarkan index postingan
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
