import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class FirebaseServices {
  static FirebaseDatabase database = FirebaseDatabase.instance;

  static Future<void> addData(String key, dynamic value) async {
    DatabaseReference reference = database.ref(key);
    String? key1 = reference.push().key;
    await reference.child(key1!).set(value);
  }

  static Future<List<Map>> selectData(String key) async {
    DatabaseReference reference = database.ref(key);
    List<Map> allData = [];
    await reference.once().then(
          (value) {
        Map data = value.snapshot.value as Map;
        data.forEach((key, value) {
          value['id'] = key;
          allData.add(value);
        });
      },
    );
    return allData;
  }

  static Future<void> update({
    dynamic storeKey,
    TextEditingController? name,
    TextEditingController? age,
  }) async {
    DatabaseReference ref = database.ref("Person").child(storeKey);
    await
    ref.update({
      "name": name?.text,
      "age": age?.text,
    }).whenComplete(
          () {
        name?.clear();
        age?.clear();
      },
    );
  }
}
