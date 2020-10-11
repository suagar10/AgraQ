import 'package:agra_q/User/info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class qrscanner extends StatefulWidget {
  @override
  _qrscannerState createState() => _qrscannerState();
}

class _qrscannerState extends State<qrscanner> {
  String scanResult = '';
  Future scanQRCode() async {
    String cameraScanResult = await scanner.scan();
    setState(() {
      scanResult = cameraScanResult;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Info(generated_msg: scanResult,)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scan Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            scanResult == ''
                ? Text('Scaning...')
                : Text('Done!'),
            SizedBox(height: 20),
            RaisedButton(

              child: Text(
                'Click To Scan',
                 style: TextStyle(color: Color(0xff553011), fontSize: 20),),
                 color: Color(0xffffe70f),
              onPressed: scanQRCode,
            )
          ],
        ),
      ),
    );
  }
}
