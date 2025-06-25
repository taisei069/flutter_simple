import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//画面F

class PageF extends StatelessWidget {
  const PageF({super.key});

  //戻るボタンを押したとき
  back(BuildContext context){
    //画面Aに戻る
    context.go('/a');
  }

  @override
  Widget build(BuildContext context) {
    //画面上に表示するバー
    final appBer = AppBar(
      backgroundColor: Colors.greenAccent,
      title: const Text('Unit4'),
      automaticallyImplyLeading: false,
    );

    //戻るボタン
    final finishButton = ElevatedButton(
      onPressed: () => back(context),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orangeAccent,
        minimumSize: const Size(90, 20)
        ),
      child: const Text("学習を完了する"),
    );

    return Scaffold(
      appBar: appBer,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'images/mo.png',
                    fit: BoxFit.contain,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: finishButton,
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
    );
  }
}