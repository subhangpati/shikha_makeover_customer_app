import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:shikha_makeover_customer_app/screens/Cart.dart';

DateTime selectedDate = DateTime.now();

class DateAndTime extends StatefulWidget {
  @override
  _DateAndTimeState createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  DateTime _selectedValue = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: () => Navigator.pop(context),
          ),
          title: Text(
            'DATE AND TIME',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: DatePicker(
                  DateTime.now(),
                  width: 60,
                  height: 80,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.black,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Appointment Date',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text(
                      '${_selectedValue.day}-${_selectedValue.month}-${_selectedValue.year}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // Time container
                child: Column(
                  children: [
                    Text(
                      'Select Time Slot',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      _time.format(context),
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    FlatButton(
                      color: Theme.of(context).accentColor,
                      onPressed: () {
                        Navigator.of(context).push(showPicker(
                          context: context,
                          value: _time,
                          onChange: onTimeChanged,
                          // Optional onChange to receive value as DateTime
                          onChangeDateTime: (DateTime dateTime) {
                            print(dateTime);
                          },
                        ));
                      },
                      child: Text('SELECT TIME'),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DateAndTime())),
                child: Container(
                  color: Color(0xffD7352E),
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: Center(
                      child: Text(
                    'CONFIRM',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
