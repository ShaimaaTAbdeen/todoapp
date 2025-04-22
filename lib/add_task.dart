import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/home_screen.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
   List<int>colorCodes = [0xffFF4666,0xff66CC41,0xff41CCA7,0xff4181CC,0xffCC8441,0xff9741CC];
    int activeColorCode=0xffFF4666;
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formatter = DateFormat('dd/MM/yyyy');
    String formattedDate = formatter.format(now);
    

    return Scaffold(
       backgroundColor: Color(0xff1D1D1D),
      appBar: AppBar(
        backgroundColor:Color(0xff1D1D1D) ,
        title: Text('Add Task',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) =>  HomeScreen()),);

          },
          child: Icon(Icons.arrow_back_ios,
          color:Colors.white,
          size: 30.0,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          SizedBox(height: 20,),

          TextFormField(
            //controller: controller,
            style: TextStyle(
              fontSize: 16,
              color:Color(0xff1D1D1D),
            ),
            decoration:InputDecoration(
              hintText :'Enter title here',
              hintStyle: TextStyle(fontSize: 16,color: Colors.white),
              //suffixIcon: Icon(iconData,size: 30,color:Colors.white,),
              focusedBorder : OutlineInputBorder(
                borderRadius:BorderRadius.circular(0.8),
                borderSide : BorderSide(color: Color(0xff979797)),
            
              ),
              enabledBorder : OutlineInputBorder(
                borderRadius:BorderRadius.circular(0.8),
                borderSide : BorderSide(color: Color(0xff979797)),
            
              ),
              errorBorder :OutlineInputBorder(
                borderRadius:BorderRadius.circular(0.8),
                borderSide : BorderSide(color: Color(0xff979797)),
            
              ),
            
            )
           ),

           SizedBox(height: 20,),
           Text('Note',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          SizedBox(height: 20,),

          TextFormField(
            //controller: controller,
            style: TextStyle(
              fontSize: 16,
              color:Color(0xff1D1D1D),
            ),
            decoration:InputDecoration(
              hintText :'Enter note here',
              hintStyle: TextStyle(fontSize: 16,color: Colors.white),
              //suffixIcon: Icon(iconData,size: 30,color:Colors.white,),
              focusedBorder : OutlineInputBorder(
                borderRadius:BorderRadius.circular(0.8),
                borderSide : BorderSide(color: Color(0xff979797)),
            
              ),
              enabledBorder : OutlineInputBorder(
                borderRadius:BorderRadius.circular(0.8),
                borderSide : BorderSide(color: Color(0xff979797)),
            
              ),
              errorBorder :OutlineInputBorder(
                borderRadius:BorderRadius.circular(0.8),
                borderSide : BorderSide(color: Color(0xff979797)),
            
              ),
            
            )
           ),


           SizedBox(height: 20,),
           Text('Date',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          SizedBox(height: 20,),

          TextFormField(
            //controller: controller,
            style: TextStyle(
              fontSize: 16,
              color:Color(0xff1D1D1D),
            ),
            decoration:InputDecoration(
              hintText :formattedDate,
              hintStyle: TextStyle(fontSize: 16,color: Colors.white),
              //suffixIcon: Icon(iconData,size: 30,color:Colors.white,),
              focusedBorder : OutlineInputBorder(
                borderRadius:BorderRadius.circular(0.8),
                borderSide : BorderSide(color: Color(0xff979797)),
            
              ),
              enabledBorder : OutlineInputBorder(
                borderRadius:BorderRadius.circular(0.8),
                borderSide : BorderSide(color: Color(0xff979797)),
            
              ),
              errorBorder :OutlineInputBorder(
                borderRadius:BorderRadius.circular(0.8),
                borderSide : BorderSide(color: Color(0xff979797)),
            
              ),
            
            )
           ),

           SizedBox(height: 20,),
           Text('Color',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),

          SizedBox(height: 20,),

          SizedBox(
            height: 80,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder:(context, index) =>  Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: InkWell(
                  onTap: () {
                    activeColorCode=colorCodes[index];
                    setState(() {
                      
                    });
                    print(colorCodes[index]);

                    print(activeColorCode);

                    
                  },
                  child: Column(
                    children: [
                      Container(
                        //color: Color(int.parse(colorCodes[index])),
                        width: 45,
                        height: 45,
                       decoration: BoxDecoration(
                        color:Color(colorCodes[index]),
                        shape: BoxShape.circle,
                        border:activeColorCode==colorCodes[index]? Border.all(color:Colors.white,width: 2):null,
                      ),
                                  
                      ),
                      activeColorCode==colorCodes[index]? Icon(Icons.check,color:Colors.white):SizedBox(),
                      
                    ],
                  ),
                ),
              ),
            separatorBuilder:(context, index) =>  SizedBox(width: 10,),
            itemCount: colorCodes.length),
          ),

          SizedBox(height: 20,),

          Container(
            width: 370,height: 60,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color(0xff8687E7),width: 2)
            ),
            child: MaterialButton(onPressed:() {
              
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeScreen()),);
            },
            child: Text('CREATE TASK',style: TextStyle(
              fontSize: 20,
              color:Colors.white,
            ),),
            color:Color(0xff8687E7),
           
            ),
          ),
        
          ],
          
        
        ),
      ),

    );
  }
}