import 'package:flutter/material.dart';
import 'package:test_pattern/Screen/AndroidScreen.dart';
import 'package:test_pattern/Screen/IosScreen.dart';
import 'package:test_pattern/Screen/WidgetFactory.dart';
import 'package:test_pattern/service/IActivityIndicator.dart';
import 'package:test_pattern/service/ISlider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  IActivityIndicator? _activityIndicator;
  ISlider? _slider;
  final List<WidgetFactory> widgetsFactoryList = [
    AndroidScreen(),
    IosScreen(),
  ];
  int _selectedFactoryIndex = 0;

  double _sliderValue = 50.0;
  String get _sliderValueString => _sliderValue.toStringAsFixed(0);
  void _createWidgets() {
    _activityIndicator =
        widgetsFactoryList[_selectedFactoryIndex].Indicator();
    _slider = widgetsFactoryList[_selectedFactoryIndex].FactorySlider();

  }

  void _setSelectedFactoryIndex(int index) {
    print("index="+index.toString());
    setState(() {
      _selectedFactoryIndex = index;
      _createWidgets();
    });
  }
  void _setSliderValue(double value) {
    setState(() {
      _sliderValue = value;
    });
  }
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createWidgets();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            for (var i = 0; i < widgetsFactoryList.length; i++)
              RadioListTile(
                  title: Text(widgetsFactoryList[i].getTitle()),
                  value: i,
                  groupValue: _selectedFactoryIndex,
                  selected: i == _selectedFactoryIndex,
                  activeColor: Colors.black,
                  controlAffinity: ListTileControlAffinity.platform,
                  onChanged: (value) {
                    print("value="+value.toString());
                    _setSelectedFactoryIndex(int.parse(value.toString()));
                  }
              ),


            const SizedBox(height: 30.0),

            const SizedBox(height: 30.0),
            Text(
              'loading',
              style: Theme.of(context).textTheme.subhead,
            ),
            const SizedBox(height: 10.0),
            _activityIndicator!.Render(),
            const SizedBox(height: 30.0),
            Text(
              'Slider ($_sliderValueString%)',
              style: Theme.of(context).textTheme.subhead,
            ),
            const SizedBox(height: 30.0),
             _slider!.render(_sliderValue, _setSliderValue),
            const SizedBox(height: 30.0),


          ],
        ),

      ) ,
    )
      ;
  }
}

