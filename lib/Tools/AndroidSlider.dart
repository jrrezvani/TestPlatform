import 'package:flutter/material.dart';
import 'package:test_pattern/service/ISlider.dart';

class AndroidSlider implements ISlider{

  @override
  Widget render(double value, ValueSetter<double> onChenge) {
    // TODO: implement render
    return Slider(value: value, onChanged: onChenge,max: 100,min: 0,);
  }
}