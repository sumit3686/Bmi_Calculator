import 'dart:async';

import 'package:bmi/calculate.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class First extends StatefulWidget{
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 2700), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Calculate(),));
     });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   
      
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 46, 47, 47),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Center(
                child: SizedBox(
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
                      GaugeRange(startValue: 21,startWidth: 40,endWidth: 40, endValue: 40,color: const Color.fromARGB(255, 86, 62, 242),),
                      GaugeRange(startValue: 41,startWidth: 20,endWidth: 40, endValue: 60,color: const Color.fromARGB(255, 229, 253, 13),),
                      GaugeRange(startValue: 61,startWidth: 20,endWidth: 40, endValue: 80,color: const Color.fromARGB(255, 240, 86, 14),),
                      GaugeRange(startValue: 81, endValue: 100,startWidth: 40,endWidth: 20,color: const Color.fromARGB(255, 45, 234, 83),
                      )
                      ],
                      pointers: const <GaugePointer>[
                        NeedlePointer(
                          value: 62,
                          needleEndWidth: 5,
                          enableAnimation: true,
                          needleColor: Color.fromARGB(255, 245, 249, 252),
                          animationDuration: 1700,
              
                        ),
                        
                      ],
                      annotations: const [
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
            const SizedBox(
              
              height: 100,
              width: double.infinity,
              
                
                child: Center(child: Text("Calculator",style: TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.w900),)),
              )
            
          
          ],
        ),
        
  
    );
    
  }
}