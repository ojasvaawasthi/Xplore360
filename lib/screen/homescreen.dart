import 'package:flutter/material.dart';

import 'package:xplore360/screen/soft_skills.dart';
import 'package:xplore360/screen/verbal_ability.dart';

import 'package:xplore360/screen/logical_reasoning.dart';
import 'package:xplore360/screen/quants.dart';

import 'package:xplore360/screen/video_lecture.dart';
import 'package:carousel_slider/carousel_slider.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Xplore360",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Contents(),
    );
  }
}


class Contents extends StatelessWidget {
  const Contents({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 

    child:Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white,Colors.black],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        
        children: 
        [ CarouselSlider(
              items: [
                Image.asset('assets/1.png'),
                Image.asset('assets/2.png'),
                Image.asset('assets/3.png'),
              ],
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),
          SizedBox(width: 10,),
      
          Row(
            
            children: [
             
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LogicalReasoning()));
                },
                child: Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/imeg/Logical Reasoning.png'),fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                ),
              ),
            
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>quants()));
                },
                child: Container(
                  height: 200,
                  width: 200,
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('assets/imeg/Quants.png'),fit: BoxFit.cover),
                    
                    color: Colors.black12,
                  ),
                  
                ),
              )
            ],
          ),
          SizedBox(width: 10,),
          Row(
            
            children: [
              
              InkWell(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) =>school_programs()) );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage('assets/imeg/School Programs.png'),fit:BoxFit.fitHeight),
                ),
                ),
              ),
            
              InkWell(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SoftSkills())
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('assets/imeg/Soft Skills.png'),fit: BoxFit.contain),
                  
                  ),
                  
                ),
              )
            ],
          ),
          Row(
            
            children: [
             
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context)=>VerbalAbility())
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage('assets/imeg/Verbal Ability.png'),fit: BoxFit.contain),
                  color: Colors.white,
                ),
                ),
              ),
            
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                },
                child: Container(
                  height: 200,
                  width: 200,
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('assets/imeg/Xplore Feed.png'),fit: BoxFit.contain),
                    color: Colors.black12,
                  ),
                  
                ),
              )
            ],
          ),
          Row(
            
            children: [
             
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>video_lecture()));
                },
                child: Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/imeg/Lecture-Free-PNG.png'),fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                ),
              ),
            
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>job_openings()));
                },
                child: Container(
                  height: 200,
                  width: 200,
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('assets/imeg/jobopening.png'),fit: BoxFit.cover),
                    color: Colors.white,
                  ),
                  
                ),
              )
            ],
          ),
        ],
      ),  
    )
    );
  }
}