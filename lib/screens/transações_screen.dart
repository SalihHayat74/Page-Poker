
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';
import '../../widgets/customTextField.dart';
import '../widgets/custom_text_widget.dart';
import 'dashboard.dart';

class TransacoesScreen extends StatefulWidget {
  const TransacoesScreen({Key? key}) : super(key: key);

  @override
  State<TransacoesScreen> createState() => TransacoesScreenState();
}

class TransacoesScreenState extends State<TransacoesScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  bool isProcessamento = false;


  bool isTodas=false;
  bool isAprovar=true;
  bool isTransacoes=true;

  double fontSize=16;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return isTransacoes?Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      isAprovar=true;
                      isTodas=false;
                      setState(() {

                      });
                    },
                    child: Container(
                      width: 122,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: isAprovar?BoxDecoration(
                          color: neonColor,
                          borderRadius: BorderRadius.circular(24)
                      ):BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child:
                      kText(
                          text: "Aprovar",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: mainThemeColor
                      ),
                    ),
                  ),
                  const SizedBox(width: 12,),
                  InkWell(
                    onTap: (){
                      isAprovar=false;
                      isTodas=true;
                      setState(() {

                      });
                    },
                    child: Container(
                      width: 106,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: isTodas?BoxDecoration(
                          color: neonColor,
                          borderRadius: BorderRadius.circular(24)
                      ):BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child:
                      kText(
                          text: "Todas",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: mainThemeColor
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12,),
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 16),
                      width: 460,
                      height: 40,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: kTextField(
                        controller: emailController,
                        label: 'Pesquisar ',
                        hintText: 'Pesquisar ',

                      )),
                  const SizedBox(width: 12,),
                  kText(
                    text: 'Saques para aprovar:  2',
                    color: mainThemeColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
              const SizedBox(height: 12,),
              Container(
                width: width*.7,
                height: 48,
                decoration: BoxDecoration(
                    color: mainThemeColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  children: [


                    const SizedBox(width: 12,),
                    kText(
                      text: 'Data',
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(width: 132,),
                    kText(
                        text: "Usuário",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: whiteColor
                    ),
                    const SizedBox(width: 224,),
                    kText(
                      text: 'ID',
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(width: 90,),
                    kText(
                      text: 'Tipo',
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(width: 58,),
                    kText(
                      text: 'Valor',
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(width: 82,),

                    kText(
                      text: 'Status',
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),


                  ],
                ),
              ),
              if(isAprovar)...[
                for(int i=0;i<5;i++)...[
                  if(i%2==0)Container(
                    width: width*.7,
                    height: 48,
                    decoration: const BoxDecoration(
                      color: Color(0x00ffffff),
                      // borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      children: [


                        const SizedBox(width: 12,),
                        kText(
                          text: 'Data',
                          color: mainThemeColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 132,),
                        kText(
                          text: "Usuário",
                          fontWeight: FontWeight.w400,
                          fontSize: fontSize,
                          color: mainThemeColor,
                        ),
                        const SizedBox(width: 224,),
                        kText(
                          text: 'ID',
                          color: mainThemeColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 90,),
                        kText(
                          text: 'Tipo',
                          color: const Color(0xffF91B1B),
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 58,),
                        kText(
                          text: 'Valor',
                          color: const Color(0xffF91B1B),
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 82,),

                        InkWell(
                          onTap: (){
                            isProcessamento=true;
                            isTransacoes=false;
                            setState(() {

                            });
                          },
                          child: Container(
                            width: 108,
                            height: 24,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: neonColor,
                                borderRadius: BorderRadius.circular(24)
                            ),
                            child:
                            kText(
                                text: "Aprovar",
                                fontWeight: FontWeight.w400,
                                fontSize: fontSize,
                                color: mainThemeColor
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  if(i%2==1)Container(
                    width: width*.7,
                    height: 48,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      // borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      children: [


                        const SizedBox(width: 12,),
                        kText(
                          text: 'Data',
                          color: mainThemeColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 132,),
                        kText(
                          text: "Usuário",
                          fontWeight: FontWeight.w400,
                          fontSize: fontSize,
                          color: mainThemeColor,
                        ),
                        const SizedBox(width: 224,),
                        kText(
                          text: 'ID',
                          color: mainThemeColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 90,),
                        kText(
                          text: 'Tipo',
                          color: const Color(0xffF91B1B),
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 58,),
                        kText(
                          text: 'Valor',
                          color: const Color(0xffF91B1B),
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 82,),
                        InkWell(
                          onTap: (){
                            isProcessamento=false;
                            isTransacoes=false;
                            setState(() {

                            });
                          },
                          child: kText(
                            text: 'Concluído',
                            color: mainThemeColor,
                            fontSize: fontSize,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        // Container(
                        //   width: 108,
                        //   height: 24,
                        //   alignment: Alignment.center,
                        //   decoration: BoxDecoration(
                        //       color: neonColor,
                        //       borderRadius: BorderRadius.circular(24)
                        //   ),
                        //   child:
                        //   kText(
                        //       text: "Aprovar",
                        //       fontWeight: FontWeight.w400,
                        //       fontSize: 16,
                        //       color: mainThemeColor
                        //   ),
                        // ),


                      ],
                    ),
                  ),
                ]
              ],
              if(isTodas)...[
                for(int i=0;i<2;i++)...[
                  if(i%2==0)Container(
                    width: width*.7,
                    height: 48,
                    decoration: const BoxDecoration(
                      color: Color(0x00ffffff),
                      // borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      children: [


                        const SizedBox(width: 12,),
                        kText(
                          text: 'Data',
                          color: mainThemeColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 132,),
                        kText(
                          text: "Usuário",
                          fontWeight: FontWeight.w400,
                          fontSize: fontSize,
                          color: mainThemeColor,
                        ),
                        const SizedBox(width: 224,),
                        kText(
                          text: 'ID',
                          color: mainThemeColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 90,),
                        kText(
                          text: 'Tipo',
                          color: const Color(0xffF91B1B),
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 58,),
                        kText(
                          text: 'Valor',
                          color: const Color(0xffF91B1B),
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 82,),

                        InkWell(
                          onTap: (){
                            isProcessamento=true;
                            isTransacoes=false;
                            setState(() {

                            });
                          },
                          child: Container(
                            width: 108,
                            height: 24,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: neonColor,
                                borderRadius: BorderRadius.circular(24)
                            ),
                            child:
                            kText(
                                text: "Aprovar",
                                fontWeight: FontWeight.w400,
                                fontSize: fontSize,
                                color: mainThemeColor
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  if(i%2==1)Container(
                    width: width*.7,
                    height: 48,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      // borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      children: [


                        const SizedBox(width: 12,),
                        kText(
                          text: 'Data',
                          color: mainThemeColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 132,),
                        kText(
                          text: "Usuário",
                          fontWeight: FontWeight.w400,
                          fontSize: fontSize,
                          color: mainThemeColor,
                        ),
                        const SizedBox(width: 224,),
                        kText(
                          text: 'ID',
                          color: mainThemeColor,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 90,),
                        kText(
                          text: 'Tipo',
                          color: const Color(0xffF91B1B),
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 58,),
                        kText(
                          text: 'Valor',
                          color: const Color(0xffF91B1B),
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(width: 82,),
                        InkWell(
                          onTap: (){
                            isProcessamento=false;
                            isTransacoes=false;
                            setState(() {

                            });
                          },
                          child: kText(
                            text: 'Concluído',
                            color: mainThemeColor,
                            fontSize: fontSize,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        // Container(
                        //   width: 108,
                        //   height: 24,
                        //   alignment: Alignment.center,
                        //   decoration: BoxDecoration(
                        //       color: neonColor,
                        //       borderRadius: BorderRadius.circular(24)
                        //   ),
                        //   child:
                        //   kText(
                        //       text: "Aprovar",
                        //       fontWeight: FontWeight.w400,
                        //       fontSize: 16,
                        //       color: mainThemeColor
                        //   ),
                        // ),


                      ],
                    ),
                  ),
                ]
              ]




            ],
          ),
        ),
      ),
    ):
        isProcessamento?Expanded(
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
                        text: "Processamento de saque com autorização",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: whiteColor
                    ),
                  ),
                  const SizedBox(height: 48,),
                  kText(
                      text: "Conferência para autorização de saque",
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: mainThemeColor

                  ),
                  const SizedBox(height: 24,),
                  kRichText(
                      text1: 'ID da conta: ',
                      text2: '0000000'
                  ),
                  const SizedBox(height: 24,),
                  kRichText(
                      text1: 'Banco:  ',
                      text2: 'Itaú S/A'
                  ),
                  const SizedBox(height: 24,),
                  kRichText(
                      text1: 'Tipo de chave:  ',
                      text2: 'CPF'
                  ),
                  const SizedBox(height: 24,),
                  kRichText(
                      text1: 'Chave Pix: ',
                      text2: '000.000.000-00'
                  ),
                  const SizedBox(height: 24,),
                  kRichText(
                      text1: 'Destinatário: ',
                      text2: 'João da Silva'
                  ),
                  const SizedBox(height: 24,),
                  kRichText(
                      text1: 'Valor:  ',
                      text2: 'R\$ 150,00 '
                  ),
                  const SizedBox(height: 24,),
                  kRichText(
                      text1: 'Data:  ',
                      text2: '15/03/23 - 20:27'
                  ),
                  const SizedBox(height: 50,),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          isTransacoes=true;
                          isAprovar=true;
                          isProcessamento=false;
                          setState(() {

                          });
                        },
                        child: Container(
                          width: 260,
                          height: 36,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: neonColor,
                              borderRadius: BorderRadius.circular(24)
                          ),
                          child:
                          kText(
                              text: "Autorizar Saque",
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
                          width: 260,
                          height: 36,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(24)
                          ),
                          child:
                          kText(
                              text: "Cancelar Saque",
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
        ):
    Expanded(
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
                    text: "Comprovantes",
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: whiteColor
                ),
              ),
              const SizedBox(height: 48,),
              kText(
                  text: "Depósito/Saque",
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: mainThemeColor
              ),
              const SizedBox(height: 24,),
              kRichText(
                  text1: 'Status: ',
                  text2: 'Concluído/Aguardando Pagamento '
              ),
              const SizedBox(height: 24,),
              kRichText(
                  text1: 'ID da conta: ',
                  text2: '0000000'
              ),
              const SizedBox(height: 24,),
              kRichText(
                  text1: 'Banco:  ',
                  text2: 'Itaú S/A'
              ),
              const SizedBox(height: 24,),
              kRichText(
                  text1: 'Tipo de chave:  ',
                  text2: 'CPF'
              ),
              const SizedBox(height: 24,),
              kRichText(
                  text1: 'Chave Pix: ',
                  text2: '000.000.000-00'
              ),
              const SizedBox(height: 24,),
              kRichText(
                  text1: 'Destinatário: ',
                  text2: 'João da Silva'
              ),
              const SizedBox(height: 24,),
              kRichText(
                  text1: 'Valor:  ',
                  text2: 'R\$ 150,00 '
              ),
              const SizedBox(height: 24,),
              kRichText(
                  text1: 'Data:  ',
                  text2: '15/03/23 - 20:27'
              ),
              const SizedBox(height: 50,),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      isTransacoes=true;
                      isTodas=true;
                      isProcessamento=false;

                      setState(() {

                      });
                    },
                    child: Container(
                      width: 260,
                      height: 36,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: neonColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child:
                      kText(
                          text: "Fechar",
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
                      width: 260,
                      height: 36,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child:
                      kText(
                          text: "Abrir suporte",
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


