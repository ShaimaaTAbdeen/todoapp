import 'package:flutter/material.dart';
import 'package:todoapp/onboarding/onboradingcontent.dart';
import 'package:todoapp/splash_screen.dart';
import 'package:todoapp/start_screen.dart';

class Onboarding1 extends StatefulWidget {
  Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  List<OnBoardingContent>contents=[

    OnBoardingContent(
      imageURL: 'assets/images/onboading_1.png', 
      title: 'Manage your tasks', 
      desc: 'You can easily manage all of your daily tasks in DoMe for free',
      nextbtntitle: 'NEXT'),
    OnBoardingContent(
      imageURL: 'assets/images/onboarding_2.png', 
      title: 'Create daily routine', 
      desc: 'In Uptodo  you can create your personalized routine to stay productive',
      nextbtntitle: 'NEXT'),
    OnBoardingContent(
      imageURL: 'assets/images/onboarding_3.png', 
      title: 'Organize your tasks', 
      desc: 'You can organize your daily tasks by adding your tasks into separate categories',
      nextbtntitle: 'GET STARTED'),


  ];

  int page_number=0;

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,

  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffD9D9D9),
      backgroundColor: Color(0xff1D1D1D),
      appBar: AppBar(
        //backgroundColor: Color(0xffD9D9D9),
        backgroundColor: Color(0xff1D1D1D),
        
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: InkWell(
            onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  StartScreen()),);

              
            },
            child: Text('SKIP',
            style: TextStyle(
              //color: Color(0xff0080FF),
              color:Colors.white,
              fontSize: 16,
            
            ),),
          ),
        ),
      ),
      body:PageView.builder(
        controller: pageController,
        onPageChanged: (value) {
          page_number=value;
          setState(() {
            
          });
          
        },
        itemCount: contents.length,
        itemBuilder:(context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:10,left: 120,right: 120),
                child: Image.asset(contents[index].imageURL,width: 210,height: 270,),
              ),
              SizedBox(height: 50,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:page_number==0?Color(0xff0080FF):/*Colors.black*/Colors.white,
                      ),
                    ),
                    SizedBox(width: 5,),
                     Container(
                      height: 5,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:page_number==1?Color(0xff0080FF):/*Colors.black*/Colors.white,

                      ),
                    ),
                    SizedBox(width: 5,),

                    Container(
                      height: 5,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:page_number==2?Color(0xff0080FF):/*Colors.black*/Colors.white,

                      ),
                    ),

                  ],
                  
                ),

              ),
              SizedBox(height: 20,),
              Text(contents[index].title,
              textAlign: TextAlign.center,
              style: 
              TextStyle(
                fontSize: 32,
                //color:Colors.black,
                color:Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 50,),
              Container(
                width: 290,
                height: 100,
                child: Text(contents[index].desc,
                textAlign: TextAlign.center,
                style: 
                TextStyle(
                  fontSize: 16,
                  //color: Colors.black
                  color: Colors.white
                ),),
              ),
              Container(
                child:Padding(
                  padding: const EdgeInsets.only(left:20,right: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if(page_number ==0)
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  SplashScreen()),);
                          }
                          else{
                           page_number--;
                             setState(() {
                              
                            });
                            pageController.jumpToPage(page_number);
                          }
                        },
                        child: Text('BACK',
                         style: TextStyle(
                          //color: Color(0xff0080FF),
                          color: Colors.white,
                          fontSize: 16,)),
                      ),
                        Spacer(),
                        MaterialButton(
                          onPressed:() {
                            if(page_number==2)
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>  StartScreen()),);


                            }
                            page_number++;
                             setState(() {
                              
                            });
                            pageController.jumpToPage(page_number);
                           
                            
                          }, 
                        color: Color(0xff8875FF),
                        child: Text(contents[index].nextbtntitle,style: TextStyle(
                        color:Colors.white,
                        fontSize: 16,)),
                        )
                    ],
                  ),
                )
              )
            ],
          
          );
        }
      ,),
    );
  }
}