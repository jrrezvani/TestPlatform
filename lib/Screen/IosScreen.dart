import 'package:test_pattern/Tools/IOSIndicator.dart';
import 'package:test_pattern/Tools/IosSlider.dart';
import 'package:test_pattern/service/IActivityIndicator.dart';
import 'package:test_pattern/service/ISlider.dart';

import 'WidgetFactory.dart';

class IosScreen implements WidgetFactory{
  @override
  ISlider FactorySlider() {
    // TODO: implement FactorySlider
    return IOSSlider();
  }

  @override
  IActivityIndicator Indicator() {
    // TODO: implement Indicator
    return IOSIndicator();
  }

  @override
  String getTitle() {
    // TODO: implement getTitle
    return "ios platform";
  }

}