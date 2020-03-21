import 'package:flutter/material.dart';
import 'package:ninghao_flutter/demo/buttom_demo.dart';
import 'package:ninghao_flutter/demo/card_demo.dart';
import 'package:ninghao_flutter/demo/checkbox_dmeo.dart';
import 'package:ninghao_flutter/demo/chip_demo.dart';
import 'package:ninghao_flutter/demo/data_table_demo.dart';
import 'package:ninghao_flutter/demo/datetime_demo.dart';
import 'package:ninghao_flutter/demo/expansion_panel_demo.dart';
import 'package:ninghao_flutter/demo/floating_action_button_demo.dart';
import 'package:ninghao_flutter/demo/form_demo.dart';
import 'package:ninghao_flutter/demo/paginated_data_table_demo.dart';
import 'package:ninghao_flutter/demo/popup_menu_button_demo.dart';
import 'package:ninghao_flutter/demo/radio_demo.dart';
import 'package:ninghao_flutter/demo/simple_dialog_demo.dart';
import 'package:ninghao_flutter/demo/slider_demo.dart';
import 'package:ninghao_flutter/demo/snack_bar_demo.dart';
import 'package:ninghao_flutter/demo/stepper_demo.dart';
import 'package:ninghao_flutter/demo/switch_demo.dart';

import 'alert_dialog_demo.dart';
import 'bottom_sheet_demo.dart';

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
          ListItem(title: 'SimpleDialog', page: SimpleDialogDemo()),
          ListItem(title: 'AlertDialog', page: AlertDialogDemo()),
          ListItem(title: 'BottomSheet', page: BottomSheetDemo()),
          ListItem(title: 'SnackBar', page: SnackBarDemo()),
          ListItem(title: 'ExpansionPanel', page: ExpansionPanelDemo()),
          ListItem(title: 'Chip', page: ChipDemo()),
          ListItem(title: 'DataTable', page: DataTableDemo()),
          ListItem(title: 'PaginatedDataTable', page: PaginatedDataTableDemo()),
          ListItem(title: 'Card', page: CardDemo()),
          ListItem(title: 'Stepper', page: StepperDemo()),
        ],
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
