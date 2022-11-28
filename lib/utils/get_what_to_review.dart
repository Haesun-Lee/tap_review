import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetWhatToReview extends StatelessWidget {
  final String documentId;
  final review = FirebaseFirestore.instance.collection('cart');
  GetWhatToReview({required this.documentId});

  @override
  Widget build(BuildContext context) {
    CollectionReference name = FirebaseFirestore.instance.collection('review');

    return FutureBuilder<DocumentSnapshot>(
        future: review.doc(documentId).get(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Text('what to review : ${data['name']}');
          }
          return Text('loading..');
        }));
  }
}
