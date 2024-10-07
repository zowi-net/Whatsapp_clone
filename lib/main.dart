import 'package:flutter/material.dart';
import 'package:whatapp_clone/message.dart';
import 'package:whatapp_clone/message_click.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController userSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      initialRoute: "/",
      routes: {
        "/": (context) => const MessageApp(),
        "/MessageClick": (context) => const MessageClick(),
      },
      // home: MessageApp(),
    );
  }
}