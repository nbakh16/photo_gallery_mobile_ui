import 'package:flutter/material.dart';


class PhotoButton extends StatelessWidget {
  const PhotoButton({super.key,
    required this.imageUrl
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: ElevatedButton(
        clipBehavior: Clip.antiAlias,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          final snackBar = SnackBar(content: Text('Clicked on photo!'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.cover
            )
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text("Caption",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                backgroundColor: Colors.black.withAlpha(90),
              ),
            )
          ),
        ),
        // child: Stack(
        //   alignment: Alignment.bottomCenter,
        //   children: [
        //     Image.network(imageUrl, height: 500, width: 500, fit: BoxFit.cover,),
        //     Text("Image")
        //   ],
        // )
      ),
    );
  }
}