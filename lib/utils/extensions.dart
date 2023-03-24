import 'package:flutter/material.dart';

extension ContextUtils on BuildContext {
  Size screenConstraint() {
    return MediaQuery.of(this).size;
  }
}
