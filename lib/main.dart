import 'package:flutter/material.dart';
import 'package:teleclone/pages/ChargeForOthers.dart';
import 'package:teleclone/pages/CheckBalance.dart';
import 'package:teleclone/pages/Home.dart';
import 'package:teleclone/pages/Charge.dart';
import 'package:teleclone/pages/CallMeBack.dart';
import 'package:teleclone/pages/startpage.dart';
import 'package:teleclone/service/splashscreen.dart';
import 'package:teleclone/pages/Packages/package.dart';
import 'package:teleclone/pages/Packages/callDaily.dart';
import 'package:teleclone/pages/Packages/callMonthly.dart';
import 'package:teleclone/pages/Packages/callNight.dart';
import 'package:teleclone/pages/Packages/callWeekly.dart';
import 'package:teleclone/pages/Packages/internetDaily.dart';
import 'package:teleclone/pages/Packages/internetMonthly.dart';
import 'package:teleclone/pages/Packages/internetWeekend.dart';
import 'package:teleclone/pages/Packages/internetNight.dart';
import 'package:teleclone/pages/Packages/internetWeekly.dart';
import 'package:teleclone/pages/Packages/smsDaily.dart';
import 'package:teleclone/pages/Packages/smsMonthly.dart';
import 'package:teleclone/pages/Packages/smsWeekly.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/splashscreen',

  routes:{
    '/Home':(context)=>Home(),
    '/Charge':(context)=>Charge(),
    '/CheckBalance':(context)=>CheckBalance(),
    '/ChargeForOthers':(context)=>ChargeForOthers(),
    '/CallMeBack':(context)=>CallMeBack(),
    '/startpage':(context)=>startpage(),
    '/splashscreen':(context)=>splashscreen(),
    '/Package':(context)=>package(),
    '/CallD':(context)=>callDaily(),
    '/CallN':(context)=>callNight(),
    '/CallM':(context)=>callMonthly(),
    '/CallW':(context)=>callWeekly(),
    '/IntD':(context)=>internetDaily(),
    '/IntN':(context)=>internetNight(),
    '/IntW':(context)=>inetrnetWeekly(),
    '/IntWE':(context)=>inetrnetWeekend(),
    '/IntM':(context)=>internetMonthly(),
    '/SmsD':(context)=>smsDaily(),
    '/SmsW':(context)=>smsWeekly(),
    '/SmsM':(context)=>smsMonthly(),
  }
));
