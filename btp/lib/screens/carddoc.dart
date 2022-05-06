import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  var _title;
  var _specilization;
  var _address;
  var _image;
  
  

  CategoryCard(this._image,this._title,this._specilization,this._address );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 250,
      child: Stack(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 110,
              height: 250,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(_image),

                  Text(
                    _title
                    
                  ),
                  SizedBox(height: 10,),
                  Text(
                    _specilization
                  ),
                  SizedBox(height: 10,),
                  Text(
                    _address
                  ),

                ],
              ),
                
              ),
          ),
          
        ],
      ),
    );
  }
}