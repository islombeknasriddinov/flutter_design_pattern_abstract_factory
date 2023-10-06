import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class PlatformIndicator {
  Widget build();

  Color color();

  factory PlatformIndicator(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.iOS:
        return IosIndicator();
      case TargetPlatform.android:
      default:
        return AndroidIndicator();
    }
  }
}

class AndroidIndicator implements PlatformIndicator {
  @override
  Widget build() {
    return CircularProgressIndicator(
      color: color(),
    );
  }

  @override
  Color color() {
    return Colors.blue;
  }
}

class IosIndicator implements PlatformIndicator {
  @override
  Widget build() {
    return CupertinoActivityIndicator(color: color());
  }

  @override
  Color color() {
    return Colors.blue;
  }
}
