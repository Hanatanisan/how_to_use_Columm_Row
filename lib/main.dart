import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(   //デバイス内の文字などに被らないところに置く
          child: Column(  //縦並び Row:横並び
            mainAxisAlignment: MainAxisAlignment.end,  //end:下に配置 start,center,spaceBetween,,,　
            children: <Widget>[                 //ColumのmainAxis:縦方向　crossAxixs:横方向
              Container(  //四角い箱             //RowのmainAxis:横方向 crossAxis:縦方向
                height: 100, //高さ
                width: 100,  //幅
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(  //間隔
                height: 20.0,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Text('Container 2'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
                child: Text('Container 3'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
