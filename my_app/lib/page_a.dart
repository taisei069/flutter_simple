import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//画面A

class PageA extends StatelessWidget {
  const PageA({super.key});

  //進むボタンを押したとき
  push(BuildContext context){
    //画面Bへ進む
    context.push('/b');
  }

  @override
  Widget build(BuildContext context) {
    //画面上に表示するバー
    final appBer = AppBar(
      backgroundColor: Colors.greenAccent,
      title: const Text('レベル選択'),
    );

    //進むボタン
    final pushButton = ElevatedButton(
      onPressed: () => push(context),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 80)
        ),
      child: const Text(
        "初級",
        style: TextStyle(fontSize: 40, color: Colors.white),
        ),
    );

    //ダミーのボタン
    final dummyButton1 = ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 80)
        ),
      child: const Text(
        "中級",
        style: TextStyle(fontSize: 40, color: Colors.white),
        ),
    );

    final dummyButton2 = ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 80)
        ),
      child: const Text(
        "上級",
        style: TextStyle(fontSize: 40, color: Colors.white),
        ),
    );

    return Scaffold(
      appBar: appBer,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              pushButton,
              dummyButton1,
              dummyButton2,
            ],
          ),
        ),
    );
  }
}