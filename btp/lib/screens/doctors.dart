import 'package:btp/screens/doctor.dart';
import 'package:btp/screens/listdoc.dart';
import 'package:btp/screens/search.dart';
import 'package:flutter/material.dart';

import 'package:btp/screens/carddoc.dart';


class doctors extends StatelessWidget {
  const doctors({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2d8089) ,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(  
                  children: [
                    //Image.asset('assets/image/diarrhea.png'),
                    
                  ],
                ),
              ),
               SizedBox(height: 50,),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Find Your Desired\nDoctor',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color:Color(0xff1E1C61)
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              ),SizedBox(
                height: 30,
              ),Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Doctors near you',
                    style: TextStyle(
                      
                    
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1E1C61),
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),buildCategoryList(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Doctors List',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1E1C61) ,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              ),
              SizedBox(
                height: 20,
              ),
              buildDoctorList(),
            ],
          ),
        ),
      )
      
    );
  }
}

buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            'assets/image/cough.png',
            'sajal gandu',
            'barbaad',
            'boban nagar'
            
            
            
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            'assets/image/cough.png',
            'nitish hawabaaz',
            'hair speciallist',
            'nigeria ka choda'
            
            
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            'assets/image/cough.png',
            'hawabaaz chirag',
            'habazzi',
            'basant bihar'
            
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }

  buildDoctorList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          DoctorCard(
            'Hawabaaz Chirag',
            'Basant Bihar - sindhi aspatal',
            'assets/image/cough.png',
            Color(0xffffffff),
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'Hawabaaz Sanyam',
            'durgapura- Jain Hospitals',
            'assets/image/shivers.png',
            Color(0xffffffff),
          ),
          SizedBox(
            height: 20,
          ),
          DoctorCard(
            'Hawabaaz Nagpal',
            ' udta punjab',
            'assets/image/vomit.png',
            Color(0xffffffff),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
