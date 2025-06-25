import 'package:flutter/material.dart';
import 'package:sample_m/page_a.dart';
import 'package:sample_m/page_b.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_m/stepview.dart';


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
        GoRoute(
          path: '/step',
          builder: (context, state) => const PageStep(),
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