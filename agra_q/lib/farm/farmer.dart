import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
class farmer extends StatefulWidget {
  @override
  _farmerState createState() => _farmerState();
}

class _farmerState extends State<farmer> {
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          // ignore: deprecated_member_use
          stream: Firestore.instance.collection('Farmer').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return new Text("Loading");
            } else
              return ListView(
                children: makeListWiget(snapshot),
              );
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // ignore: deprecated_member_use
          Firestore.instance.collection("Farmer").document().setData({'name' : "farmer1"});
        },
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
    List<Widget> makeListWiget(AsyncSnapshot snapshot) {
    return snapshot.data.documents.map<Widget>((document) {
    return ListTile(
    title: Text(document.get('name')),
    );
    }).toList();
    }
  }

