import 'package:coolapp/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';
import 'package:supabase/supabase.dart';

void main() {
  const supabaseUrl = 'https://jnnrvjtllwehtrsusgae.supabase.co';
  const supabaseKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpubnJ2anRsbHdlaHRyc3VzZ2FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjMzODc3NDksImV4cCI6MTk3ODk2Mzc0OX0.fa4uiZrt98NSJZiPsXXpJ5GC8nGoVxi3gT8lbi2m7qo';
  final supabaseClient = SupabaseClient(supabaseUrl, supabaseKey);

  Injector.appInstance.registerSingleton<SupabaseClient>(() => supabaseClient);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}
