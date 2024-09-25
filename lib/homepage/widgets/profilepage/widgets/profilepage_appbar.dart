import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  const icon = Icons.exit_to_app;
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: const BackButton(color: Colors.black),
    elevation: 0,
    actions: [
      IconButton(
        color: Colors.black,
        onPressed: () {
          Navigator.pop(context);
          FirebaseAuth.instance.signOut();
        },
        icon: const Icon(icon),
      )
    ],
  );
}
