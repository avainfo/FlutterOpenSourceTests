import 'package:flutter/material.dart';

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({super.key});

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.red,
        child: Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: Colors.amber,
                  onSurface: Colors.pink,
                  onPrimary: Colors.red,
                  secondary: Colors.blue,
                  onSecondary: Colors.purple,
                ),
            datePickerTheme: const DatePickerThemeData(
              headerTextColor: Colors.red,
              headerNavigationButtonColor: Colors.blue,
            ),
          ),
          child: DatePickerDialog(
            restorationId: 'date_picker_dialog',
            initialEntryMode: DatePickerEntryMode.calendarOnly,
            initialDate: DateTime.now(),
            firstDate: DateTime(2021),
            lastDate: DateTime(2027),
          ),
        ),
      ),
    );
  }
}
