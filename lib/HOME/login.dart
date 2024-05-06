import 'package:flutter/material.dart';
import 'package:monday/utils/color.dart';




class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.height;


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   backgroundColor: Colors.black,
        //   leading: Icon(
        //     Icons.menu,
        //     color: Colors.white,
        //   ),
        //
        //   title: Center(
        //     child: Text(
        //       'Login ',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontWeight: FontWeight.w700,
        //       ),
        //     ),
        //   ),
        //   actions: [
        //     Icon(
        //       Icons.arrow_forward_ios,
        //       color: Colors.white,
        //     ),
        //   ],
        // ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height:200,
              width: 200,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit:BoxFit.cover,
                  image: AssetImage('asstes/images/banner.png'),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   Text('Login',style:TextStyle(color: Colors.white,fontSize:32,fontWeight: FontWeight.bold),),
                Text('Please Sign  in to continue',style:TextStyle(color: Colors.white70,fontSize:18,fontWeight: FontWeight.bold),),


              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
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
                    hintText: '    user123@email.com',
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
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/sing');
            },
            child: Container(
              margin: EdgeInsets.only(left:90,top:16),
              height: 60,
              width: 210,
              decoration: BoxDecoration(
                color: primarycolor,
                borderRadius: BorderRadius.circular(30),

              ),
              child: Center(child: Text('LOGIN',style: TextStyle(color: Colors.black,fontSize:24,fontWeight: FontWeight.bold),)),
            ),
          ),
          SizedBox(height: 3,),
          Center(child: Text('Forget Password ?',style: TextStyle(color: primarycolor,fontSize: 14),)),
          SizedBox(height:140,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account ? ',style: TextStyle(color: Colors.white54,fontSize: 14),),
                Text('Singup',style: TextStyle(color: primarycolor),)
              ],
            ),
          )

        ],
      ),
      ),
    );
  }
}
