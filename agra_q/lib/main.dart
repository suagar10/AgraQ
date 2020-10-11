import 'dart:async';
import 'dart:io';
import 'file:///C:/Users/saksh/AndroidStudioProjects/agra_q/lib/farm/TakePictureScreen.dart';
import 'file:///C:/Users/saksh/AndroidStudioProjects/agra_q/lib/farm/farmer.dart';
import 'package:agra_q/Shop/retailer.dart';
import 'package:agra_q/User/info.dart';
import 'package:agra_q/farm/crop.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:agra_q/User/QRscanner.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: SplashScreen()/*TakePictureScreen(
        // Pass the appropriate camera to the TakePictureScreen widget.
        camera: firstCamera,
      )*/,
    ),
  );
}

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

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
            image: AssetImage("images/home.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(w/2,h/3+10,0,0),
                  child: RaisedButton(
                    color: Color(0xffffffff) ,
                    child: Text("FARMER",style: TextStyle(color: Color(0xff553011), fontSize: 20), ),
                  onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Crop()),
                  );},
              ),
                ),
            Padding(
              padding: EdgeInsets.fromLTRB(w/2,h/6,0,0),
              child: RaisedButton(
                color: Color(0xffffffff) ,
                child: Text("RETAILER",style: TextStyle(color: Color(0xff553011), fontSize: 20), ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(w/2,h/6,0,0),
              child: RaisedButton(
                color: Color(0xffffffff) ,
                child: Text("CUSTOMER",style: TextStyle(color: Color(0xff553011), fontSize: 20), ),
                onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => qrscanner()),
                );},
              ),
            ),

          ],
        ) /* add child content here */,
      ),
    );
  }
}

// A screen that allows users to take a picture using a given camera.
