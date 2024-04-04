import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomTableCalender extends StatefulWidget {
  const CustomTableCalender({Key? key}) : super(key: key);

  @override
  State<CustomTableCalender> createState() => _CustomTableCalenderState();
}

class _CustomTableCalenderState extends State<CustomTableCalender> {
  DateTime today = DateTime.now();

  void onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TableCalendar(
        rowHeight: 60,
        selectedDayPredicate: (day) => isSameDay(day, today),
        focusedDay: today,
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
        
        ),
        daysOfWeekHeight: 30,
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(fontSize: 16),
          weekendStyle: TextStyle(fontSize: 16),
        ),
        calendarFormat: CalendarFormat.week,
        firstDay: DateTime.utc(2024, 4, 1),
        lastDay: DateTime.utc(2024, 12, 30),
        onDaySelected: onDaySelected,
        onPageChanged: (focusedDay) {
          setState(() {
            today = focusedDay;
          });
        },
        calendarStyle: CalendarStyle(
          defaultTextStyle: TextStyle(fontSize: 16),
          weekendTextStyle: TextStyle(fontSize: 16),
        ),
        // builders: CalendarBuilders(
        //   dayBuilder: (context, date, _) {
        //     return Center(
        //       child: Text(
        //         date.day.toString(),
        //         style: TextStyle(fontSize: 16),
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}
