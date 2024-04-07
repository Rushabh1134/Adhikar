
import 'package:adhikar/methods/authmethods.dart';
import 'package:adhikar/pages/mobileView/mobileScreenView.dart';
import 'package:adhikar/pages/signup.dart';
import 'package:adhikar/utils/sncakbar.dart';
import 'package:flutter/material.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode emailFocusNode = FocusNode();
  TextEditingController emailcontroller = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();
  TextEditingController passwordcontroller = TextEditingController();
  FocusNode usernameFocusNode = FocusNode();
  TextEditingController usernamecontroller = TextEditingController();


  bool isLoading = false;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: ()=>FocusScope.of(context).unfocus(),
      child: Scaffold(
        
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 60,),
                      
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Adhikar',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/images/logo.png')
                ],
              ),
              SizedBox(height: 100,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 224, 222, 222),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, bottom: 20, top: 20),
                          child: Column(
                            children: [
                              TextField(
                                focusNode: emailFocusNode,
                                controller: emailcontroller,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.email),
                                  hintText: 'Enter email',
                                  label: const Text('Email'),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextField(
                                focusNode: passwordFocusNode,
                                controller: passwordcontroller,
                                obscureText: true,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.password),
                                  hintText: 'Enter password',
                                  label: const Text('Password'),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Dont\'t have an account?',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>const SignUpScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        'Sign Up',
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 17),
                                      )),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  String res =await  AuthMethods().login(email: emailcontroller.text, password: passwordcontroller.text);
                                    if(res=='success'){
                                     
                                      setState(() {
                                        isLoading=false;
                                      });
                                      showSnackbar('Login success', context);
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const mobileScreenView(),),);
                                    } else {
                                      
                                      setState(() {
                                        isLoading=false;
                                      });
                                      showSnackbar(res, context);
                                    }
                                  emailFocusNode.unfocus();
                                  passwordFocusNode.unfocus();
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                      child: Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
              ),
        )),
      ),
    );
  }
}
