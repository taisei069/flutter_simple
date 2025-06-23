import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_simple/constants/route_paths.dart';

class St_easy_quake5 extends StatelessWidget {
  const St_easy_quake5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('easy_quake_No5')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '【教科書：簡単⑤ 地震の後の行動】',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              '・余震に注意する\n'
              '本震のあとにも余震が続くことがあるので、安心せずに安全な場所にとどまりましょう。',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              '・SNSやラジオで正しい情報を得る\n'
              'うわさにまどわされず、NHKや自治体、気象庁などの信頼できる情報を確認しましょう。',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              '・むやみに119番などに電話しない\n'
              '電話がつながりにくくなるため、けが人など本当に必要なとき以外は控えましょう。',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              '・遊びに行かない\n'
              '余震の危険や建物の崩壊、火災の可能性があるため、安全が確認されるまで外出を控えましょう。',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () => context.go(RoutePaths.easy_quake),
                child: const Text('Finish'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}