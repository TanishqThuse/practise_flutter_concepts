import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: 
      Column(
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
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
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

                  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(
                      // iconColor: Color.fromARGB(100, 100, 100, 50)
                    ),
                    onPressed: () {
                      print("Hi, I am pressed");
                    },
                  )

                ],
              ),
            ),

            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
        ],
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