import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:online_learning_app/online_learning_app.dart';

void main() {
  runApp(
    const ProviderScope(child: OnlineLearningApp()),
  );
}
