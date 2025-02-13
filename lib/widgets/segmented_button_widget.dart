import 'package:flutter/material.dart';

class SegmentedButtonWidget extends StatefulWidget {
  const SegmentedButtonWidget({super.key});

  @override
  State<SegmentedButtonWidget> createState() => _SegmentedButtonWidgetState();
}

enum Calendar { day, week, month, year }

class _SegmentedButtonWidgetState extends State<SegmentedButtonWidget> {
  Calendar calendarView = Calendar.week;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SegmentedButton'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: SegmentedButton<Calendar>(
          style: SegmentedButton.styleFrom(
            backgroundColor: Colors.grey[200],
            foregroundColor: Colors.red,
            selectedForegroundColor: Colors.white,
            selectedBackgroundColor: Colors.green,
          ),
          segments: const <ButtonSegment<Calendar>>[
            ButtonSegment<Calendar>(
                value: Calendar.day,
                label: Text('Day'),
                icon: Icon(Icons.calendar_view_day)),
            ButtonSegment<Calendar>(
                value: Calendar.week,
                label: Text('Week'),
                icon: Icon(Icons.calendar_view_week)),
            ButtonSegment<Calendar>(
                value: Calendar.month,
                label: Text('Month'),
                icon: Icon(Icons.calendar_view_month)),
            ButtonSegment<Calendar>(
                value: Calendar.year,
                label: Text('Year'),
                icon: Icon(Icons.calendar_today)),
          ],
          selected: <Calendar>{calendarView},
          onSelectionChanged: (Set<Calendar> newSelection) {
            setState(() {
              // By default there is only a single segment that can be
              // selected at one time, so its value is always the first
              // item in the selected set.
              calendarView = newSelection.first;
            });
          },
        ),
      ),
    );
  }
}
