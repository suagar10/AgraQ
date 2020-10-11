import 'package:agra_q/Shop/transaction.dart';
import 'package:agra_q/farm/farmer_profile.dart';
import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset:false,
        body: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("images/retailer1.png"),
    fit: BoxFit.fill,
    ),
    ),
    child: Padding(
    padding: EdgeInsets.fromLTRB(20, h /3-40, 20, 0),
    child: Column(
    children: [
    Container(
    height: h / 15,
    width: 2 * w / 3+10,
    decoration: BoxDecoration(
    border: Border.all(color: Color(0xffc4c4c4),width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10))
    ),
    child: TextField(
    decoration: InputDecoration(
    hintText: "Full Name",
    hintStyle: TextStyle(color: Color(0xff828282),fontSize: 18,fontWeight: FontWeight.normal),
    focusedBorder: new OutlineInputBorder(
    borderSide: new BorderSide(color: Color(0xffffe70f),width:4.0),
    borderRadius: BorderRadius.circular(10.0)
    ),
    ),
    style: TextStyle(fontSize: 20, color: Color(0xff553011),fontWeight: FontWeight.bold),
    textAlign: TextAlign.left,
    )),
    SizedBox(height: 25,),
    Container(
    height: h / 15,
    width: 2 * w / 3+10,
    decoration: BoxDecoration(
    border: Border.all(color: Color(0xffc4c4c4),width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10))
    ),
    child: TextField(
    decoration: InputDecoration(
    hintText: "Contact",
    hintStyle: TextStyle(color: Color(0xff828282),fontSize: 18,fontWeight: FontWeight.normal),
    focusedBorder: new OutlineInputBorder(
    borderSide: new BorderSide(color: Color(0xffffe70f),width:4.0),
    borderRadius: BorderRadius.circular(10.0)
    ),
    ),
    style: TextStyle(fontSize: 20, color: Color(0xff553011),fontWeight: FontWeight.normal),
    textAlign: TextAlign.left,
    )),
    SizedBox(height: 25,),
    Container(
    height: h / 15,
    width: 2 * w / 3+10,
    decoration: BoxDecoration(
    border: Border.all(color: Color(0xffc4c4c4),width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10))
    ),
    child: TextField(
    decoration: InputDecoration(
    hintText: "Crop Name",
    hintStyle: TextStyle(color: Color(0xff828282),fontSize: 18,fontWeight: FontWeight.normal),
    focusedBorder: new OutlineInputBorder(
    borderSide: new BorderSide(color: Color(0xffffe70f),width:4.0),
    borderRadius: BorderRadius.circular(10.0)
    ),
    ),
    style: TextStyle(fontSize: 20, color: Color(0xff553011),fontWeight: FontWeight.bold),
    textAlign: TextAlign.left,
    )),
    SizedBox(height: 25,),
    Container(
    height: h / 15,
    width: 2 * w / 3+10,
    decoration: BoxDecoration(
    border: Border.all(color: Color(0xffc4c4c4),width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10))
    ),
    child: TextField(

    decoration: InputDecoration(
    hintText: "Quantity",
    hintStyle: TextStyle(color: Color(0xff828282),fontSize: 18,fontWeight: FontWeight.normal),
    focusedBorder: new OutlineInputBorder(
    borderSide: new BorderSide(color: Color(0xffffe70f),width:4.0),
    borderRadius: BorderRadius.circular(10.0)
    ),
    ),
    style: TextStyle(fontSize: 20, color: Color(0xff553011),fontWeight: FontWeight.bold),
    textAlign: TextAlign.left,
    )),
    SizedBox(height: 25,),
      Center(
        child: RaisedButton(
          child:Text("SUBMIT",style: TextStyle(color: Color(0xff553011), fontSize: 20), ),
          color: Color(0xffffe70f),
          onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>Transaction()),
          );},
        ),
      ),
      SizedBox(height: 25,),
      Center(
        child: RaisedButton(
          child:Text("Check Farmer",style: TextStyle(color: Color(0xff553011), fontSize: 20), ),
          color: Color(0xffffe70f),
          onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>Fprofile()),
          );},
        ),
      ),
    ]
    ),
    ),
    ),
    );
  }
}
