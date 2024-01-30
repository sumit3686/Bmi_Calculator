import 'dart:async';

import 'package:bmi/calculate.dart';
import 'package:bmi/main.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class First extends StatefulWidget{
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Calculate(),));
     });
    super.initState();
  }
  Widget build(BuildContext context) {
   
      
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 47, 47),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            
            Container(
              width: double.infinity,
              height: 400,
              child: Center(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: SfRadialGauge(
                    enableLoadingAnimation: true,
                    // backgroundColor: Colors.black87,
                    axes:<RadialAxis> [
                      RadialAxis(maximum: 100,
                      interval: 2,
                      labelsPosition: ElementsPosition.outside,
                      ranges: [GaugeRange(startValue: 0, endValue: 20,startWidth: 10,endWidth: 40,color: Colors.orange.shade400,),
                      GaugeRange(startValue: 21,startWidth: 40,endWidth: 40, endValue: 40,color: Color.fromARGB(255, 86, 62, 242),),
                      GaugeRange(startValue: 41,startWidth: 20,endWidth: 40, endValue: 60,color: Color.fromARGB(255, 229, 253, 13),),
                      GaugeRange(startValue: 61,startWidth: 20,endWidth: 40, endValue: 80,color: Color.fromARGB(255, 240, 86, 14),),
                      GaugeRange(startValue: 81, endValue: 100,startWidth: 40,endWidth: 20,color: Color.fromARGB(255, 45, 234, 83),
                      )
                      ],
                      pointers: <GaugePointer>[
                        NeedlePointer(
                          value: 62,
                          needleEndWidth: 5,
                          enableAnimation: true,
                          needleColor: const Color.fromARGB(255, 245, 249, 252),
                          animationDuration: 2500,
              
                        ),
                        
                      ],
                      annotations: [
                        GaugeAnnotation(
                          widget: Text("BMI",style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.w700),),
                          positionFactor: 0.5,
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
              
              height: 100,
              width: double.infinity,
              
                
                child: Center(child: Text("Calculator",style: TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.w900),)),
              )
            
          
          ],
        ),
        
  
    );
    
  }
}