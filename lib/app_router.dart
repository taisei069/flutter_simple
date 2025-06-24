//import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_simple/screens/language/select_language.dart';
import 'package:flutter_simple/screens/language/modify_language.dart';
import 'package:flutter_simple/screens/login/rogin.dart';
import 'package:flutter_simple/screens/mainpage/select_detail.dart';
import 'package:flutter_simple/screens/mainpage/select_genre.dart';
import 'package:flutter_simple/screens/quake/select_difficulty_quake.dart';
import 'package:flutter_simple/screens/quake/easy_quake/easy_quake.dart';
import 'package:flutter_simple/screens/quake/easy_quake/st_study_easy_quake/st_study_easy_quake_1.dart';
import 'package:flutter_simple/screens/quake/easy_quake/st_study_easy_quake/st_study_easy_quake_2.dart';
import 'package:flutter_simple/screens/quake/easy_quake/st_study_easy_quake/st_study_easy_quake_3.dart';
import 'package:flutter_simple/screens/quake/easy_quake/st_problem_easy_quake/st_problem_easy_quake_1.dart';
import 'package:flutter_simple/screens/quake/easy_quake/st_problem_easy_quake/st_problem_easy_quake_2.dart';
import 'package:flutter_simple/screens/quake/normal_quake/normal_quake.dart';
import 'package:flutter_simple/screens/quake/normal_quake/st_study_normal_quake/st_study_normal_quake_1.dart';
import 'package:flutter_simple/screens/quake/normal_quake/st_study_normal_quake/st_study_normal_quake_2.dart';
import 'package:flutter_simple/screens/quake/normal_quake/st_study_normal_quake/st_study_normal_quake_3.dart';
//ここからroginの画面遷移
import 'auth_gate.dart';
import 'login_page.dart';
import 'student_home_page.dart';
import 'teacher_home_page.dart';
import 'detail_page.dart';
import 'auth_service.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/language',
  routes: [
    GoRoute(path: '/language', builder: (context, state) => Select_language()),
    GoRoute(path: '/mode_language', builder: (context, state) => Mode_language()),
    GoRoute(path: '/rogin', builder: (context, state) => Rogin()),
    GoRoute(path: '/genre', builder: (context, state) => Genre()),
    GoRoute(path: '/detail', builder: (context, state) => Detail()),
    GoRoute(path: '/diffculty_quake', builder: (context, state) => Diffculty_quake()),
    GoRoute(path: '/easy_quake', builder: (context, state) => Easy_quake()),
    GoRoute(path: '/st_easy_quake1', builder: (context, state) => St_easy_quake1()),
    GoRoute(path: '/st_easy_quake2', builder: (context, state) => St_easy_quake2()),
    GoRoute(path: '/st_easy_quake3', builder: (context, state) => St_easy_quake3()),
    GoRoute(path: '/st_pro_easy_quake1', builder: (context, state) => StProblemEasyQuake1()),
    GoRoute(path: '/st_pro_easy_quake2', builder: (context, state) => StProblemEasyQuake2()),
    GoRoute(path: '/normal_quake', builder: (context, state) => Normal_quake()),
    GoRoute(path: '/st_normal_quake1', builder: (context, state) => St_normal_quake1()),
    GoRoute(path: '/st_normal_quake2', builder: (context, state) => St_normal_quake2()),
    GoRoute(path: '/st_normal_quake3', builder: (context, state) => St_normal_quake3()),
    //ログイン画面へのパス
    GoRoute(path: '/rogin_1',builder: (context, state) => const AuthGate(),),
    /*ここは↑でログイン画面に遷移するので不要
    GoRoute(path: '/rogin_2',builder: (context, state) => const LoginPage(),),
    GoRoute(path: '/student',builder: (context, state) => const StudentHomePage(),),
    GoRoute(path: '/teacher',builder: (context, state) => const TeacherHomePage(),),*/
  ],
);