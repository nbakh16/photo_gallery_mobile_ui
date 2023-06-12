import 'package:flutter/material.dart';
import 'package:photo_gallery_ui/photo_btn_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
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
            Wrap(
              alignment: WrapAlignment.start,
              spacing: 8,
              runSpacing: 8,
              children: const [
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
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Sample Photo 1'),
                  subtitle: Text('Category 1'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Sample Photo 2'),
                  subtitle: Text('Category 2'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Sample Photo 3'),
                  subtitle: Text('Category 3'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Sample Photo 4'),
                  subtitle: Text('Category 4'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Sample Photo 5'),
                  subtitle: Text('Category 5'),
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