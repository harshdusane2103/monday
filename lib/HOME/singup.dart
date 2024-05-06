import 'package:flutter/material.dart';
import 'package:monday/utils/color.dart';


class singscreen extends StatefulWidget {
  const singscreen({super.key});

  @override
  State<singscreen> createState() => _singscreenState();
}

class _singscreenState extends State<singscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: InkWell(
            onTap: (){
              Navigator.of(context).pop('/');
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white70,
            ),
          ),


        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create Account ',style:TextStyle(color: Colors.white,fontSize:48,fontWeight: FontWeight.bold),),
                  Text('Please fill the input blow here',style:TextStyle(color: Colors.white70,fontSize:14,fontWeight: FontWeight.bold),),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 8),
              child: Container(
                height: 60,
                width: 380,
                margin: const EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  color: const Color(0xff292f38),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.grey,
                      ),

                      border: InputBorder.none,
                      hintText: 'Harsh Dusane ',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 8),
              child: Container(
                height: 60,
                width: 380,
                margin: const EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  color: const Color(0xff292f38),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.grey,
                      ),

                      border: InputBorder.none,
                      hintText: 'user123@email.com',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16,right: 8),
              child: Container(
                height: 60,
                width: 350,
                margin: const EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  color: const Color(0xff292f38),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),

                      border: InputBorder.none,
                      hintText: '    Password',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,bottom: 8,right: 8),
              child: Container(
                height: 60,
                width: 350,
                margin: const EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  color: const Color(0xff292f38),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),

                      border: InputBorder.none,
                      hintText: '   Confirm Password',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:90,top:16),
              height: 60,
              width: 210,
              decoration: BoxDecoration(
                color: primarycolor,
                borderRadius: BorderRadius.circular(30),

              ),
              child: Center(child: Text('Sing up ',style: TextStyle(color: Colors.black,fontSize:24,fontWeight: FontWeight.bold),)),
            ),

            SizedBox(height:140,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account ? ',style: TextStyle(color: Colors.white54,fontSize: 14),),
                  Text('Sing in',style: TextStyle(color: primarycolor),)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
