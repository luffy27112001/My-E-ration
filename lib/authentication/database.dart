import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loginapp/models/luffy.dart';
import 'package:loginapp/models/user.dart';
class DatabaseService {
  final String uid;

  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference luffyCollection = Firestore.instance.collection(
      'luffys');

  Future<void> updateUserData(String aadhaar, String pan, String phone) async {
    return await luffyCollection.document(uid).setData({
      'Aadhaar': aadhaar,
      'PAN': pan,
      'phone': phone,
    });
  }

  List<Luffy> _luffyListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      //print(doc.data);
      return Luffy(
          aadhaar: doc.data['Aadhaar'] ?? 'Empty',
          pan: doc.data['PAN'] ?? '0',
          phone: doc.data['phone'] ?? '0'
      );
    }).toList();
  }

  Stream<List<Luffy>> get luffys {
    return luffyCollection.snapshots()
        .map(_luffyListFromSnapshot);
  }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
        uid: uid,
        aadhaar: snapshot.data['aadhaar'],
        pan: snapshot.data['pan'],
        phone: snapshot.data['phone']
    );
  }
  Stream<UserData> get userData {
    return luffyCollection.document(uid).snapshots()
        .map(_userDataFromSnapshot);
  }

}