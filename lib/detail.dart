import 'package:flutter/material.dart';
import '/login.dart';
import 'package:image_picker/image_picker.dart';
// class SignUp extends StatelessWidget {
//   const SignUp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('SignUp Page'),
//
//       ),
//       body:Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('We are in SignUp Page',
//             style: TextStyle(
//               fontSize: 30,
//             ),
//             ),
//             FloatingActionButton(
//               child: Icon(Icons.arrow_back),
//                 onPressed: (){
//                 Navigator.pop(context);
//                 } )
//
//           ],
//         ),),
//     );
//   }
// }

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}
// making a class State class.
// This class holds data related to the form.
class _MyFormState extends State<MyForm> {
  //creating instance for image picker

  //making a variable to assign global key
  // that uniquely identifies the Form widget
  // and allows validation of the form.

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.brown[400],
      body:
         ListView(
          children: [
            Container(
              child: Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/jenny.jpg'),
                    ),
                    Positioned(
                        bottom: 20,
                        right: 20,
                        child: IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                               context: context, builder: (context){
                                 return Container(
                                  height: 100,
                                   width: MediaQuery.of(context).size.width,
                                   margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                                   child: ListView(
                                       children: [
                                         Center(
                                           child: Container(
                                             child: Text('Choose Profile Photo',
                                             style: TextStyle(
                                               fontSize: 20,
                                               color: Colors.brown,
                                               fontWeight: FontWeight.w500,
                                             )
                                             ),
                                           ),
                                         ),
                                         Padding(
                                           padding: const EdgeInsets.only(top: 20),
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                               IconButton(
                                                   onPressed: (){},
                                                   icon: Icon(Icons.camera)),
                                               IconButton(
                                                   onPressed: (){},
                                                   icon: Icon(Icons.image))
                                             ],
                                           ),
                                         )
                                       ],
                                     ),

                                 );
                              }
                              );

                            },
                          icon: Icon(Icons.camera_alt,
                            color: Colors.brown,
                            size: 28,),
                        )
                    ),
                  ],
                ),
              ),
             ),

                Container(
             padding: EdgeInsets.only(
                 top: MediaQuery.of(context).size.height *0.05,
                 right: 35,
                 left: 35),
                child: Form(
                //  passing the key here
                key: _formKey,
                child: Column(
             children: [
               TextFormField(
                 decoration: const InputDecoration(
                   prefixIcon: Icon(Icons.person,
                   color: Colors.brown,),
                     hintText: " Name",
                   hintStyle: TextStyle(color: Colors.brown),
                   labelText: "Name",
                   labelStyle: TextStyle(color: Colors.brown),
                   filled: true,
                   fillColor: Colors.white,
                   // border: OutlineInputBorder(
                   //   borderRadius: BorderRadius.circular(10),
                   //   borderSide: const BorderSide(),
                   //
                   // )
                 ),
                 // writing the conditions in validator
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return 'Please enter your name';
                   }
                   if(value.length<3){
                     return 'Name is less than 3 character';
                   }

                   return null;
                 },
               ),
               const SizedBox(height: 20),
               TextFormField(
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: Colors.white,
                     prefixIcon: const Icon(Icons.mail,
                       color: Colors.brown,),
                     labelText: "Email",
                     hintText: "Enter Email",
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5),
                       borderSide: const BorderSide(),
                     )
                 ),
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return 'Please enter your email';
                   }
                   return null;
                 },
               ),
               const SizedBox(height: 20),
               TextFormField(
                 obscureText: true,
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: Colors.white,
                     labelText: "Password",
                     prefixIcon: const Icon(Icons.lock,
                       color: Colors.brown,),
                     hintText: "Enter Password",
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5),
                       borderSide: const BorderSide(),
                     )
                 ),
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return 'Please enter your password';
                   }
                   return null;
                 },
               ),
               const SizedBox(height: 20),
               TextFormField(
                 keyboardType: TextInputType.phone,
                 decoration: InputDecoration(
                     filled: true,
                     fillColor: Colors.white,
                     labelText: "Phone Number",
                     prefixIcon: const Icon(Icons.add_call,
                       color: Colors.brown,),
                     hintText: "Enter Phone Number",
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5),
                       borderSide: const BorderSide(),
                     )
                 ),
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                     return 'Please enter  null';
                   }
                   if(value.length!=10){
                     return 'Please enter valid mobile number';
                   }
                   return null;
                 },
               ),
                   const SizedBox(height: 20),
                    Container(
                        child:  TextButton(
                                 onPressed: () {
                          //here it will validate our form on the basis of its current state
                          if (_formKey.currentState!.validate()) {
                                print("Validated");
                             }
                          else
                         {
                         print("Not Validated");
                            }
                           },
                     child: const Text('Sign Up',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                fontSize: 27, fontWeight: FontWeight.w500, color: Colors.white
            ),
                     )),
               ),

               // ElevatedButton(
               //   style: ElevatedButton.styleFrom(
               //     primary: Colors.white,
               //   ),
               //   onPressed: () {
               //     //here it will validate our form on the basis of its current state
               //     if (_formKey.currentState!.validate()) {
               //        print("Validated");
               //     }
               //     else
               //       {
               //         print("Not Validated");
               //       }
               //   },
               //   child: const Text('SignUp',
               //     style: TextStyle(color: Colors.brown),
               //   ),
               //
               // ),
               // Row(
               //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
               //     children: [
               //       const Text(
               //         'Sign Up',
               //         style: TextStyle(
               //             fontSize: 27, fontWeight: FontWeight.w500, color: Colors.white
               //         ),
               //       ),
               //       CircleAvatar(
               //         backgroundColor: Colors.white,
               //         child: IconButton(
               //           onPressed: (){
               //             _formKey.currentState!.validate();
               //           },
               //           icon: const Icon(Icons.arrow_forward, color: Colors.brown),
               //         ),
               //       ),
               //     ]),
                      Container(
                 child:  TextButton(
                     onPressed: (){
                       Navigator.push(context, MaterialPageRoute
                         (builder: (context)=> const MyLogin(),));
                     },
                     child: const Text('Sign In',
                       style: TextStyle(
                         decoration: TextDecoration.underline,
                         fontSize: 18,
                         color: Colors.white,
                       ),
                     )),
               )
             ],
                ),
    ),
                ),
          ],
        ),

      );
  }
}


