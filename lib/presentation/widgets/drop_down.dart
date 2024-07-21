import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}
class _DropDownState extends State<DropDown> {
  String _filter = 'Filter by date';
  @override
  Widget build(BuildContext context) {
    final List<String> filters = ['Filter by date', 'Filter by category'];
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: _filter,
        items: filters.map((String filter) {
          return DropdownMenuItem<String>(
            value: filter,
            child: Text(filter),
          );
        }).toList(),
        onChanged: (filterVal) {
          setState(() {
            _filter = filterVal!;
          });
        },
      ),
    );
  }
}
