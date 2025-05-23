import 'package:flutter/material.dart';
import 'package:todoapp/loginform.dart';
import 'package:todoapp/start_screen.dart';

class Registerform extends StatelessWidget {
  const Registerform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1D1D1D),
      appBar: AppBar(backgroundColor: Color(0xff1D1D1D),
      leading: InkWell(
        onTap: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) =>  StartScreen()),);

        },
        child: Icon(Icons.arrow_back_ios,color: Colors.white,)),),
      body:Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text('Register',style: 
            TextStyle(
              color:Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),),
            SizedBox(height: 50,),
            Text('Username',style: TextStyle(
              fontSize: 18,
              color:Colors.white,
            ),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextFormField(
            //controller: controller,
            style: TextStyle(
              fontSize: 16,
              color:Color(0xff1D1D1D),
            ),
            decoration:InputDecoration(
              hintText :'Enter your username',
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
          ),
        SizedBox(height: 20,),
            Text('Password',style: TextStyle(
              fontSize: 18,
              color:Colors.white,
            ),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextFormField(
            //controller: controller,
            style: TextStyle(
              fontSize: 16,
              color:Color(0xff1D1D1D),
            ),
            decoration:InputDecoration(
              hintText :'Enter your password',
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
          ),
           SizedBox(height: 20,),
            Text('Confirm Password',style: TextStyle(
              fontSize: 18,
              color:Colors.white,
            ),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextFormField(
            //controller: controller,
            style: TextStyle(
              fontSize: 16,
              color:Color(0xff1D1D1D),
            ),
            decoration:InputDecoration(
              hintText :'Confirm your password',
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
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 370,height: 60,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color(0xff8687E7),width: 2)
              ),
              child: MaterialButton(onPressed:() {
                
               // Navigator.push(context, MaterialPageRoute(builder: (context) =>  Loginform()),);
              },
              child: Text('REGISTER',style: TextStyle(
                fontSize: 20,
                color:Colors.white,
              ),),
              color:Color(0xff8687E7),
             
              ),
            ),
          ),
          SizedBox(height: 20,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) =>  Loginform()),);
                },
                child: RichText(
                        textAlign: TextAlign.center,
                        text:TextSpan(
                        text: ('Already have an account? '),
                        style: TextStyle(
                          color:Color(0XFF979797),
                          
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          TextSpan(text:'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                
                          ))
                
                        ],
                        ),
                      ),
              ),
            ),
        
          ],
          
        ),
      ) ,

      
    );
  }
}