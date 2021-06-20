import 'package:test_pattern/service/IActivityIndicator.dart';
import 'package:test_pattern/service/ISlider.dart';

abstract class WidgetFactory{
  String getTitle();
   IActivityIndicator Indicator();
   ISlider FactorySlider();
}