import 'package:flutter/material.dart';
import 'qr_page.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Payment Options',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),
        ),
      ),
      body: Container(
        padding:const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(5),
              elevation: 10,
              child: Row(
                children: const <Widget>[
                  Padding(padding:EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage('assets/visa.png'),
                      height: 75,
                      width: 75,
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text(
                    "VISA",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(5),
              elevation: 10,
              child: Row(
                children: const <Widget>[
                  Padding(padding:EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage('assets/mastercard.png'),
                      height: 75,
                      width: 75,
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text(
                    "MASTERCARD",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(5),
              elevation: 10,
              child: Row(
                children: const <Widget>[
                  Padding(padding:EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage('assets/paypal.png'),
                      height: 75,
                      width: 75,
                    ),
                  ),
                  SizedBox(width: 50,),
                  Text(
                    "PAYPAL",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const QRGenerator() ));
        },
        label: const Text(
          "NEXT",
          style: TextStyle(color: Colors.yellow),
        ),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}