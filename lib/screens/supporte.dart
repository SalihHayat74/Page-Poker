
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';
import '../../widgets/customTextField.dart';
import '../widgets/custom_text_widget.dart';
import 'dashboard.dart';

class SupporteScreen extends StatefulWidget {
  const SupporteScreen({Key? key}) : super(key: key);

  @override
  State<SupporteScreen> createState() => SupporteScreenState();
}


class SupporteScreenState extends State<SupporteScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;


    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 12.8),
                width: 942,
                height: 48,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: mainThemeColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child:
                kText(
                    text: "Entre em contato com o suporte",
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: whiteColor
                ),
              ),
              const SizedBox(height: 24,),
              InkWell(
                onTap: (){

                  setState(() {

                  });
                },
                child: Container(
                  width: 230,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: neonColor,
                      borderRadius: BorderRadius.circular(24)
                  ),
                  child:
                  kText(
                      text: "Ir para o WhatsApp",
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: mainThemeColor
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}




class kRichText extends StatelessWidget {

  kRichText({
    required this.text1,
    required this.text2,
    this.color,
    this.fontSize,
    this.fontWeight
  });
  String? text1;
  String? text2;
  Color ? color;
  double ? fontSize;
  FontWeight? fontWeight;


  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            children:[

              TextSpan(
                  text: text1,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: mainThemeColor
                  )
              ),
              TextSpan(
                  text: text2,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: mainThemeColor
                  )
              )
            ])
    );
  }
}

