import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({Key? key}) : super(key: key);

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  // TimeOfDay? _startTime;
  // TimeOfDay? _endTime;
  TimeOfDay? _startTime;
   TimeOfDay? _endTime;

  Future<void> _selectStartTime(BuildContext context) async {
    final TimeOfDay? picked =
    await showTimePicker(context: context, initialTime: _startTime ?? TimeOfDay.now());
    if (picked != null && picked != _startTime) {
      setState(() {
        _startTime = picked;
      });
    }
  }

  Future<void> _selectEndTime(BuildContext context) async {
    final TimeOfDay? picked =
    await showTimePicker(context: context, initialTime: _endTime ?? TimeOfDay.now());
    if (picked != null && picked != _endTime) {
      setState(() {
        _endTime = picked;
      });
    }}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 100,width: 50,
          child: InkWell(
            onTap: () {
              _selectStartTime(context);
            },
            child: InputDecorator(
              decoration: InputDecoration(
                labelText: 'Start Time',
                border: OutlineInputBorder(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    _startTime == null
                        ? 'Select start time'
                        : DateFormat('h:mm a').format(DateTime(2022, 1, 1, _startTime!.hour, _startTime!.minute)),
                  ),
                  Icon(Icons.schedule),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}