import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_simple/constants/route_paths.dart';

class Easy_quake extends StatelessWidget {
  const Easy_quake({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('easy_quake')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => context.go(RoutePaths.diffculty_quake), 
              child: Text('back'),
            ),
            ElevatedButton(
              // ✅ Study → 学習ページへ
              onPressed: () => context.go(RoutePaths.st_easy_quake1), 
              child: Text('Study'),
            ),
            ElevatedButton(
              // ✅ Problem → 問題ページへ
              onPressed: () => context.go(RoutePaths.st_problem_easy_quake_1), 
              child: Text('Problem'),
            ),
          ],
        )
      ),
    );
  }
}