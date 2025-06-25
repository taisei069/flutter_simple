import 'package:flutter/material.dart';
import 'package:sample_m/page_a.dart';
import 'package:sample_m/page_b.dart';
import 'package:sample_m/page_c.dart';
import 'package:sample_m/page_d.dart';
import 'package:sample_m/page_e.dart';
import 'package:sample_m/page_f.dart';
import 'package:go_router/go_router.dart';


main(){

  final app = App();
  runApp(app);

}
  
  //アプリ全体
  class App extends StatelessWidget{
    App({super.key});

    final router = GoRouter(
      //パス(アプリが起動したとき)
      initialLocation: '/a',
      //パスと画面の組み合わせ
      routes: [
        //page_a
        GoRoute(
          path: '/a',
          builder: (context, state) => const PageA(),
        ),
        //page_b
        GoRoute(
          path: '/b',
          builder: (context, state) => const PageB(),
        ),
        //page_c
        GoRoute(
          path: '/c',
          builder: (context, state) => const PageC(),
        ),
        //page_d
        GoRoute(
          path: '/d',
          builder: (context, state) => const PageD(),
        ),
        //page_e
        GoRoute(
          path: '/e',
          builder: (context, state) => const PageE(),
        ),
        //page_f
        GoRoute(
          path: '/f',
          builder: (context, state) => const PageF(),
        ),
      ]
    );
    
    @override
    Widget build(BuildContext context){
      return MaterialApp.router(
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
      );
    }
  }