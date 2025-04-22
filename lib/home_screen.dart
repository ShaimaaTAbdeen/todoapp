import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/add_task.dart';
//import 'package:date_time_picker/date_time_picker.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  String dateFormatted = DateFormat("MMMM dd,yyyy").format(DateTime.now());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff1D1D1D),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new,
        color:Colors.white,
        size: 30,),
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
                height: 30,
               ),

               Stack(
                 children:[
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Container(
                    width:MediaQuery.of(context).size.width*0.95,
                    height:MediaQuery.of(context).size.height*0.20,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Color(0xFFFF4666),
                    ),
                    
                                     ),
                  ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10.0),
                   child: Row(
                     children: [
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Task 1',style: 
                          TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Image.asset('assets/images/timer.png'),
                              SizedBox(width: 10,),
                              Text('09:33 pm',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 10,),
                              Text('-',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 10,),
                              Text('09:48 pm',style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                       
                            ],
                          ),
                          SizedBox(height: 10,),
                       
                          Text('Learn Dart',style: 
                          TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),),
                       
                        ],
                        
                       
                       ),
                       SizedBox(width: 120,),

                       Container(
                        height: 80,
                        width: 2,
                        color: Colors.white,
                       ),
                       SizedBox(width:10),
                       Image.asset('assets/images/TODO.png'),
                     ],
                   ),
                 ),
                 ]
               ),
               /*
              Image.asset('assets/images/backgroundHS.png',
               height: MediaQuery.of(context).size.height*0.5,
               ),*/
               SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.only(left: 300),
                 child: ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  AddTask()),);

                   
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