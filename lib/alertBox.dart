import 'package:flutter/material.dart';

class OptionSelectorDialog extends StatefulWidget {
  @override
  _OptionSelectorDialogState createState() => _OptionSelectorDialogState();
}

class _OptionSelectorDialogState extends State<OptionSelectorDialog> {
  String selectedOption = '';

  void selectOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Select Option'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () => selectOption('Explorer'),
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: selectedOption == 'Explorer'
                  ? Color(0xff3159A6)
                  : Colors.white,
              child: Row(
                children: [
                  Icon(Icons.explore,
                      color: selectedOption == 'Explorer'
                          ? Colors.white
                          : Colors.black),
                  SizedBox(width: 16.0),
                  Text(
                    'Explorer',
                    style: TextStyle(
                        color: selectedOption == 'Explorer'
                            ? Colors.white
                            : Colors.black),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.0),
          InkWell(
            onTap: () => selectOption('Artist'),
            child: Container(
              padding: EdgeInsets.all(16.0),
              color:
                  selectedOption == 'Artist' ? Color(0xff3159A6) : Colors.white,
              child: Row(
                children: [
                  Icon(Icons.palette,
                      color: selectedOption == 'Artist'
                          ? Colors.white
                          : Colors.black),
                  SizedBox(width: 16.0),
                  Text(
                    'Artist',
                    style: TextStyle(
                        color: selectedOption == 'Artist'
                            ? Colors.white
                            : Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: selectedOption.isNotEmpty
              ? () {
                  OptionSelectorDialog();
                }
              : null,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
              return selectedOption.isNotEmpty
                  ? Color(0xff3159A6)
                  : Colors.white;
            }),
          ),
          child: Text(
            'Continue',
            style: TextStyle(
                color: selectedOption.isNotEmpty ? Colors.white : Colors.black),
          ),
        ),
      ],
    );
  }
}
