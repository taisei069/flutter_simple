import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final imageFiles = [
    'image1.png',
    'image2.png',
    'image3.png',
    'image4.png',
  ];

  final textContents = [
    'まずはカバンなどで頭を守りましょう。',
    '机の下に隠れましょう。',
    'ブロック塀やガラスの近くを避けて移動しましょう。',
    '避難所に行きましょう。',
  ];

class PageStep extends StatelessWidget {
  const PageStep({super.key});

  @override
  Widget build(BuildContext contaxt){
    return const ImageTextStepView(); //ImageTextStepViewを呼び出すだけ
  }
}



  class ImageTextStepView extends StatefulWidget{
    const ImageTextStepView({super.key});

    @override
    _ImageTextStepViewState createState() => _ImageTextStepViewState();
  }

  class _ImageTextStepViewState extends State<ImageTextStepView>{
    int _currentIndex = 0;

    //ページ移動
    void _goNext(){
      setState(() {
        if (_currentIndex < imageFiles.length - 1){
          _currentIndex++;
        }else{
          //最後のページ→前の画面に戻るなどの処理
          context.go('/a');//レベル選択に行く
        }
      });
    }

    @override
    Widget build(BuildContext context){
      return SafeArea(
        child: Column(
          children: [
            //内容部分
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textContents[_currentIndex],
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Center(
                        child: Image.asset(
                          'assets/images/${imageFiles[_currentIndex]}',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //「次へ」ボタン
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: ElevatedButton(
                onPressed: _goNext,
                child: Text(_currentIndex == imageFiles.length -1 ? '完了' : '次へ',
                ),
              ),
            ),
          ],
        ),
      );
    }
  }