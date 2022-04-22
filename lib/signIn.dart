import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup/forgot.dart';
import 'package:signup/verification.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  TextEditingController EmailControllar =TextEditingController();
  TextEditingController PasswordControllar =TextEditingController();
  bool isvisible=true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
                      image: DecorationImage(image: AssetImage('images/yeah.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Welcome to ',style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    ),
                        SizedBox(height: 15,),
                        Text('PlayTunes',style: TextStyle(color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                        ),
                        SizedBox(height: 25,),
                        Text('SIGN IN ',style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                        ),
                        SizedBox(height: 30,),
                        ListTile(
                          title: Text('Email or Username*',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                          ),
                          subtitle: TextField(
                            controller: EmailControllar ,
                            decoration: InputDecoration(
                                hintText: 'Enter username',
                                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.input,color: Colors.white,)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        ListTile(
                          title: Text('Password*',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                          ),
                          subtitle: TextField(
                            controller: PasswordControllar,
                            decoration: InputDecoration(
                                hintText: 'Enter Password',
                                suffixIcon: IconButton(onPressed: (){
                                  setState(() {
                                    isvisible = !isvisible;
                                  });
                                },
                                    icon: Icon(isvisible? Icons.visibility_off : Icons.visibility,color: Colors.white,)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 40,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Forget Password?',
                            style: TextStyle(color: Colors.white,),
                              ),
                          ],
                        ),
                        SizedBox(height: 40,),
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              print('good');
                              if(EmailControllar.text.isEmpty||
                                  PasswordControllar.text.isEmpty
                              ){
                                print("is empty");
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content:
                                  Text("Invalid"),
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
                                child: Text('Sign In',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 3,
                              width: 100,
                              color: Colors.white,
                            ),
                            Text(' Or connect with ',style:TextStyle(color: Colors.white) ,),
                            Container(
                              height: 3,
                              width: 100,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/facebook.jpg'),
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage('images/plus.jpg'),
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage('images/twitter.jpg'),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don`t have an Account?',style: TextStyle(
                          color: Colors.white,
                        ),),
                        Text('SignUp',style: TextStyle(
                            color: Colors.red
                        ),)
                      ],
                    ),
                     ]
                    )

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
