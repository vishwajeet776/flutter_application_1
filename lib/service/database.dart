import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethod{
  Future addEmployedetail(Map<String,dynamic>employeinfoMap,String id)async{
    return await FirebaseFirestore.instance.collection("Employe")
    .doc(id)
    .set(employeinfoMap);
  }
}