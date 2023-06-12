import 'package:flutter/material.dart';
import 'package:photo_gallery_ui/photo_btn_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(14),
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for photos',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                ),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              padding: EdgeInsets.all(8),
              children: [
                PhotoButton(imageUrl: 'https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg'),
                PhotoButton(imageUrl: 'https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg'),
                PhotoButton(imageUrl: 'https://images.pexels.com/photos/4101555/pexels-photo-4101555.jpeg'),
                PhotoButton(imageUrl: 'https://images.pexels.com/photos/3224156/pexels-photo-3224156.jpeg'),
                PhotoButton(imageUrl: 'https://images.pexels.com/photos/2832034/pexels-photo-2832034.jpeg'),
                PhotoButton(imageUrl: 'https://images.pexels.com/photos/4064432/pexels-photo-4064432.jpeg'),
              ],
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photo 1'),
                  subtitle: Text('Description 1'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photo 2'),
                  subtitle: Text('Description 2'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photo 3'),
                  subtitle: Text('Description 3'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final snackBar = SnackBar(content: Text('Photos Uploaded Successfully!'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Icon(Icons.cloud_upload),
      ),
    );
  }
}