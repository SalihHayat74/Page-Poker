
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';
import '../../widgets/customTextField.dart';
import '../widgets/custom_text_widget.dart';
import 'dashboard.dart';

class AdjustesScreen extends StatefulWidget {
  const AdjustesScreen({Key? key}) : super(key: key);

  @override
  State<AdjustesScreen> createState() => AdjustesScreenState();
}

enum DepositoMinimo {twenty,fifty,hundred}
enum Maximo {two,oneHalf,one}

class AdjustesScreenState extends State<AdjustesScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  DepositoMinimo depositValue=DepositoMinimo.twenty;
  Maximo maximoValue = Maximo.two;
  double fontSize=16;



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


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
                    text: "Limites por operação",
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: whiteColor
                ),
              ),
              const SizedBox(height: 48,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kText(
                          text: "Conferência para autorização de saque",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: mainThemeColor
                      ),
                      SizedBox(
                        width: 300,
                        child: ListTile(
                          title: kText(
                              text: "R\$ 20,00 - (Recomendado)",
                            color: mainThemeColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          leading: CustomDepositRadio(

                            value: DepositoMinimo.twenty,
                            groupValue: depositValue,
                            onChanged: (DepositoMinimo? value) {
                              setState(() {
                                depositValue = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: ListTile(
                          title: kText(
                            text: "R\$ 50,00",
                            color: mainThemeColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          leading: CustomDepositRadio(
                            value: DepositoMinimo.fifty,
                            groupValue: depositValue,
                            onChanged: (DepositoMinimo? value) {
                              setState(() {
                                depositValue = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: ListTile(
                          title: kText(
                            text: "R\$ 100,00",
                            color: mainThemeColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          leading: CustomDepositRadio(
                            value: DepositoMinimo.hundred,
                            groupValue: depositValue,
                            onChanged: (DepositoMinimo? value) {
                              setState(() {
                                depositValue = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          kText(
                            text: "Outro valor",
                            color: mainThemeColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          const SizedBox(width: 12,),
                          Container(
                            padding: const EdgeInsets.only(left: 8),
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: whiteColor,
                              borderRadius: BorderRadius.circular(8)
                            ),

                            child: TextField(
                                controller: emailController,
                              decoration: const InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                labelText: '1 á 5.000',
                                border: InputBorder.none
                              ),


                            ),
                          )
                        ],
                      )
                      




                    ],
                  ),
                  const SizedBox(width: 158,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kText(
                          text: "Saque máximo sem autorização manual",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: mainThemeColor
                      ),
                      SizedBox(
                        width: 300,
                        child: ListTile(
                          title: kText(
                            text: "R\$ 2.000,00 - (Recomendado)",
                            color: mainThemeColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          leading: CustomMaximoRadio(

                            value: Maximo.two,
                            groupValue: maximoValue,
                            onChanged: (value) {
                              setState(() {
                                maximoValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: ListTile(
                          title: kText(
                            text: "R\$ 1.500,00",
                            color: mainThemeColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          leading: CustomMaximoRadio(
                            value: Maximo.oneHalf,
                            groupValue: maximoValue,
                            onChanged: (value) {
                              setState(() {
                                maximoValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: ListTile(
                          title: kText(
                            text: "R\$ 1.000,00",
                            color: mainThemeColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          leading: CustomMaximoRadio(
                            value: Maximo.one,
                            groupValue: maximoValue,
                            onChanged: (value) {
                              setState(() {
                                maximoValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          kText(
                            text: "Outro valor",
                            color: mainThemeColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          const SizedBox(width: 12,),
                          Container(
                            padding: const EdgeInsets.only(left: 8),
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(8)
                            ),

                            child: TextField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  labelText: '1 á 5.000',
                                  border: InputBorder.none
                              ),


                            ),
                          )
                        ],
                      )





                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12,),
              kText(text: 'ATENÇÃO: Limite máximo por deposito ou saque é de R\$ 5.000,00 por transação, valores maiores devem ser  executados em mais de uma transação.',color: mainThemeColor,fontSize: 12,fontWeight: FontWeight.w400,),

              const SizedBox(height: 24,),

              Row(
                children: [
                  InkWell(
                    onTap: (){

                      setState(() {

                      });
                    },
                    child: Container(
                      width: 131,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: neonColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child:
                      kText(
                          text: "Atualizar",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: mainThemeColor
                      ),
                    ),
                  ),
                  const SizedBox(width: 12,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 132,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child:
                      kText(
                          text: "Cancelar",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: mainThemeColor
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48,),
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
                    text: "Redefinir Senha ",
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: whiteColor
                ),
              ),

              const SizedBox(height: 24,),
              Row(
                children: [
                  kText(
                    text: "Nova senha",
                    color: mainThemeColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(width: 12,),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(8)
                    ),

                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: '1 á 5.000',
                          border: InputBorder.none
                      ),


                    ),
                  ),
                  const SizedBox(width: 24,),
                  kText(
                    text: "Repita nova senha",
                    color: mainThemeColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(width: 12,),
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(8)
                    ),

                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: '1 á 5.000',
                          border: InputBorder.none
                      ),


                    ),
                  )
                ],
              ),
              const SizedBox(height: 12,),
              kText(text:'ATENÇÃO: A sua nova senha tem que respeitar os requisitos minimos',
              fontSize: 12,
                  fontWeight: FontWeight.w400,
                color: mainThemeColor,
              ),
              Row(
                children: [

                  Icon(Icons.circle,color: mainThemeColor,size: 8,),
                  const SizedBox(width: 12,),
                  kText(text:'Mínimo de 8 caracteres',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: mainThemeColor,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.circle,color: mainThemeColor,size: 8,),
                  const SizedBox(width: 12,),
                  kText(text:'Conter letras minúsculas e maiúsculas',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: mainThemeColor,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.circle,color: mainThemeColor,size: 8,),
                  const SizedBox(width: 12,),
                  kText(text:'Conter carctérie especial (ex. #%\$@)',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: mainThemeColor,
                  ),
                ],
              ),

              const SizedBox(height: 24,),
              Row(
                children: [
                  InkWell(
                    onTap: (){

                      setState(() {

                      });
                    },
                    child: Container(
                      width: 131,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: neonColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child:
                      kText(
                          text: "Atualizar",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: mainThemeColor
                      ),
                    ),
                  ),
                  const SizedBox(width: 12,),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 132,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child:
                      kText(
                          text: "Cancelar",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: mainThemeColor
                      ),
                    ),
                  ),
                ],
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

class CustomMaximoRadio extends StatefulWidget {
  final value;
  final groupValue;
  final void Function(Maximo) onChanged;
  const CustomMaximoRadio({Key? key, required this.value, required this.groupValue, required this.onChanged})
      : super(key: key);

  @override
  State<CustomMaximoRadio> createState() => _CustomMaximoRadioState();
}

class _CustomMaximoRadioState extends State<CustomMaximoRadio> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);

    return InkWell(
      onTap: () => widget.onChanged(widget.value),
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(shape: BoxShape.circle, color: selected ? Colors.white : Colors.grey[200]),
        child: Icon(
          Icons.circle,
          size: 10,
          color: selected ? neonColor : Color(0xffE7E7E7),
        ),
      ),
    );
  }
}


class CustomDepositRadio<T> extends StatefulWidget {
  final value;
  final groupValue;
  final void Function(DepositoMinimo) onChanged;
  const CustomDepositRadio({Key? key, required this.value, required this.groupValue, required this.onChanged})
      : super(key: key);

  @override
  _CustomDepositRadioState createState() => _CustomDepositRadioState();
}

class _CustomDepositRadioState extends State<CustomDepositRadio> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);

    return InkWell(
      onTap: () => widget.onChanged(widget.value),
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(shape: BoxShape.circle, color: selected ? Colors.white : Colors.grey[200]),
        child: Icon(
          Icons.circle,
          size: 10,
          color: selected ? neonColor : Color(0xffE7E7E7),
        ),
      ),
    );
  }
}


