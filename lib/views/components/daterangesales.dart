import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateRangeComp extends StatelessWidget {

  final startDate;
  final endDate;
  final onSelectionChanged;
  final buttonColor;

  const DateRangeComp({Key? key, this.startDate, this.endDate, this.onSelectionChanged, this.buttonColor}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Row(
      children: [
        Text(
          startDate != null ? DateFormat('yyyy-MM-dd').format(startDate) : DateFormat('yyyy-MM-dd').format(DateTime.now()),
          style: TextStyle(
            fontFamily: "OpenSans",
            fontSize: 16
          ),
        ),
        Icon(Icons.arrow_right),
        Text(
          endDate != null ? DateFormat('yyyy-MM-dd').format(endDate) : DateFormat('yyyy-MM-dd').format(DateTime.now().subtract(const Duration(days: 90))),
          style: TextStyle(
            fontFamily: "OpenSans",
            fontSize: 16
          ),
        ),
        SizedBox(width: 5,),
        IconButton(
          onPressed: () => showModalBottomSheet(
            context: context,
            isDismissible: true,
            builder: (context) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
                child: SizedBox(
                  height: size.height*0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 10.0),
                      SfDateRangePicker(
                        onSelectionChanged: onSelectionChanged,
                        selectionMode: DateRangePickerSelectionMode.range,
                      ),
                      MaterialButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          "Close",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                          ),
                        )
                      )
                    ],
                  ),
                ),
              );
            }
          ),
          icon: Icon(Icons.date_range),
        ),
        Expanded(
          child: MaterialButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.filter_alt),
                Text(
                  "Filter",
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 16
                  ),
                ),
              ],
            ),
            color: buttonColor,
          ),
        )
      ],
    );
  }
}