import 'package:fetch_images_from_firebase/views/home/addImageSection.dart';
import 'package:fetch_images_from_firebase/views/home/home_app_bar.dart';
import 'package:fetch_images_from_firebase/views/home/list_image.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            HomeAppBar(),
            AddImagesSection(),
            ListImage(),
          ],
        ),
      )
    );
  }
}
