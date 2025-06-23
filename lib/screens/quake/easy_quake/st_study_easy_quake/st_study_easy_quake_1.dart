import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_simple/constants/route_paths.dart';

class St_easy_quake1 extends StatelessWidget {
  const St_easy_quake1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('地震が起きたらどうする？')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '【教科書：簡単① 地震が起きたらどうする？】',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              '① まず頭を守る：\n落ちてくる物から身を守るため、カバンやクッションなどで頭を覆いましょう。',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              '② 机の下に隠れる：\n揺れが収まるまで、安定した机の下に潜って頭を守りましょう。机の脚をしっかりつかんで揺れに備えることも大切です。',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () => context.go(RoutePaths.st_easy_quake2),
                child: const Text('次へ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}