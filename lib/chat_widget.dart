import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  Widget build(BuildContext context) {
    QuerySnapshot querySnapshot;
    return FutureBuilder<String> {
      future: FirebaseFirestore.instance.collections('users').get().then((result) {
        querySnapshot = result;
      });
      builder: (BuildContext context AsyncSnapshot<String> snapshot) {
        return Center()
      }
    }
  }
}
