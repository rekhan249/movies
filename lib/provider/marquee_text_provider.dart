import 'dart:async';

import 'package:flutter/material.dart';

class MarqueeTextProvider with ChangeNotifier {
  bool _isForward = true;
  Timer? _timer;

  get isForward => _isForward;
  get timer => _timer;

  void timeStart() {
    const duration = Duration(seconds: 5);
    _timer = Timer.periodic(duration, (timer) {
      _isForward = !_isForward;
    });
    notifyListeners();
  }
}
