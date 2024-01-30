import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class result extends StatelessWidget{
  @override
  var ht,gt,gender,age,event,bmi,bmistatus,statuscolor,bmcolor1,bmcolor2,bmcolor3,bmcolor4,bmtext;
  result({
     required this.ht,
     required this.gt,
     required this.age,
     required this.gender,
     required this.event,
     required this.bmi,
     required this.bmistatus,
     required this.statuscolor,
     required this.bmcolor1,
     required this.bmcolor2,
     required this.bmcolor3,
     required this.bmcolor4,
     required this.bmtext,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 350,
              // color: Colors.amber,
              child: Center(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: SfRadialGauge(
                    enableLoadingAnimation: true,
                    // backgroundColor: Colors.black87,
                    axes:<RadialAxis> [
                      RadialAxis(maximum: 35,
                      minimum: 15,
                      startAngle: 160,
                      endAngle: 20,
                      interval: 2,
                      labelsPosition: ElementsPosition.outside,
                      ranges: [GaugeRange(startValue: 15, endValue: 18.5,startWidth: 70,endWidth: 70,color: Colors.blue,),
                      GaugeRange(startValue: 18.5,startWidth: 70,endWidth: 70, endValue: 24.9,color: Colors.green,),
                      GaugeRange(startValue: 24.9,startWidth: 70,endWidth: 70, endValue: 29.8,color: Colors.orange,),
                      GaugeRange(startValue: 29.8,startWidth: 70,endWidth: 70, endValue: 35,color: Color.fromARGB(255, 240, 86, 14),
                      
                      )
                      ],
                      pointers: <GaugePointer>[
                        NeedlePointer(
                          value: double.parse(bmi),
                          needleEndWidth: 5,
                          enableAnimation: true,
                          needleColor: Color.fromARGB(255, 14, 1, 80),
                          animationDuration: 2500,
              
                        ),
                        
                      ],
                      annotations: [
                        
                        GaugeAnnotation(
                          
                          widget: Column(
                            
                            children: [
                              Text("Your BMI is ....",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w900),),
                              Text("$bmi",style: TextStyle(fontSize: 55,fontWeight: FontWeight.w900)),

                            ],
                          ),
                          positionFactor: 1.4,
                          angle: 90,
                          )
                          ],
                      
                      )
                    ],
                  ),
                ), 
              ),
            ),
            Container(
              
              
              
            ),
            
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: statuscolor,
              ),
              child: Center(child: Text(bmistatus,style: TextStyle(fontSize: 31,fontWeight: FontWeight.w700),)),
            ),
            SizedBox(
              height: 10,
            ),
            Center(child: Text("$gt kg |$ht cm | $gender | $age year old",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),),
            
            SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: bmcolor1,
              ),
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Underweight",style: TextStyle(color: Colors.white,fontSize: 23),),
                  Text(" >=18.5",style: TextStyle(color: Colors.white,fontSize: 23),)
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: bmcolor2,
              ),
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Normal",style: TextStyle(color: Colors.white,fontSize: 23),),
                  Text("18.5 - 24.9",style: TextStyle(color: Colors.white,fontSize: 23),)
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: bmcolor3,
              ),
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Overweight",style: TextStyle(color: Colors.white,fontSize: 23),),
                  Text("25 - 29.9",style: TextStyle(color: Colors.white,fontSize: 23),)
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: bmcolor4,
              ),
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Obese Class |",style: TextStyle(color: Colors.white,fontSize: 23),),
                  Text(">=30",style: TextStyle(color: Colors.white,fontSize: 23),)
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration( 
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black,
                width: 2),
                color: const Color.fromARGB(26, 124, 18, 18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(bmtext,style: TextStyle(fontSize: 21,fontWeight: FontWeight.w300),),
              ),
            )
          ],
        ),
      )
      
    );
  }
}