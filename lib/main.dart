import 'package:flutter/material.dart';
import 'package:nit_andhra/pages/home.dart';
import 'package:nit_andhra/pages/authors.dart';
import 'package:nit_andhra/pages/clg.dart';
import 'package:nit_andhra/pages/loding.dart';

void main() {
  runApp(MaterialApp(
    title: 'NIT ANDHRA',
    initialRoute: '/',
    routes: {
      '/': (context) => loading(),
      '/home': (context) => Home(),
      '/auth': (context) => Authors(),
      '/clg': (context) => college_page(),
      
    },
  ));
}







