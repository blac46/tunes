import 'package:flutter/material.dart';
import 'package:signup/verification.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  TextEditingController EmailControllar =TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop;
        }, icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,)),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 800,
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('images/help.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('FORGOT PASSWORD?',style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 30
                          ),
                          ),
                          Text('It`s Okay Reset your Password',style: TextStyle(
                              color: Colors.white,
                              fontSize: 19
                          ),
                          ),
                          SizedBox(height: 40,),
                          Text('We will send you One Time Password on',style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                          ),
                          ),
                          SizedBox(height: 5,),
                          Text('this email',style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                          ),
                          ),
                          SizedBox(height: 60,),
                          ListTile(
                            title: Text('Email',style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                            ),
                            ),
                            subtitle: TextField(
                              controller: EmailControllar,
                              decoration: InputDecoration(
                                hintText: 'Enter Email',
                                suffixIcon: IconButton(onPressed: (){},
                                    icon: Icon(Icons.attach_email,color: Colors.white,)),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)
                                )

                              ),
                            ),
                          ),
                          SizedBox(height: 60,),
                          Center(
                            child: GestureDetector(
                              onTap: (){
                                print('good');
                                if(EmailControllar.text.isEmpty
                                ){
                                  print("is empty");
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content:
                                    Text("Invalid"
                                        ),
                                      backgroundColor: Colors.deepOrange,
                                      duration: Duration(seconds: 1),
                                    ),
                                  );
                                }else{

                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (_)=> Verification())
                                  );
                                };
                              },
                              child: Container(
                                height: 50,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.deepOrange,
                                  border: Border.all(
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                child: Center(
                                  child: Text('Continue...',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
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
