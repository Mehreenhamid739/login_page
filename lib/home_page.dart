import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/2.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 150,
                left: 170,
                child: Text(
                  'Login',
                  style: GoogleFonts.acme(
                      color: const Color.fromARGB(255, 102, 67, 54),
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Positioned(
                top: 300,
                left: 65,
                child: Column(
                  //user textfield
                  children: [
                    user_textfieldname(),
                    const SizedBox(
                      height: 20,
                    ),
                    //user password
                    passwordfield(),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 11),
                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.acme(
                            color: const Color.fromARGB(255, 102, 67, 54),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "Forget your Password ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 2,
                          width: 50,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          child: Text(
                            ' Or connect with ',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 102, 67, 54),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 2,
                          width: 50,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                ),
                                Text(
                                  " Facebook ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.mail,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  " Twitter ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container passwordfield() {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.brown, borderRadius: BorderRadius.circular(30)),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.email,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 18),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Email..",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container user_textfieldname() {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.brown, borderRadius: BorderRadius.circular(30)),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 18),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Username",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
