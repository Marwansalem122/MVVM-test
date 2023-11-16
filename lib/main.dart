import 'package:flutter/material.dart';
import 'package:myreview/views/screens/homepage.dart';
import 'package:myreview/views/screens/posts/postspage.dart';
// import 'package:myreview/Widgets/alert_dialog.dart';

void main()=>runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:PostsPage() //HomePage(),
    );
  }
}