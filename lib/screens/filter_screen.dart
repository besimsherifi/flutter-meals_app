import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key key}) : super(key: key);

  static const routeName = '/filters';

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool gluteenFree = false;
  bool vegetarian = false;
  bool vegan = false;
  bool lactoseFree = false;

  Widget buildSwitchListTile(
      String title, String subtitle, bool value, Function updateValue) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        value: value,
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust you meal selection.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Expanded(
            child: ListView(children: [
              buildSwitchListTile(
                  'Gluten-Free', 'All the gluten free products', gluteenFree,
                  (newValue) {
                setState(() {
                  gluteenFree = newValue;
                });
              }),
              buildSwitchListTile(
                  'Lactose-Free', 'All the lactose free products', lactoseFree,
                  (newValue) {
                setState(() {
                  lactoseFree = newValue;
                });
              }),
              buildSwitchListTile(
                  'Vegetarian', 'Only include vegetarian products', vegetarian,
                  (newValue) {
                setState(() {
                  vegetarian = newValue;
                });
              }),
              buildSwitchListTile('Vegan', 'Vegan products', vegan, (newValue) {
                setState(() {
                  vegan = newValue;
                });
              })
            ]),
          )
        ],
      ),
    );
  }
}
