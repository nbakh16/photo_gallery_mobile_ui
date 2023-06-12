import 'package:flutter/material.dart';


class PhotoButton extends StatelessWidget {
  const PhotoButton({super.key,
    required this.imageUrl
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final snackBar = SnackBar(content: Text('Clicked on photo!'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(imageUrl, height: 150, fit: BoxFit.cover),
          SizedBox(height: 8),
          Text(
            'Caption',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}