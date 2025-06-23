import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_simple/constants/route_paths.dart';

class StProblemEasyQuake2 extends StatelessWidget {
  const StProblemEasyQuake2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checking_Answer_easy_quake')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go(RoutePaths.easy_quake),
          child: const Text('Finish'),
        ),
      ),
    );
  }
}