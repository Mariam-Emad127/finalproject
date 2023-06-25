import 'package:final_project/patient/reference.dart';
import 'package:flutter/material.dart';

  class PatientPage extends StatefulWidget {
    const PatientPage({super.key}) ;

    @override
    State<PatientPage> createState() => _PatientPageState();
  }

  class _PatientPageState extends State<PatientPage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
      appBar: AppBar(
       backgroundColor: Colors.transparent,
        elevation: 0,
        ),
        body: Container(
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
              Container(
              // patient6f5 (3:154)
              margin: EdgeInsets.only(top: 30,right: 10,left: 10 ,bottom: 10),
              child:
              Center(
                child: Text(
                  'patient page ',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    height: 1.2575,
                    color: Color(0xff439be8),
                  ),
                ),
              ),
            ),
               Container(
                margin: EdgeInsets.all(10),
                width: 340,
                height: 55,
                child:
                Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child:
                      Container(
                          padding: EdgeInsets.all(5),
                          width: 340,
                          height: 55,
                          child:
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "name:",
                                hintStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.black,
                                        width: 2))
                            ),
                          )
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                margin:EdgeInsets.all(10),
                width: 340,
                height: 55,
                child:
                Stack(
                  children: [
                    Positioned(
                      // rectangle326MZ (3:158)
                      left: 0,
                      top: 0,
                      child:
                      Container(
                        padding: EdgeInsets.all(5),
                        width:340,
                        height: 55,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "age :",
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black,
                                      width: 2))
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 340,
                height: 55,
                child:
                Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child:
                      Container(
                          padding: EdgeInsets.all(5),
                          width: 340,
                          height: 55,
                          child:
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "phone number :",
                                hintStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.black,
                                        width: 2))
                            ),
                          )
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                margin:EdgeInsets.all(10),
                width: 340,
                height: 150,
                child:
                Stack(
                  children: [
                    Positioned(
                      // rectangle326MZ (3:158)
                      left: 0,
                      top: 0,
                      child:
                      Container(
                        padding: EdgeInsets.all(5),
                        width:340,
                        height: 150,
                        child: TextFormField(
                          maxLines: 10,
                          decoration: InputDecoration(
                              hintText: "treatment:",
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black,
                                      width: 2))
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                margin:EdgeInsets.all(10),
                width: 340,
                height:150,
                child:
                Stack(
                  children: [
                    Positioned(
                      // rectangle326MZ (3:158)
                      left: 0,
                      top: 0,
                      child:
                      Container(
                        padding: EdgeInsets.all(5),
                        width:340,
                        height: 150,
                        child: TextFormField(
                          maxLines: 10,
                          decoration: InputDecoration(
                              hintText: "food system:",
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black,
                                      width: 2))
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            Row(
              children: [
                SizedBox(width: 250,),
                TextButton(onPressed: (){ Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Reference();
                }));},
                    child: Text("Reference"),style: TextButton.styleFrom(primary: Color(0xff439be8),textStyle: TextStyle(fontSize: 20))),
              ],
            )
          ]

        )
        ),
        ),
      );





    }
  }

