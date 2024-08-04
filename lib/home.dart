import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: Stack(
        children: [
          /* backgroung image with information on top */
          Image.asset(
            "assets/images/image2.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text:
                                  "Lets upgrade your \n learning experience\n",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                            text:
                                "\nchanging the way people learn by by providing an \n interactive, engaging and personalized learning",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /* continue with phone number */

                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                ),
                              ),
                              backgroundColor: WidgetStatePropertyAll(
                                Color.fromRGBO(192, 232, 100, 1),
                              ),
                            ),
                            child: const Text(
                              "continue with phone",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),

                      /* spacing for other alternatives {or login in with} */
                      const Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              thickness: 0.7,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'or login with',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              thickness: 0.7,
                            ),
                          ),
                        ],
                      ),
                      /* row google and facebook sign in */

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: TextButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  Colors.white,
                                ),
                              ),
                              child: const Text(
                                "Google",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: TextButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.white),
                              ),
                              child: const Text(
                                "Facebook",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?\t"),
                          GestureDetector(
                              child: const Text(
                            "\tRegister",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(192, 232, 100, 1)),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          /* register a new account */
        ],
      ),
    );
  }
}
