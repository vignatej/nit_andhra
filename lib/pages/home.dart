import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selected_index = 0;
  List<Widget> home_body = [
      Container(
        decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/epic_home.png"),
                fit: BoxFit.cover,
              ),
            ),
          child: Body(),
        ),
      Text("  Conversations",style: TextStyle(fontSize: 30),),
      Text("complaints"),
      Text("profile"),
    ];
void ontapped(int given_index){
  setState((){selected_index = given_index;});
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text(
          "NIT Andhra Pradesh",
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      
      body: home_body.elementAt(selected_index),
      
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey[800],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'complaints',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: 'profile',
          ),
        ],
        currentIndex: selected_index,
        onTap: ontapped,
      )

    );
  }
}


class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      
      children: [
        SizedBox(height: 20,),


        SizedBox(
              
              width: 350.0,
              height: 50.0,
              child: ElevatedButton(
                child: Text('ABOUT THE COLLEGE'),
                onPressed: (){
                  Navigator.pushNamed(context, '/clg');
                  },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
              ),
              
            ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 160.0,
              height: 50.0,
              child: ElevatedButton(
                child: Text('RESEARCH'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                onPressed: (){},
              ),
            ),
            SizedBox(width: 30,),
            SizedBox(
              width: 160.0,
              height: 50.0,
              child: ElevatedButton(
                child: Text('FACULTY'),
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        SizedBox(
              
              width: 350.0,
              height: 50.0,
              child: ElevatedButton(
                child: Text('EVENT GALLERY'),
                onPressed: (){}, 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
              ),
            ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 160.0,
              height: 50.0,
              child: ElevatedButton(
                child: Text('ACADEMICS'),
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
              ),
            ),
            SizedBox(width: 30,),
            SizedBox(
              width: 160.0,
              height: 50.0,
              child: ElevatedButton(
                child: Text('Authors'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                onPressed: (){
                  Navigator.pushNamed(context, '/auth');
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),

        SizedBox(
              
              width: 350.0,
              height: 50.0,
              child: ElevatedButton(
                child: Text('RESOURCE HUB'),
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                
              ),
              
            ),
        SizedBox(height: 20,),
        
        
        
      ],
    );
  }
}
