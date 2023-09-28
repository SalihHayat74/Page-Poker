



import 'package:flutter/material.dart';
import 'package:pag_poker/screens/dashboard.dart';

import '../../constants.dart';
import '../../widgets/customTextField.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: Center(

        child: Column(
          children: [
            Container(
              color: mainThemeColor,
                height: 120,
                width: width,
                child: Center(child: Image.asset('assets/images/img.png',height: 46.79,width: 260,))),
            Padding(
              padding: const EdgeInsets.only(
                top: 48,
              ),
              child: Container(
                height: height*.65,
                width: width*.4,
                decoration: BoxDecoration(
                  color: mainThemeColor,
                    borderRadius: BorderRadius.circular(24)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 105),
                      child: Container(
                          padding: const EdgeInsets.only(left: 16),
                          width: 400,
                          height: 48,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: kTextField(
                            controller: emailController,
                            label: 'E-mail',
                            hintText: 'E-mail',
                          )),
                    ),
                    const SizedBox(height: 24,),
                    Container(
                      padding: const EdgeInsets.only(left: 16),
                        width: 400,
                        height: 48,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: kTextField(
                          controller: passwordController,
                          label: 'Senha',
                          hintText: 'Senha',
                        )),
                    const SizedBox(height: 12,),
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text("Esqueci minha senha",
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,

                        ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40,),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashboardScreen()));
                      },
                      child: Container(
                          width: 200,
                          height: 48,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: neonColor,
                              borderRadius: BorderRadius.circular(48)
                          ),
                          child: Text("LOGIN",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,


                            ),
                          ),),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
