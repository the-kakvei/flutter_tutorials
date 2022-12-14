import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.yellow.shade700,
          width: 2.0,
          style: BorderStyle.solid,
        )),
        child: Column(
          children: <Widget>[
            Image.network(image.url),
            Padding(
              padding: EdgeInsets.only(
                top: 10.0,
              ),
              child: Text(image.title),
            )
          ],
        ));
  }
}
