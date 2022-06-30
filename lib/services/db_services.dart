import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fetch_images_from_firebase/model/image_model.dart';

class DatabaseService {
  String? imageID;
  DatabaseService({this.imageID});
  // Déclaraction et Initialisation
  final CollectionReference _images = FirebaseFirestore.instance.collection('images');


  // Récuperation de toutes les voitures en temps réel
  Stream<List<Image1>> get images {
    Query queryImages = _images.orderBy('imageTimestamp', descending: true);
    return queryImages.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Image1(
          imageID: doc.id,
          imageDescription: doc.get('imageDescription'),
          imageName: doc.get('imageName'),
          imageUrlImg: doc.get('imageUrlImg'),
          imagePrice: doc.get('imagePrice'),
          imageFavoriteCount: doc.get('imageFavoriteCount'),
          imageTimestamp: doc.get('imageTimestamp'),
        );
      }).toList();
    });
  }

}
