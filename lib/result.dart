import 'package:bmi/animate/animation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class result extends StatefulWidget {
  @override
  var ht,
      gt,
      gender,
      age,
      event,
      bmi,
      bmistatus,
      statuscolor,
      bmcolor1,
      bmcolor2,
      bmcolor3,
      bmcolor4,
      bmtext;
  result({
    super.key,
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
  State<result> createState() => _resultState();
}

class _resultState extends State<result> with SingleTickerProviderStateMixin {
  late Animation textanimation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    textanimation = Tween(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
        parent: controller, curve: Curves.fastEaseInToSlowEaseOut))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Goodanimation(
            delay: 4,
            child: SizedBox(
              width: double.infinity,
              height: 350,
              // color: Colors.amber,
              child: Center(
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: SfRadialGauge(
                    enableLoadingAnimation: true,
                    // backgroundColor: Colors.black87,
                    axes: <RadialAxis>[
                      RadialAxis(
                        maximum: 35,
                        minimum: 15,
                        startAngle: 160,
                        endAngle: 20,
                        interval: 2,
                        labelsPosition: ElementsPosition.outside,
                        ranges: [
                          GaugeRange(
                            startValue: 15,
                            endValue: 18.5,
                            startWidth: 70,
                            endWidth: 70,
                            color: Colors.blue,
                          ),
                          GaugeRange(
                            startValue: 18.5,
                            startWidth: 70,
                            endWidth: 70,
                            endValue: 24.9,
                            color: Colors.green,
                          ),
                          GaugeRange(
                            startValue: 24.9,
                            startWidth: 70,
                            endWidth: 70,
                            endValue: 29.8,
                            color: Colors.orange,
                          ),
                          GaugeRange(
                            startValue: 29.8,
                            startWidth: 70,
                            endWidth: 70,
                            endValue: 35,
                            color: const Color.fromARGB(255, 240, 86, 14),
                          )
                        ],
                        pointers: <GaugePointer>[
                          NeedlePointer(
                            value: double.parse(widget.bmi),
                            needleEndWidth: 5,
                            enableAnimation: true,
                            needleColor: const Color.fromARGB(255, 14, 1, 80),
                            animationDuration: 2500,
                          ),
                        ],
                        annotations: [
                          GaugeAnnotation(
                            widget: Column(
                              children: [
                                const Text(
                                  "Your BMI is ....",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text("${widget.bmi * textanimation.value}",
                                    style: const TextStyle(
                                        fontSize: 55,
                                        fontWeight: FontWeight.w900)),
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
          ),
          Container(),
          const SizedBox(
            height: 10,
          ),
          Goodanimation(
            delay: 10,
            child: Container(
              height: 50,
              width: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: widget.statuscolor,
              ),
              child: Center(
                  child: Text(
                widget.bmistatus,
                style:
                    const TextStyle(fontSize: 31, fontWeight: FontWeight.w700),
              )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Goodanimation(
              delay: 13,
              child: Center(
                child: Text(
                  "${widget.gt} kg |${widget.ht} cm | ${widget.gender} | ${widget.age} year old",
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 17),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Goodanimation(
            delay: 15,
            child: Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: widget.bmcolor1,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Underweight",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                  Text(
                    " >=18.5",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Goodanimation(
            delay: 17,
            child: Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: widget.bmcolor2,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Normal",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                  Text(
                    "18.5 - 24.9",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Goodanimation(
            delay: 19,
            child: Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: widget.bmcolor3,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Overweight",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                  Text(
                    "25 - 29.9",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Goodanimation(
            delay: 21,
            child: Container(
              height: 45,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: widget.bmcolor4,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Obese Class |",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                  Text(
                    ">=30",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Goodanimation(
            delay: 23,
            child: Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 2),
                color: const Color.fromARGB(26, 124, 18, 18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.bmtext,
                  style: const TextStyle(
                      fontSize: 21, fontWeight: FontWeight.w300),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
