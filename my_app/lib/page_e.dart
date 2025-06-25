import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//画面E

class PageE extends StatelessWidget {
  const PageE({super.key});

  //戻るボタンを押したとき
  push(BuildContext context){
    //画面Fに進む
    context.push('/f');
  }

  @override
  Widget build(BuildContext context) {
    //画面上に表示するバー
    final appBer = AppBar(
      backgroundColor: Colors.greenAccent,
      title: const Text('Unit3'),
      automaticallyImplyLeading: false,
    );

    //進むボタン
    final goButton = Positioned(
      bottom: 15,
      right: 15,
      child: Container(
        margin: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () => push(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orangeAccent,
            minimumSize: const Size(40, 20)
          ),
          child: const Text("次へ >"),
        ),
      ),
    );

    return Scaffold(
      appBar: appBer,
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        'images/si.png',
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            goButton,
          ],
        ),
    );
  }
}