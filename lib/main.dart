import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp( MaterialApp(
    home:Calendar(),
  ));
}

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  // This widget is the root of your application.
  @override
  State<Calendar> createState() => _Calendar();

}
class _Calendar extends State<Calendar> {
  DateTime today =DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My calendar assignment'),
        backgroundColor: Colors.blue[700],
        centerTitle: true,



      ),
      body: content(),
      floatingActionButton: FloatingActionButton(onPressed: (){},

        child:Icon(Icons.add),
        backgroundColor: Colors.amber,),


    );
  }
  Widget content(){
    return Column(
      children: [
        Container(
          child: TableCalendar(
            rowHeight: 45.0,

            headerStyle: HeaderStyle(formatButtonVisible: false,titleCentered: true,),
            availableGestures: AvailableGestures.all,
            focusedDay:today,
            firstDay:DateTime.utc(2000,12,12),
            lastDay:DateTime.utc(2030,12,12),
          ),

        ),

      ],

    );

  }
}