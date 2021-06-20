import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/basic_types.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_pattern/service/ISlider.dart';

class IOSSlider implements ISlider{

  @override
  Widget render(double value, ValueSetter<double> onChenge) {
    // TODO: implement render
    return CupertinoSlider(value: value, onChanged: onChenge,max: 100,min: 0,);
  }
}