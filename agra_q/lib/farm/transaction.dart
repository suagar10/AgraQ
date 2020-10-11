import 'package:agra_q/Shop/profile.dart';
import 'package:agra_q/Shop/retailer.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}
//document.get('name')
class _TransactionState extends State<Transaction> {
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }
  List<Widget> makeListWiget(AsyncSnapshot snapshot) {
    return snapshot.data.documents.map<Widget>((document) {
     return Column(

       children: [
         Container(
              height: MediaQuery.of(context).size.height / 9,
              width:  MediaQuery.of(context).size.width -30,
              decoration: BoxDecoration(
              border: Border.all(color: Color(0xffc4c4c4),width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
          children:[
              Column(
                children: [
                  SizedBox(height: 10,),
                  Icon(Icons.person, size: 30,color:Color(0xffc4c4c4) ,),
                  SizedBox(height: 10,),
                  Icon(Icons.monetization_on,size: 30,color: Color(0xffc4c4c4),)

                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  SizedBox(height: 10,),
                  Text(document.get('name'),style: TextStyle(color: Color(0xff553011),fontSize: 25,),),
                  SizedBox(height: 10,),
                  Text(document.get('quantity')+" Kg",style: TextStyle(color: Color(0xff553011),fontSize: 25,),),

                ],


              ),]),
              CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xffffe70f),
                child: IconButton(
                  iconSize: 30,
                  icon: Icon(
                    Icons.check,
                    color: Colors.black,
                  ),
                  onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Info()));},
                ),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xffffe70f),
                    child: Image.asset("images/coin.png",fit: BoxFit.cover,),

                  ),
                  SizedBox(width: 5,),
                  Text("5",style: TextStyle(color: Color(0xff553011),fontSize: 25,fontWeight: FontWeight.bold)),
                  SizedBox(width: 10,),

                ],
              )
            ],
          ),
         ),
         SizedBox (height: 20,)
       ],
     );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/farmer3.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, h / 5+20, 20, 0),
            child: StreamBuilder(
                // ignore: deprecated_member_use
                stream: Firestore.instance.collection('Farmer').snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return new Text("Loading");
                  } else
                    return ListView(
                      children: makeListWiget(snapshot),
                    );
                }),
          )),

    );

  }
}
