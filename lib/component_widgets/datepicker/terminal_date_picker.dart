import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class TerminalDatePicker extends StatefulWidget {
  final DateTime date;
  final ValueChanged<DateTime> onChanged;

  const TerminalDatePicker({
    required this.date,
    required this.onChanged,
  });

  @override
  State<TerminalDatePicker> createState() => _TerminalDatePickerState();
}

class _TerminalDatePickerState extends State<TerminalDatePicker> {
  bool displayDate = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Date of birth',
                style: TextStyle(fontSize: 18.0, color: Colors.black54),
              ),
            ),
            displayDate
                ? Text(
                    intl.DateFormat.yMMMd().format(widget.date),
                    style: TextStyle(fontSize: 18.0, color: Colors.black54),
                  )
                : Text(''),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.00),
              border: Border.all(color: Colors.black, width: 3),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    spreadRadius: 7.0,
                    offset: Offset(0, 5),
                    blurRadius: 15,
                    blurStyle: BlurStyle.inner),
              ]),
          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: TextButton(
            child: Text(
              'Select',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            onPressed: () async {
              var newDate = await showDatePicker(
                context: context,
                initialDate: widget.date,
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
              );

              // Don't change the date if the date picker returns null.
              if (newDate == null) {
                displayDate = false;
                return;
              }

              displayDate = true;

              widget.onChanged(newDate);
            },
          ),
        ),
      ],
    );
  }
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.black,
  // backgroundColor: Colors.black,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(200)),
  ),
);
