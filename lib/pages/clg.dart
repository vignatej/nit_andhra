import 'package:flutter/material.dart';

class college_page extends StatefulWidget {
  const college_page({ Key? key }) : super(key: key);

  @override
  _college_pageState createState() => _college_pageState();
}

class _college_pageState extends State<college_page> {
  var about_clg = 'National Institute of Technology, Andhra Pradesh '
  'is the 31st institution among the chain of NITs started by '
  'the Government of India. NIT Andhra Pradesh is established in the '
  'state of Andhra Pradesh recently in the academic year 2015 – 2016. '
  'Currently the Institute is offering B.Tech., M.Tech., Ph.D. and '
  'MS programmes.';
  var aboutClg = 'A new campus has been established with 172.6 acres of'
  ' land adjacent to Chennai-Kolkata Highway (NH-16) in the air-strip lands'
  ' of Tadepalligudem. CPWD had taken up the construction activity for all the'
  ' buildings using Prefabrication construction technology. The construction'
  ' work of Phase 1A buildings (Academic & laboratory complexes, Hostels, '
  'faculty and staff quarters etc.) is already completed. Presently the'
  ' institute is fully running from the permanent campus. The constructi'
  'on works of Phase 1B is also almost completed which include additiona'
  'l academic & Laboratory infrastructure along with fullfledged recreatio'
  'n & students amenities centre.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ABOUT NIT AP"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("${about_clg}",style: TextStyle(fontSize: 20),),
              SizedBox(height: 20,),
              Text("${aboutClg}",style: TextStyle(fontSize: 20),),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}