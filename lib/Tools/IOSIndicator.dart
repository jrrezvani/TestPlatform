import 'package:flutter/cupertino.dart';
import 'package:test_pattern/service/IActivityIndicator.dart';

class IOSIndicator implements IActivityIndicator{
  @override
  Widget Render() {
    // TODO: implement Render
    return CupertinoActivityIndicator();
  }
}