import 'package:bmi/animate/animation.dart';
import 'package:bmi/result.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:flutter/cupertino.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  @override
  var bgcolor = Colors.white54;
  var mooncolor = Colors.black;
  var flag = 0;
  var wgt = TextEditingController();
  var hgt = TextEditingController();
  int age = 19;
  var gender ="";
  var date = "today";
  bool lbflag =false;
  bool kgflag =true;
  bool cmflag =true;
  bool ftflag=false;
  bool male = false;
  bool female = false;
  var color3= Colors.black;
  var color4 = Colors.black;
  var bmistatus = "";
  var statuscolor = Colors.white;
  var bmcolor1 = Colors.black54;
  var bmcolor2 = Colors.black54;
  var bmcolor3 = Colors.black54;
  var bmcolor4 = Colors.black54;
  var bmtext = "";
  var wholder = "";
  var hholder = "";  
  var lbholder = "";
  var kgholder = "";
  var ftholder = "";
  var cmholder = "";
  var event = 0;
  var color1 = const Color.fromARGB(255, 118, 118, 118);
  var color2 = Colors.white;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          title: Goodanimation(
            delay: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Calculate",
                  style: TextStyle(fontSize: 29, color: mooncolor),
                ),
                IconButton(
                    onPressed: () {
                      if (flag == 0) {
                        bgcolor = const Color.fromARGB(255, 118, 118, 118);
                        mooncolor = Colors.white;
                        color1 = const Color.fromARGB(255, 58, 57, 57);
                        
                        
                        flag++;
                      } else if (flag == 1) {
                        bgcolor = Colors.white54;
                        mooncolor = Colors.black;
                        color1 = Colors.transparent;
                        flag--;
                      }
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.dark_mode,
                      color: mooncolor,
                    ))
              ],
            ),
          )
          ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        
        color: bgcolor,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Goodanimation(
                  delay: 12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 170,
                            width: 180,
                            decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular(20),
                              color: color1,
                              
                            ),
                            child: Column(
                              children: [
                                Text(
                            "weight",
                            style: TextStyle(fontSize: 29,color: mooncolor),
                          ),
                          Container(
                            height: 60,
                            width: 165,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: TextField(                              
                              textAlign: TextAlign.center,
                              showCursor: false,
                              controller: wgt,
                              style: const TextStyle(
                                
                                  fontSize: 29, fontWeight: FontWeight.w800),
                              keyboardType: TextInputType.datetime,
                              decoration: const InputDecoration(
                                
                                hintText: "",
                                border: InputBorder.none,
                              ),
                              
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 40,
                            width: 165,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    if(wgt.text != "" && kgflag == false){
                                      var a  = double.parse(wgt.text.toString());
                                      lbholder = wgt.text;
                                      wgt.text = (a*0.453592).toStringAsFixed(2);
                                      
                                    }
                                    else if(wgt.text != "" && kgflag == true){
                                      kgholder = wgt.text;
                                    }
                                    setState(() {
                                      kgflag = true;
                                      lbflag = false;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: kgflag ? Colors.blue : Colors.white,
                                      fixedSize: const Size(82, 40)),
                                  child: const Text("kg"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    
                                    if(wgt.text != "" && lbflag == false){
                                      
                                      
                                      
                                      var a  = double.parse(wgt.text.toString());
                                      kgholder = wgt.text;
                                    
                                      wgt.text = (a*2.20462).toStringAsFixed(2);
                                    
                                      
                                    }
                                    
                                    setState(() {
                                      lbflag = true;
                                      kgflag = false;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: lbflag ? Colors.blue : Colors.white,
                                      fixedSize: const Size(82, 40)),
                                  child:  const Text("lb"),
                                )
                              ],
                            ),
                          ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 170,
                            width: 180,
                            decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular(20),
                              color: color1,
                            ),
                            child: Column(
                              children: [
                                Text(
                            "Height",
                            style: TextStyle(fontSize: 29,color: mooncolor),
                          ),
                          Container(
                            height: 60,
                            width: 165,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: TextField(
                              controller: hgt,
                              style: const TextStyle(
                                  fontSize: 29, fontWeight: FontWeight.w800),
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                hintText: "",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 40,
                            width: 165,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    if(hgt.text != "" && cmflag == false){
                                      var a  = double.parse(hgt.text.toString());
                                      ftholder = hgt.text;
                                      hgt.text = (a*30.48).toStringAsFixed(2);
                                      
                                    }
                                    else if(hgt.text != "" && cmflag == true){
                                      cmholder = hgt.text;
                                    }
                                    setState(() {
                                      cmflag = true;
                                      ftflag = false;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: cmflag ? Colors.blue : Colors.white,
                                      fixedSize: const Size(82, 40)),
                                  child: const Text("cm"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if(hgt.text != "" && ftflag == false){
                                      ftflag = true;
                                      cmflag = false;
                                      
                                      
                                      var a  = double.parse(hgt.text.toString());
                                      cmholder = wgt.text;
                                      hgt.text = (a*0.0328084).toStringAsFixed(2);
                                    
                                    }
                                    else if(hgt.text == "" && ftflag == false){
                                      ftflag = true;
                                      cmflag = false;
                                    }
                                    setState(() {
                                      
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: ftflag ? Colors.blue : Colors.white,
                                      fixedSize: const Size(82, 40)),
                                  child: const Text("ft-in"),
                                )
                              ],
                            ),
                          ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
            
                Goodanimation(
                  delay: 14,
                  child: Container(
                    height: 145,
                    width: 375,
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(20),
                      color: color1,
                    ),
                    child: Column(
                      children: [
                        Text(
                    "Time",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300,color: mooncolor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Container(
                          height: 70,
                          width: 175,
                          
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: const Center(
                              child: Text(
                            "today",
                            style: TextStyle(
                                fontSize: 29,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          )),
                        ),
                        onTap: () async {
                          DateTime? dt = await showDatePicker(
                              context: context,
                              firstDate: DateTime(2023, 1, 1, 00, 00),
                              lastDate: DateTime.now());
                        },
                      ),
                      Container(
                          height: 70,
                          width: 175,
                          decoration: BoxDecoration( 
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                              
                          ),
                          child: CupertinoPicker(
                              itemExtent: 40,
                              onSelectedItemChanged: (int index) {
                                setState(() {
                                  event = index;
                                });
                              },
                              children: const [
                                Center(
                                    child: Text(
                                  "Morning",
                                  style: TextStyle(
                                      fontSize: 29,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                )),
                                Center(
                                    child: Text(
                                  "Afternoon",
                                  style: TextStyle(
                                      fontSize: 29,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                )),
                                Center(
                                    child: Text(
                                  "Evening",
                                  style: TextStyle(
                                      fontSize: 29,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                )),
                                Center(
                                    child: Text(
                                  "Night",
                                  style: TextStyle(
                                      fontSize: 29,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                )),
                              ])),
                    ],
                  ),
                      ],
                    ),
                  ),
                ),
                
                const SizedBox(
                  height: 15,
                ),
            
                Goodanimation(
                  delay: 16,
                  child: Container(
                    height: 125,
                    width: 375,
                    decoration: BoxDecoration( 
                      color: color1,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text("Age",style: TextStyle(fontSize: 29, fontWeight: FontWeight.w300,color: mooncolor ),),
                  const SizedBox(
                    height: 9,
                  ),
                  Container(
                    height: 60,
                    width: 355,
                    decoration: BoxDecoration( 
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                              
                    ),
                    child: NumberPicker(
                      minValue: 0, 
                      maxValue: 100,
                     
                      value: age, 
                      onChanged: (int value){
                      setState(() {
                        age = value;
                      });
                    },
                    haptics: true,
                    axis: Axis.horizontal,
                    selectedTextStyle: const TextStyle(fontSize: 30,color: Colors.deepPurpleAccent,fontWeight: FontWeight.w700),
                    ),
                  ),
                              
                              
                      ],
                              
                    ),
                  ),
                ),
                
                const SizedBox(
                  height: 15,
                ),
                Goodanimation(
                  delay: 18,
                  child: Container(
                    height: 135,
                    width: 375,
                    decoration: BoxDecoration( 
                      color: color1,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                            height: 90,
                            width: 170,
                            decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            
                            child: IconButton(
                              onPressed: (){
                                male = true;
                                female= false;
                                if(male = true){
                                  color4=Colors.lightBlue;
                                  color3=Colors.black;
                                  gender="Male";
                                }
                                setState(() {
                                  
                                });
                    
                              }, icon: Center(child: Icon(Icons.male_sharp,size: 90,color: color4,)))
                            ),
                            Text("Male",style: TextStyle(color: mooncolor,fontSize: 16),),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 90,
                              width: 170,
                              decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                              child: IconButton(onPressed: (){
                                female = true;
                                male = false;
                                if(female = true){
                                  color3=Colors.lightBlue;
                                  color4=Colors.black;
                                  gender = "Female";
                                  
                                }
                                setState(() {
                                  
                                });
                    
                              }, 
                              icon: Center(child: Icon(Icons.female_sharp,size: 90,color: color3,)))
                            ),
                            Text("Female",style: TextStyle(color: mooncolor,fontSize: 16),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Goodanimation(
                  delay: 20,
                  child: Container(
                    height: 70,
                    width: 355,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        
                        
                        if((wgt.text != "") && (hgt.text != "") && (event != "")&& (age != "") && (gender != "") ){
                          var a1,a2,a3,a4;
                        if(kgflag == true){
                          
                          a1 = double.tryParse(wgt.text.toString());
                          a2 = a1*(1.20462);
                  
                        }
                        else{
                          
                          a2 = double.tryParse(wgt.text.toString());
                          
                          a1 = double.parse((a2 * (0.453592)).toStringAsFixed(2));
                        }
                        if(cmflag == true){
                          a3 = double.tryParse(hgt.text.toString());
                         
                          a4 = double.parse((a3 *0.0328084).toStringAsFixed(2));
                        }
                        else{
                          a4 = double.tryParse(hgt.text.toString());
                          a3 = double.parse((a4 * 30.48).toStringAsFixed(2));
                        }
                        var a = a3;
                        var b = a1;
                        var c = age;  
                        var d = gender;
                        var bmi = (a1/((a3/100)*(a3/100))).toStringAsFixed(2);
                        var e = event;
                        if((double.parse(bmi)) < 18.5){
                          bmistatus = "underweight";
                          statuscolor = Colors.blue;
                          bmcolor1 = Colors.blue;
                          bmcolor2 = Colors.black54;
                          bmcolor3 = Colors.black54;
                          bmcolor3 = Colors.black54;
                          bmtext = "You need to increase the weight!";
                        }
                        else if(((double.parse(bmi)) >=18.5) && ((double.parse(bmi))) < 24.9){
                          bmistatus = "Normal";
                          statuscolor = Colors.green;
                          bmcolor2 = Colors.green;
                          bmcolor1 = Colors.black54;
                          bmcolor3 = Colors.black54;
                          bmcolor4 = Colors.black54;
                          bmtext = "👍Thumbs Up! You've done a great job and now only need to maintain your healthy lifestyle.";
                        }
                        else if(((double.parse(bmi)) >= 25) && ((double.parse(bmi)) < 29.9) ){
                          bmistatus = "Overweight";
                          statuscolor = Colors.orange;
                          bmcolor3 = Colors.orange;
                          bmcolor1 = Colors.black54;
                          bmcolor2 = Colors.black54;
                          bmcolor4 = Colors.black54;
                          bmtext = "You need to mantain your weight according to height!";
                          
                        }
                        else if(((double.parse(bmi)) >= 29.9) && ((double.parse(bmi)) < 34.9) ){
                          bmistatus = "Obese Class |";
                          statuscolor = Colors.deepOrange.shade500;
                          bmcolor4 = Colors.red;
                          bmcolor1 = Colors.black54;
                          bmcolor2 = Colors.black54;
                          bmcolor3 = Colors.black54;
                          bmtext = "Your weight is to much according to height, Please maintain";
                        }
                        else if(((double.parse(bmi)) >= 34.9) && ((double.parse(bmi)) < 39.9) ){
                          bmistatus = "Obese Class |";
                          statuscolor = Colors.deepOrange.shade700;
                          bmcolor4 = Colors.deepOrange.shade700;
                          bmcolor1 = Colors.black54;
                          bmcolor2 = Colors.black54;
                          bmcolor3 = Colors.black54;
                          bmtext = "Your weight is to much according to height, Please maintain";
                        }
                        else if((double.parse(bmi)) >= 39.9){
                          bmistatus = "Obese Class |";
                          statuscolor = Colors.red;
                          bmcolor4 = Colors.red;
                          bmcolor1 = Colors.black54;
                          bmcolor2 = Colors.black54;
                          bmcolor3 = Colors.black54;
                          bmtext = "Your weight is to much according to height, Please maintain";
                        }
                        
                          setState(() {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => result(
                                  ht: a, 
                                  gt: b, 
                                  age: c, 
                                  gender: d,
                                  event: e,
                                  bmi: bmi,
                                  bmistatus: bmistatus,
                                  statuscolor: statuscolor,
                                  bmcolor1:bmcolor1,
                                  bmcolor2:bmcolor2,
                                  bmcolor3:bmcolor3,
                                  bmcolor4:bmcolor4,
                                  bmtext: bmtext,
                    
                                  
                                  )));
                        });
                    
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ), 
                      child: const Text("Calculate",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),
                      ),
                      ),
                    
                  ),
                ),
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
