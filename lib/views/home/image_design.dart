import 'package:fetch_images_from_firebase/model/image_model.dart';
import 'package:flutter/material.dart';

class ImageDesign extends StatelessWidget {
  final Image1? image1;
  const ImageDesign({this.image1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.35,
          margin: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            color: Colors.grey,
            image: DecorationImage(
              image: NetworkImage(
                image1!.imageUrlImg!//afficher la photo
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column( //ordonner les different affichage en column
                children: [
                  Text(
                    image1!.imageName!,//afficher le nom de l'image
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(image1!.imageDescription!,//afficher la discription de l'image
                    style: const TextStyle(fontWeight: FontWeight.normal),
                  ),
                ],
              ), 
              Text(image1!.imagePrice!,), // afficher le prix de l'image
            ],
          ),
        )
      ],
    );
  }
}
