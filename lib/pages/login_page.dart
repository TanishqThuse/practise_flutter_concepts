import 'package:flutter/material.dart';
import 'package:practise_flutter_concepts/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

//Fun fact _ is used to make classes private in dart
class _LoginPageState extends State<LoginPage> {
  // const LoginPage({super.key});

  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: 
        SingleChildScrollView(
          
        child: Column(
          children: [
              Image.asset('assets/images/secure_login.png',
              fit: BoxFit.cover,
              ),
        
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                 const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
                child: Column(
                  
                  children : [
                    
                    Text(
                          "Welcome $name" ,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                       ),
                      ),  

                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),

                      onChanged: (value) {
                        name = value;
                        //setState => calls the build method and it does hot reload for the page for it to be used for Statefull widget
                        setState(() {
                          changeButton = true;
                        });
                      },

                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
        
                    const SizedBox(
                      height: 20,
                    ),
        
                    //Commmented this to add aminations
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom( 
                    //     minimumSize: Size(150,40)
                    //     // iconColor: Color.fromARGB(100, 100, 100, 50)
                    //   ),
                    //   onPressed: () {
                    //     print("Hi, I am pressed");
                    //     Navigator.pushNamed(context , MyRoutes.homeRoute);
                    //   },
                    // )

                    InkWell(
                      onTap: () => {
                        Navigator.pushNamed(context , MyRoutes.homeRoute)
                      },

                      child: AnimatedContainer(
                        duration: Duration(seconds: 10),
                        width: changeButton ? 150 : 100,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                        ? const Icon(
                          Icons.done,
                          color: Colors.white,

                        
                        )
                        : const Text(
                          "Login",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            // textAlign: TextAlign.center,
                          ),
                        ),
                        //Dead lines of my old boring unAnimated container
                        // child: Container(
                        // width: 100,
                        // height: 50,
                        
                        
                        //If i will uncomment the below line it will throw an error as it is not a child of container
                        // color: Colors.deepPurple,
                      
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(changeButton ? 20 : 8),
                        ),
                      
                      ),
                    ),

                  ],
                ),
              ),
        
              
          ],
        ),
      ),

    );
  }
}




//Lecture 2 Practise : 
  //  @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Center(child: const Text(
//               'Login Page',
//               style: TextStyle(
//                 fontSize: 40,
//                 color: Colors.blue,
//                 fontWeight: FontWeight.bold,
//               ),
//               textScaleFactor: 2.0,
//             ),
//           ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Center(child: Text(
//               'Login Page',
//               style: TextStyle(
//                 fontSize: 40,
//                 color: Colors.blue,
//               ),
//             ),
//           ),
//     );
//   }
// }