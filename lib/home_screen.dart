import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//import 'package:date_time_picker/date_time_picker.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  String dateFormatted = DateFormat("MMMM dd,yyyy").format(DateTime.now());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff1D1D1D),
      appBar: AppBar(
        backgroundColor:Color(0xff1D1D1D) ,
        title: Text(dateFormatted,style: 
        TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
     body:
        Column(
          children: [
            DatePicker(
              
              height: 100,
              width: 100,
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              activeDates: [
                DateTime.now().add(Duration(days: 30)),
                          
              ],
              selectionColor: Colors.blueAccent,
              selectedTextColor: Colors.white,
               ),
               SizedBox(
                height: 50,
               ),
               Image.asset('assets/images/backgroundHS.png',
               height: MediaQuery.of(context).size.height*0.5,
               ),
               SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.only(left: 300),
                 child: ElevatedButton(onPressed:() {
                   
                 },
                 style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: Color(0xff8875FF),
                  
                 ),
                 child:Icon(Icons.add,color: Colors.white,)
                 ),
               ),
               /*Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 10)
                ),
                 child: FloatingActionButton(onPressed:() {
                   
                 },
                 
                 backgroundColor: Color(0xff8875FF),
                 child:Icon(Icons.add,color: Colors.white,)
                 ),
               )*/
          ],
        ),
     );
    
  }
}