import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Benzeri Uygulama',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InstagramClone(),
    );
  }
}

class InstagramClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Clone'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildPost(
              username: 'Berk Çavuşoğlu',
              userImage: 'assets/user1.jpg',
              postImage: 'assets/post1.jpg',
              caption: 'Güzel bir manzara!',
              time: '2 saat önce',
            ),
            _buildPost(
              username: 'user2',
              userImage: 'assets/user2.jpg',
              postImage: 'assets/post2.jpg',
              caption: 'Yemek zamanı!',
              time: '5 saat önce',
            ),
            _buildPost(
              username: 'user3',
              userImage: 'assets/user3.jpg',
              postImage: 'assets/post3.jpg',
              caption: 'Arkadaşlarla birlikte!',
              time: '1 gün önce',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPost({
    required String username,
    required String userImage,
    required String postImage,
    required String caption,
    required String time,
  }) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(userImage),
                radius: 20,
              ),
              SizedBox(width: 8),
              Text(
                username,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(time),
            ],
          ),
          SizedBox(height: 8),
          Image.asset(postImage),
          SizedBox(height: 8),
          Text(caption),
          SizedBox(height: 8),
          Divider(),
          SizedBox(height: 8),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(userImage),
                radius: 15,
              ),
              SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Yorum ekle...',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
