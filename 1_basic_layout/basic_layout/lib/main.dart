import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter'),
          ),
          body: BusinessCardWidget()

//          Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            crossAxisAlignment: CrossAxisAlignment.baseline,
//            textBaseline: TextBaseline.alphabetic,
//            children: <Widget>[
////              Flexible(
////                flex: 1,
////                fit: FlexFit.tight,
////                child: BlueBox(),
////              ),
////              Flexible(
////                flex: 1,
////                fit: FlexFit.tight,
////                child: BlueBox(),
////              ),
////              Flexible(
////                flex: 1,
////                fit: FlexFit.tight,
////                child: BlueBox(),
////      ),
//              BlueBox(),
//              SizedBox(
//                width: 100,
//              ),
//              Spacer(),
//              BlueBox(),
//            ],
//          )
          ),
    );
  }
}

class BusinessCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.account_circle,
                size: 50,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Flutter',
                  style: Theme.of(context).textTheme.headline,
                ),
                Text('Experienced App Developer')
              ],
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('123 MAIN STREET'),
            Text('12345678'),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.phone_android),
            Icon(Icons.phone_iphone),
            Icon(Icons.accessibility),
            Icon(Icons.timer),
          ],
        ),
      ],
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class BiggerBlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
