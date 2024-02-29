// import 'package:cloud_firestore/cloud_firestore.dart';

// class DatabaseService {
//   final FirebaseFirestore _db = FirebaseFirestore.instance;
//   final String uid;
//   CollectionReference ref;

//   DatabaseService(this.uid) {
//     ref = _db.collection(uid);
//   }

//   Future<QuerySnapshot> getDataCollection() {
//     return ref.get();
//   }

//   Stream<QuerySnapshot> streamDataCollection() {
//     return ref.snapshots();
//   }

//   Future<DocumentSnapshot> getDocumentByid(String id) {
//     return ref.doc(id).get();
//   }

//   Future<void> removeDocument(String id) {
//     return ref.doc(id).delete();
//   }

//   Future<DocumentReference> addDocument(Map data, String id) {
//     return ref.add(data);
//   }

//   Future<void> updateDocument(Map data, String id) {
//     return ref.doc(id).update(data);
//   }
// }