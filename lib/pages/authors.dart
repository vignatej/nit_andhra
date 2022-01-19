import 'package:flutter/material.dart';



class Authors extends StatelessWidget {
  Author vigna = Author(mobile:"7330776599",name: "PADURU VIGNA TEJ REDDY",email: "420217@student.nitandhra.ac.in",image: "assets/VIGNA.jpg");
  Author adithya = Author(mobile:"7330776599",name: "ADITHYA VARDHAN",email: "4202XX@student.nitandhra.ac.in",image: "assets/ADITHYA.jpg");
  Author prasanna = Author(mobile:"7330776599",name: "PRASANNA KUMAR",email: "4202XX@student.nitandhra.ac.in",image: "assets/PRASANNA.jpg");
  Author anirudh = Author(mobile:"7330776599",name: "ANIRUDH",email: "42021XX@student.nitandhra.ac.in",image: "assets/ANIRUDH.jpg");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AUTHORS",),backgroundColor: Colors.white,foregroundColor: Colors.black,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            vigna.card(),
            adithya.card(),
            prasanna.card(),
            anirudh.card(),
      
          ],
        ),
      )
    );
  }
}




class Author{
  var mobile;
  var name;
  var image;
  var email;
  Author({this.name,this.email,this.mobile,this.image});
  Card card(){
    return Card(
      elevation: 4.0,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(this.image),
              maxRadius: 75,
            ),
          ),
          
          ListTile(
            title: Text(this.name),
            subtitle: Text("${this.mobile} \n${this.email}"),
            ),
        ],
      ),
    );
  }
}