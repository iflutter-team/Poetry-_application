import 'package:flutter/material.dart';

import '../../services/firebase_services.dart';

class FireBaseDemo extends StatefulWidget {
  const FireBaseDemo({Key? key}) : super(key: key);

  @override
  State<FireBaseDemo> createState() => _FireBaseDemoState();
}

class _FireBaseDemoState extends State<FireBaseDemo> {
  List<Map> allData = [];
  String storeKey = '';
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
              controller: name,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Age',
              ),
              controller: age,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await FirebaseServices.addData('Person', {
                  'name': name.text,
                  'age': age.text,
                }).whenComplete(
                      () {
                    name.clear();
                    age.clear();
                  },
                );
              },
              child: const Text('INSERT'),
            ),
            ElevatedButton(
              onPressed: () async {
                allData = await FirebaseServices.selectData('Person');
                setState(() {});
              },
              child: const Text('SELECT'),
            ),
            ElevatedButton(
              onPressed: () async {
                await FirebaseServices.update(storeKey: storeKey,name: name,age: age);
                allData = await FirebaseServices.selectData('Person',);
                setState(()  {
                });
              },
              child: const Text('UPDATE'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: allData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(allData[index]['name']),
                    subtitle: Text(allData[index]['age']),
                    onTap: () {
                      name.text = allData[index]['name'];
                      age.text = allData[index]['age'];
                      storeKey = allData[index]['id'];
                    },
                  );
                },),
            ),
          ],
        ),
      ),
    );
  }
}
