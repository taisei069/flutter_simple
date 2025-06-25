import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//画面B

class PageB extends StatelessWidget {
  const PageB({super.key});

  //進むボタンを押したとき
  push(BuildContext context){
    //画面Cへ進む
    context.push('/c');
  }

  //戻るボタンを押したとき
  back(BuildContext context){
    //前の画面に戻る
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    //画面上に表示するバー
    final appBer = AppBar(
      backgroundColor: Colors.greenAccent,
      title: const Text('内容選択'),
      automaticallyImplyLeading: false,
    );

    //進むボタン
    final goButton = ElevatedButton(
        onPressed: () => push(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 80)
          ),
        child: const Text(
          "学習",
          style: TextStyle(fontSize: 40, color: Colors.white,),
          ),
    );

    //ダミーボタン
    final dummyButton = ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 80)
          ),
        child: const Text(
          "問題",
          style: TextStyle(fontSize: 40, color: Colors.white),
          ),
    );

    //戻るボタン
    final backButton = Positioned(
      top: 15,
      left: 15,
      child: ElevatedButton(
        onPressed: () => back(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orangeAccent,
          minimumSize: const Size(40, 20)
        ),
        child: const Text("< 戻る"),
      ),
    );

    return Scaffold(
      appBar: appBer,
        body: Stack(
          //自由な位置にボタンを置く
          children: [
            Center(
              //Colimnをセンターにする
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  goButton,
                  dummyButton,
                ],
              ),
            ),
            backButton,
          ],
        ),
    );
  }
}