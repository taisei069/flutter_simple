import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_simple/constants/route_paths.dart';

class St_easy_quake2 extends StatelessWidget {
  const St_easy_quake2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('外にいるときの注意')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '【教科書：簡単② 外にいるときの注意】',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              '① 電柱やブロック塀に近づかない：\n倒れてきたり、壊れて破片が飛ぶ危険があります。できるだけ広い場所や安全な建物の近くへ移動しましょう。',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              '② 看板やガラスの下に立たない：\n落下物や割れたガラスに当たると大けがの原因になります。上から物が落ちてこない場所を探しましょう。',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () => context.go(RoutePaths.st_easy_quake3),
                child: const Text('次へ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}