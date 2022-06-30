import 'package:fetch_images_from_firebase/model/image_model.dart';
import 'package:fetch_images_from_firebase/views/home/image_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ListImage extends StatelessWidget {
  const ListImage();
//recuperation des images dans un list avec les indice specific
  @override
  Widget build(BuildContext context) {
    final _images = Provider.of<List<Image1>>(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate((_, index) {
        return ImageDesign(image1: _images[index]);
      }, childCount: _images.length),
    );
  }
}
