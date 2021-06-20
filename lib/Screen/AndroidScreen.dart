import 'package:test_pattern/Screen/WidgetFactory.dart';
import 'package:test_pattern/Tools/AndroidIndicator.dart';
import 'package:test_pattern/Tools/AndroidSlider.dart';
import 'package:test_pattern/service/IActivityIndicator.dart';
import 'package:test_pattern/service/ISlider.dart';

class AndroidScreen implements WidgetFactory{
  @override
  ISlider FactorySlider() {
    // TODO: implement FactorySlider
    return AndroidSlider();
  }

  @override
  IActivityIndicator Indicator() {
    // TODO: implement Indicator
    return AndroidIndicator();
  }

  @override
  String getTitle() {
    // TODO: implement getTitle
    return "andoid platform";
  }

}