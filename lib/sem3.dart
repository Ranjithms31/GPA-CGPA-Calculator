import 'package:flutter/material.dart';
class Sem3 extends StatefulWidget {
  @override
  S3 createState() => S3();
}
 
class S3 extends State {
 
  // Default Drop Down Item.
  String value1 = 'O';
  String value2 = 'O';
  String value3=  'O';
  String value4=  'O';
  String value5 = 'O';
  String value6 = 'O';
  String value7=  'O';
  String value8=  'O';
  String value9=  'O';
 
  // To show Selected Item in Text.
  int count=9;
  int sum=0;
  int n=4;
  int i=0;
  int temp=0;
  double ans=0;
  List <String> grades = [
    'O', 
    'A+', 
    'A', 
    'B+', 
    'B',
    'U'
    ] ;
    List <String> s1 = ['O','O','O','O','O','O','O','O','O'];
 
  void getDropDownItem(){
 
    setState(() {
      s1[0] = value1;
      s1[1] = value2;
      s1[2] = value3;
      s1[3] = value4;
      s1[4] = value5;
      s1[5] = value6;
      s1[6] = value7;
      s1[7] = value8;
      s1[8] = value9;
      while(i!=count)
      {
        switch (s1[i]) {
          case 'O':temp=10;
                   break;
          case 'A+':temp=9;
                    break;
          case 'A':temp=8;
                    break;
          case 'B+':temp=7;
                    break; 
          case 'B':temp=6;
                    break;                   
          default:temp=5;
                  break;
        }
        if(i==2)
        {
          n=n-1;
        }
        if(i==5)
        {
          n=n-1;
        }
        if(i==8)
        {
          n=n-1;
        }
        sum=sum+(temp*n);
        i++;
      }
      sum=sum*10;
      ans=sum/240;
      ans=double.parse((ans).toStringAsPrecision(4));
      sum=0;
      n=4;
      i=0;

    });
  }
 
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sem3'),
        backgroundColor: Colors.black87,
      ),
      body: new Container(
         decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/wall.jpg'),
              fit: BoxFit.cover,
    ),
  ),
        padding: new EdgeInsets.all(32.0),
          child : new Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
              children: <Widget>[
                new  Row(
                   mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: <Widget>[
                     Padding(
            padding: EdgeInsets.only(top: 0, bottom: 0),
            child :
            //Printing Item on Text Widget 
            Text('Discrete Mathematics', style: TextStyle(fontSize: 15, color: Colors.black))),
          DropdownButton<String>(
            value: value1,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 1,
            style: TextStyle(color: Colors.red, fontSize: 18),
            
            onChanged: (String data) {
              setState(() {
                value1 = data;
              });
            },
            items: grades.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
                  ],


                ),
                new  Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: <Widget>[
                     Padding(
            padding: EdgeInsets.only(top: 0, bottom: 0),
            child :
            //Printing Item on Text Widget 
            Text('Digital Principles and System Design', style: TextStyle(fontSize: 15, color: Colors.black))),
          DropdownButton<String>(
            value: value2,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 1,
            style: TextStyle(color: Colors.red, fontSize: 18),
            
            onChanged: (String data) {
              setState(() {
                value2 = data;
              });
            },
            items: grades.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
                  ],


                ),
                new  Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween  ,
                  children: <Widget>[
                     Padding(
            padding: EdgeInsets.only(top: 0, bottom: 0),
            child :
            //Printing Item on Text Widget 
            Text('Data Structures', style: TextStyle(fontSize: 15, color: Colors.black))),
          DropdownButton<String>(
            value: value3,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 1,
            style: TextStyle(color: Colors.red, fontSize: 18),
            
            onChanged: (String data) {
              setState(() {
                value3 = data;
              });
            },
            items: grades.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
                  ],


                ),
                new  Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween  ,
                  children: <Widget>[
                     Padding(
            padding: EdgeInsets.only(top: 0, bottom: 0),
            child :
            //Printing Item on Text Widget 
            Text('Object Oriented Programming', style: TextStyle(fontSize: 15, color: Colors.black))),
          DropdownButton<String>(
            value: value4,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 1,
            style: TextStyle(color: Colors.red, fontSize: 18),
            
            onChanged: (String data) {
              setState(() {
                value4 = data;
              });
            },
            items: grades.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
                  ],


                ),
                new  Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween  ,
                  children: <Widget>[
                     Padding(
            padding: EdgeInsets.only(top: 0, bottom: 0),
            child :
            //Printing Item on Text Widget 
            Text('Communication Engineering', style: TextStyle(fontSize: 15, color: Colors.black))),
          DropdownButton<String>(
            value: value5,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 1,
            style: TextStyle(color: Colors.red, fontSize: 18),
            
            onChanged: (String data) {
              setState(() {
                value5 = data;
              });
            },
            items: grades.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
                  ],


                ),
                new  Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween  ,
                  children: <Widget>[
                     Padding(
            padding: EdgeInsets.only(top: 0, bottom: 0),
            child :
            //Printing Item on Text Widget 
            Text('Data Structures Lab', style: TextStyle(fontSize: 15, color: Colors.black))),
          DropdownButton<String>(
            value: value6,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 1,
            style: TextStyle(color: Colors.red, fontSize: 18),
            
            onChanged: (String data) {
              setState(() {
                value6 = data;
              });
            },
            items: grades.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
                  ],


                )
                ,new  Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween  ,
                  children: <Widget>[
                     Padding(
            padding: EdgeInsets.only(top: 0, bottom: 0),
            child :
            //Printing Item on Text Widget 
            Text('Object Oriented Programming Lab', style: TextStyle(fontSize: 15, color: Colors.black))),
          DropdownButton<String>(
            value: value7,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 1,
            style: TextStyle(color: Colors.red, fontSize: 18),
            
            onChanged: (String data) {
              setState(() {
                value7 = data;
              });
            },
            items: grades.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
                  ],


                ),new  Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween  ,
                  children: <Widget>[
                     Padding(
            padding: EdgeInsets.only(top: 0, bottom: 0),
            child :
            //Printing Item on Text Widget 
            Text('Digital Systems Lab', style: TextStyle(fontSize: 15, color: Colors.white60))),
          DropdownButton<String>(
            value: value8,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 1,
            style: TextStyle(color: Colors.red, fontSize: 18),
            
            onChanged: (String data) {
              setState(() {
                value8 = data;
              });
            },
            items: grades.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
                  ],


                ),
                new  Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween  ,
                  children: <Widget>[
                     Padding(
            padding: EdgeInsets.only(top: 0, bottom: 0),
            child :
            //Printing Item on Text Widget 
            Text('Interpersonal Skills', style: TextStyle(fontSize: 15, color: Colors.white70))),
          DropdownButton<String>(
            value: value9,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 1,
            style: TextStyle(color: Colors.red, fontSize: 18),
            
            onChanged: (String data) {
              setState(() {
                value9 = data;
              });
            },
            items: grades.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
                  ],


                ),
                new Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                  children: <Widget>[
                  FlatButton(
            child: Text('Calculate',style: TextStyle(fontSize:20),),
            onPressed: getDropDownItem,
            color: Colors.transparent,
            textColor: Colors.white70,
            padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
            ),
                  ]
                ),
                 new Row(
                   mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                  children: <Widget>[
                   Padding(
            padding: EdgeInsets.only(top: 0, bottom: 0),
            child :
            //Printing Item on Text Widget 
            Text('GPA ='+'$ans', 
            style: TextStyle
                (fontSize: 20, 
                color: Colors.white))),
 
                  ]
                ),

              ],
          ),
        ),
      
    );
  }
}