import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/userDetails.dart';
import '../../utilities/logger.dart';

Future<UserDetails?> detailsFetch(String uid) async {
  try {
    DocumentSnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('data').doc(uid).get();
    return UserDetails.fromFirestore(querySnapshot);
  } catch (e) {
    CustomLogger.error(e);
  }
}
