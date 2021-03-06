import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SwitchDemo'),
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SwitchListTile(
                value: _switchItemA,
                onChanged: (value) {
                  setState(() {
                    _switchItemA = value;
                  });
                },
                title: Text('Switch Item A'),
                subtitle: Text('Description'),
                secondary: SizedBox(
                  height: double.infinity,
                  child: Icon(
                      _switchItemA ? Icons.visibility : Icons.visibility_off),
                ),
                selected: _switchItemA,
              ),
              SwitchListTile(
                value: _switchItemA,
                onChanged: (value) {
                  setState(() {
                    _switchItemA = value;
                  });
                },
                title: Text('Switch Item A'),
                subtitle: Text('没有使用 sizedBox 包裹 Icon'),
                secondary: Icon(
                    _switchItemA ? Icons.visibility : Icons.visibility_off),
                selected: _switchItemA,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _switchItemA ? '😁' : '😐',
                    style: TextStyle(fontSize: 32.0),
                  ),
                  Switch(
                    value: _switchItemA,
                    onChanged: (value) {
                      setState(() {
                        _switchItemA = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
