import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ScalingImage extends StatefulWidget {
  String image;
  @override
  _ScalingImageState createState() => _ScalingImageState();

  ScalingImage(this.image);
}

class _ScalingImageState extends State<ScalingImage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: PhotoView(
        imageProvider: AssetImage(
          widget.image,
        ),
      ),
    );
  }
}
