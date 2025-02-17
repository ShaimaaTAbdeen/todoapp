import 'package:flutter/material.dart';
import 'package:todoapp/loginform.dart';
import 'package:todoapp/onboarding/onboarding_1.dart';
import 'package:todoapp/registerform.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffD9D9D9),
      backgroundColor: Color(0xff1D1D1D),
      appBar: AppBar(
        //backgroundColor: Color(0xffD9D9D9),
        backgroundColor:Color(0xff1D1D1D),
        leading: InkWell(
          onTap: () {
            
            Navigator.pop(context, MaterialPageRoute(builder: (context) =>  Onboarding1()),);
            },
          child: Icon(Icons.arrow_back_ios,color: Colors.white,
          )),
      ),
      body: Column(
        
        children: [
          SizedBox(height: 50,),
          Center(
            child: Text('Welcome to UpTodo',style: 
            TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              //color:Colors.black,
              color:Colors.white,
            ),),
          ),
          SizedBox(height: 20,),
          Container(
            width: 300,
            child: Text('Please login to your account or create new account to continue',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              //color: Colors.black
              color:Colors.white,
            ),),
          ),
          SizedBox(height: 250,),
          Container(
            width: 370,height: 60,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color(0xff8875FF),width: 2)
            ),
            child: MaterialButton(onPressed:() {
              
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  Loginform()),);
            },
            child: Text('LOGIN',style: TextStyle(
              fontSize: 20,
              color:Colors.white,
            ),),
            color:Color(0xff8875FF),
           
            ),
          ),
          SizedBox(height: 20,),
           Container(
            width: 370,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color(0xff8875FF),width: 2)
            ),
             child: MaterialButton(onPressed:() {
               Navigator.push(context, MaterialPageRoute(builder: (context) =>  Registerform()),);

                       },
             child: Text('CREATE ACCOUNT',style: TextStyle(
              fontSize: 20,
              color:Color(0xff0080ff),
                       ),),
                       //color:Color(0xffD9D9D9),
                       color:Color(0xff1D1D1D),
                     
                       ),
           )
        ],
      ),
    );
  }
}