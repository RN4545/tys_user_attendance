import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCalendar extends StatelessWidget {
  final DateTime _now = DateTime.now();
  final List<String> _days = ['SUN', 'MON', 'TUE', 'WED', 'THURS', 'FRI', 'SAT'];

  CustomCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime firstDayOfMonth = DateTime(_now.year, _now.month, 1);
    final int startWeekday = firstDayOfMonth.weekday % 7;
    final int daysInMonth = DateTime(_now.year, _now.month + 1, 0).day;

    List<TableRow> calendarRows = [];

    // Header Row: Days of the week
    calendarRows.add(
      TableRow(
        children: _days
            .map((day) => Center(
          child: Text(day,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey),),
        ),)
            .toList(),
      ),
    );

    // Dates
    List<Widget> currentRow = [];
    int dayCounter = 1;

    for (int i = 0; i < 42; i++) {
      if (i < startWeekday || dayCounter > daysInMonth) {
        currentRow.add(Container()); // Empty cell
      } else {
        currentRow.add(
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("$dayCounter"),
            ),
          ),
        );
        dayCounter++;
      }

      // When 7 cells filled, add row
      if ((i + 1) % 7 == 0) {
        calendarRows.add(TableRow(children: List.from(currentRow)));
        currentRow.clear();
      }
    }

    return Container(
      // margin: const EdgeInsets.all(16),
      // padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.yellow.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.orange, width: 1.4),
      ),
      child: Column(
        children: [
          Text(
            DateFormat.yMMMM().format(_now),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 12),
          Table(
            children: calendarRows,
          ),
        ],
      ),
    );
  }
}
