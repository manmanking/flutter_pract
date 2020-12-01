import 'package:flutter/material.dart';
import "package:flutter_app03/function/SearchHome/SearchHome.dart";
import 'package:flutter_app03/function/NewsPage/NewsDetail.dart';
import 'package:flutter_app03/function/Tabbars/CustomTabBars.dart';
import 'package:flutter_app03/function/MazaginePage/MagazineDetail.dart';
import 'package:flutter_app03/function/MinePage/LoginPage.dart';
import 'package:flutter_app03/function/MinePage/RegisterFirstPage.dart';
import 'package:flutter_app03/function/MinePage/RegisterSecondPage.dart';
import 'package:flutter_app03/function/HomePage/TopTabBarPage.dart';
import 'package:flutter_app03/function/HomePage/TabBarControllerPage.dart';
import 'package:flutter_app03/function/HomePage/ButtonDemoPage.dart';
import 'package:flutter_app03/function/HomePage/TextFieldDemoPage.dart';
import 'package:flutter_app03/function/HomePage/AlertDialog.dart';
import 'package:flutter_app03/function/VideoHome/BookAudioVideoPage.dart';

final routes = {
  "/": (context) => CustomTabBars(),
  "/search": (context, {arguments}) => SearchHome(arguments: arguments),
  "/newsDetail": (context, {arguments}) => NewsDetail(arguments: arguments),
  "/magazineDetail": (context, {arguments}) =>
      MagazineDetail(arguments: arguments),
  "/LoginPage": (context) => LoginPage(),
  "/RegisterFirstPage": (context) => RegisterFirstPage(),
  "/RegisterSecondPage": (context) => RegisterSecondPage(),
  "/TopTabBarPage": (context) => TopTabBarPage(),
  "/TabBarControllerPage": (context) => TabBarControllerPage(),
  "/ButtonDemoPage": (context) => ButtonDemoPage(),
  "/TextFieldDemoPage": (context) => TextFieldDemoPage(),
  "/AlertDialogDemoPage": (context) => AlertDialogDemoPage(),
  "/BookAudioVideoPage": (context) => BookAudioVideoPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
