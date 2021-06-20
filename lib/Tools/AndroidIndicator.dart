
import 'package:flutter/material.dart';
import 'package:test_pattern/service/IActivityIndicator.dart';

class AndroidIndicator implements IActivityIndicator{
  @override
  Widget Render() {
    // TODO: implement Render
    return CircularProgressIndicator();
  }
}