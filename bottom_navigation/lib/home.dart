import 'package:flutter/material.dart';

Widget HomePage() {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
          width: 4,
        ),
      ),
      child: Text("Home"),
    ),
  );
}
