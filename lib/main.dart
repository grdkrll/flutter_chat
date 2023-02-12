import 'package:flutter/material.dart';
import 'package:school_project/chat_widget.dart';
import 'package:school_project/login_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainStatefulWidget());
  }
}

class MainStatefulWidget extends StatefulWidget {
  const MainStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MainStatefulWidget> createState() => _MainStatefulWidgetState();
}

class _MainStatefulWidgetState extends State<MainStatefulWidget> {
  bool _authed = false;
  refresh() {
    setState(() {
      _authed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        _authed = true;
      }
    });
    if (_authed) {
      return const ChatWidget();
    } else {
      return LoginWidget(notifyParent: refresh);
    }
  }
}
