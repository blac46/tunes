import 'package:flutter/material.dart';


class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed:(){
          Navigator.pop;
        }, icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,)
        ),
      ),
      body: SingleChildScrollView(
        child:  SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 800,
                    width: 600,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/shadow.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
