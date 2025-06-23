import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_simple/constants/route_paths.dart';

class St_easy_quake3 extends StatelessWidget {
  const St_easy_quake3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('家の中の安全')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '【教科書：簡単③ 家の中の安全】',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              '・ガラスの近くから離れる\n'
              '地震の揺れで窓やガラスが割れると、破片が飛び散りとても危険です。'
              'すぐにガラスから離れて頭を守りましょう。',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              '・家具の近くには行かない\n'
              '大きなタンスやテレビ、棚などが倒れてくることがあります。'
              'ふだんから倒れないように固定しておくことも大切です。',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              '・火の元に気をつける\n'
              '揺れがおさまったら、すぐに火を消すようにしましょう。'
              'ガスを使っていた場合は元栓を閉めましょう。',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () => context.go(RoutePaths.st_easy_quake4),
                child: const Text('次へ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}