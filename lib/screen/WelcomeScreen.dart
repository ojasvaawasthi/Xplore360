import 'package:flutter/material.dart';
import 'package:xplore360/screen/homescreen.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/1.6,
        decoration: BoxDecoration(
           
          color: Colors.white,
        ),
              ),
                 Container(
                width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/1.6,
        decoration: BoxDecoration(
          color: Color.fromARGB(255,208,230,242),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
        ),
        child: Center(child: Image.asset("assets/images/March2020-Student-Illo-BLOGPOST-FNL.jpg",scale: 0.8,),
        ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.66,
              decoration: BoxDecoration( 
                color:Color.fromARGB(255, 208, 230, 242),
              ),
            ),
          ),
           Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.66,
              decoration: BoxDecoration( 
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70))
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Xplore360 ",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing:1,
                    wordSpacing: 2,
                  ),
                  ),
                  SizedBox(height: 100,),
                  Material(
                    color: Color.fromARGB(255, 208, 230, 242),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,horizontal: 80
                        ),
                        child: Text("Get Started",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]
        ),
      ),
     );
  }
}