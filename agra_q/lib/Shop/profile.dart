import 'package:agra_q/User/payment.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {


  @override
  void initState() {
    super.initState();

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
            image: AssetImage("images/consumer1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, h / 5, 20, 0),
          child: Column(children: [
            Container(
                height: h / 15,
                width: 2 * w / 3 + 10,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff828282), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding:EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text("Crop Name:",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffffe70f),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Text(
                        "Apple",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff553011),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 50,
            ),
            Container(
                height: h / 15,
                width: 2 * w / 3 + 10,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff828282), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding:EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text("Name:",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffffe70f),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Text(
                        "Retailer",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff553011),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 50,
            ),
            Container(
                height: h / 15,
                width: 2 * w / 3 + 10,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff828282), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding:EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text("Contact",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffffe70f),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Text(
                        "1234567890",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff553011),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 50,
            ),
            Container(
                height: h / 15,
                width: 2 * w / 3 + 10,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff828282), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding:EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text("Crop Quality:",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffffe70f),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Text(
                        "Healthy",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff553011),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 50,
            ),
            Container(
                height: h / 15,
                width: 2 * w / 3 + 10,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff828282), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding:EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text("Price:",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffffe70f),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Text(
                        "40"+"/Kg",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff553011),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 50,
            ),

          ]),
        ),
      ),
    );
  }
}
