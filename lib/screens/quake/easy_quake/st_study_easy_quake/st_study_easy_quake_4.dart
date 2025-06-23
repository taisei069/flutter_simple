import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_simple/constants/route_paths.dart';

class St_easy_quake4 extends StatelessWidget {
  const St_easy_quake4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('避難の準備と行動')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '【教科書：簡単④ 避難の準備と行動】',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              '・非常用袋を用意しよう\n'
              '非常用袋には、水、食べ物、懐中電灯、ラジオ、電池、タオル、マスクなどを入れておきます。'
              '最低3日分の生活ができるように備えておきましょう。',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              '・靴を履いて避難する\n'
              '地震の後はガラスの破片などが落ちていることがあります。'
              'サンダルではなく、なるべく運動靴などをはいて避難しましょう。',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            const Text(
              '・家族で連絡方法や集合場所を決めておく\n'
              '地震が起きたあとに会えないこともあるため、'
              '避難場所や連絡手段（例：災害伝言ダイヤル）を決めておきましょう。',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () => context.go(RoutePaths.st_easy_quake5),
                child: const Text('次へ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}