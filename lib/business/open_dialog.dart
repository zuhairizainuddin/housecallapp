import 'package:flutter/material.dart';

void openDialog(BuildContext context, Widget dialogPage) {
  showDialog(
    context: context,
    builder: ((context) => dialogPage),
  );
}
