import 'package:flutter/material.dart';
import 'package:ninghao_flutter/demo/buttom_demo.dart';
import 'package:ninghao_flutter/demo/checkbox_dmeo.dart';
import 'package:ninghao_flutter/demo/datetime_demo.dart';
import 'package:ninghao_flutter/demo/floating_action_button_demo.dart';
import 'package:ninghao_flutter/demo/form_demo.dart';
import 'package:ninghao_flutter/demo/popup_menu_button_demo.dart';
import 'package:ninghao_flutter/demo/radio_demo.dart';
import 'package:ninghao_flutter/demo/slider_demo.dart';
import 'package:ninghao_flutter/demo/switch_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
              title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
          ListItem(title: 'Button', page: ButtonDemo()),
          ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
          ListItem(title: 'Form', page: FormDemo()),
          ListItem(title: 'CheckBox', page: CheckBoxDemo()),
          ListItem(title: 'Radio', page: RadioDemo()),
          ListItem(title: 'Switch', page: SwitchDemo()),
          ListItem(title: 'Slider', page: SliderDemo()),
          ListItem(title: 'DateTime', page: DateTimeDemo()),
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  const ListItem({Key key, this.title, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => page,
        ));
      },
    );
  }
}
