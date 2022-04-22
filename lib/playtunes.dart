import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup/signIn.dart';


class Playtunes extends StatefulWidget {
  const Playtunes({Key? key}) : super(key: key);

  @override
  State<Playtunes> createState() => _PlaytunesState();
}

class _PlaytunesState extends State<Playtunes> {
  @override
  TextEditingController EmailControllar =TextEditingController();
  TextEditingController PasswordControllar =TextEditingController();
  TextEditingController UsernameControllar =TextEditingController();
  bool isvisible=true;
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
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
                    height: 700,
                    width: 600,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/dark.jpg'),
                      fit: BoxFit.cover)
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Welcome  to ',style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                      ),
                    Text('PlayTunes ',style: TextStyle(color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    ),
                        SizedBox(height: 20,),
                    Text('SIGN UP ',style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                    ),
                        SizedBox(height: 30,),
                        ListTile(
                          title: Text('Username*',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                          ),
                          subtitle: TextField(
                            controller: UsernameControllar ,
                            decoration: InputDecoration(
                              hintText: 'Enter username',
                              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.input,color: Colors.white,)),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)
                              )
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        ListTile(
                          title: Text('Email*',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                          ),
                          subtitle: TextField(
                            controller: EmailControllar ,
                            decoration: InputDecoration(
                                hintText: 'Enter email',
                                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.attach_email,color: Colors.white,)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
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
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.check_box_outline_blank,color: Colors.white,)),
                            Text('I have read and agree to',style: TextStyle(
                              color: Colors.white,fontWeight: FontWeight.bold
                            ),
                            ),
                            Text('Terms and Condition',style: TextStyle(
                                color: Colors.red,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              print('good');
                              if(EmailControllar.text.isEmpty||
                                  PasswordControllar.text.isEmpty||UsernameControllar.text.isEmpty
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
                                        builder: (_)=> SignIn())
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
                                child: Text('Sign Up',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
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
                        SizedBox(height: 15,),
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
                        SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an Account?',style: TextStyle(
                              color: Colors.white,
                            ),),
                            Text('SignIn',style: TextStyle(
                              color: Colors.red
                            ),)
                          ],
                        )

                      ],
                    ),
                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
