import 'package:flutter/material.dart';
import 'package:flutter_design_pattern_abstract_factory/platform_button.dart';
import 'package:flutter_design_pattern_abstract_factory/platform_indicator.dart';

abstract class AbstractFactory {
  Widget buildButton(BuildContext context, String text, VoidCallback onPressed);

  Widget buildIndicator(BuildContext context);
}

class AbstractFactoryImpl implements AbstractFactory {
  @override
  Widget buildButton(BuildContext context, String text, VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform)
        .build(child: Text(text), onPressed: onPressed);
  }

  @override
  Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}
