import 'package:flutter/material.dart';
import '/detail.dart';
import '/drawer.dart';
import '/login.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.brown[400],
      // appBar: AppBar(
      // // title: const Text('HOME PAGE'),
      //   backgroundColor: Colors.brown[500],
      //
      // ),
      // drawer: const MainDrawer(),
      body:ListView(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                   padding: EdgeInsets.only(top: 150),
                  child: const Text('WELCOME',
                    style: TextStyle(
                      fontSize: 40,fontWeight: FontWeight.w800,
                      color: Colors.brown,
                    ),
                  ),
        ),
             Container(
               child: Image.asset('assets/image.webp'),

             ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute
                        (builder: (context)=> const MyForm(),));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                    ),
                    child:
                        const Text('SignUp',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        ),
                ),
                ElevatedButton(
                  onPressed: (){
                   Navigator.push(context, MaterialPageRoute
                      (builder: (context)=> const MyLogin(),));
                   },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.brown,
                   ),
                child:
                       const Text('Login',
                      style: TextStyle(
                      fontSize: 20,
                     ),
                      ),
                     ),
                ]
                 ),
            ),
          ],

      ),
      );



  }
}


