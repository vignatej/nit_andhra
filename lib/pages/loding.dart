import 'package:flutter/material.dart';


class loading extends StatefulWidget {
  const loading({ Key? key }) : super(key: key);

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  
  void do_stg() async{
    print("ya");
    await () => print("yo");
    Navigator.pushReplacementNamed(context, '/home');
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    do_stg();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("loading"),
    );
  }
}
