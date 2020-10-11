import 'package:agra_q/main.dart';
import 'package:flutter/material.dart';
class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {

  final _controller = TextEditingController(text: "0");
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
    padding: EdgeInsets.fromLTRB(20, h /2-40, 20, 0),
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
    child: Text("Enter Quantity:",
    style: TextStyle(
    fontSize: 20,
    color: Color(0xffffe70f),
    fontWeight: FontWeight.bold),
    textAlign: TextAlign.left,),
    ),
    Padding(
    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
    child: Container(
      width: (2 * w / 3 + 10)/3,
      height:  h / 15,
      child: TextField(
        controller: _controller,
        style: TextStyle(
      fontSize: 20,
      color: Color(0xff553011),
      fontWeight: FontWeight.bold),
      textAlign: TextAlign.right,
      ),
    ),
    ),
    ],
    )),
    SizedBox(
    height: 20,
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
                  (int.parse(_controller.text)*35).toString(),
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
        height: 20,
      ),
      Center(
        child: RaisedButton(
            child: Text("Pay",style: TextStyle(color: Color(0xff553011), fontSize: 20),),
      color: Color(0xffffe70f),
      onPressed: (){Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>SplashScreen()),
      );},
    ),
        )
        ]),
    ),
    ),
    );
  }
}
