
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';
import '../../widgets/customTextField.dart';
import '../widgets/custom_text_widget.dart';
import 'dashboard.dart';

class JogadoresScreen extends StatefulWidget {
  const JogadoresScreen({Key? key}) : super(key: key);

  @override
  State<JogadoresScreen> createState() => _JogadoresScreenState();
}

class _JogadoresScreenState extends State<JogadoresScreen> {
  TextEditingController cfpController=TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController nickController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  List<String> nameList=[
    'Ana da Silda',
    'Bruno da Silda',
    'Carlos da Silda',
    'Douglas da Silda',
    'Erick da Silda',
    'Felipe da Silda',
    'Gabriel da Silda',
    'Heitor da Silda'
  ];

  bool isTodos=true;
  bool isAdicionar=false;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Expanded(
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
                      isTodos=true;
                      isAdicionar=false;
                      setState(() {

                      });
                    },
                    child: Container(
                      width: 120,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: isTodos?BoxDecoration(
                          color: neonColor,
                          borderRadius: BorderRadius.circular(24)
                      ):BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child:
                      kText(
                          text: "Todos",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: mainThemeColor
                      ),
                    ),
                  ),
                  const SizedBox(width: 12,),
                  InkWell(
                    onTap: (){
                      isTodos=false;
                      isAdicionar=true;
                      setState(() {

                      });
                    },
                    child: Container(
                      width: 270,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: isAdicionar?BoxDecoration(
                          color: neonColor,
                          borderRadius: BorderRadius.circular(24)
                      ):BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child:
                      kText(
                          text: "Adicionar manualmente",
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: mainThemeColor
                      ),
                    ),
                  )
                ],
              ),

              Visibility(
                visible: isTodos,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 12,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            text: 'Usuários totais:  9',
                            color: mainThemeColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          )
                        ],
                      ),
                      const SizedBox(height: 12,),
                      Container(
                        height: 48,
                        width: 942,
                        decoration: BoxDecoration(
                            color: mainThemeColor,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Row(
                            children: [
                              const SizedBox(width: 12,),
                              Row(
                                children: [
                                  kText(
                                    text: 'Nome',
                                    color: whiteColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  const SizedBox(width: 131,),
                                  Container(
                                    width: 80,
                                    height: 24,
                                    padding: const EdgeInsets.only(right: 8,left: 8),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: whiteColor),
                                        color: mainThemeColor,
                                        borderRadius: BorderRadius.circular(24)
                                    ),
                                    child:
                                    Row(
                                      children: [
                                        kText(
                                            text: "A-Z",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: whiteColor
                                        ),
                                        const SizedBox(width: 22,),
                                        Icon(Icons.arrow_drop_down,color: whiteColor,size: 16,)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 23,),
                              kText(
                                text: 'ID',
                                color: whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                              const SizedBox(width: 117,),
                              kText(
                                text: 'Apelido',
                                color: whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                              const SizedBox(width: 158,),
                              Row(
                                children: [
                                  kText(
                                    text: 'Status',
                                    color: whiteColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Container(
                                    width: 80,
                                    height: 24,
                                    padding: const EdgeInsets.only(right: 8,left: 8),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: whiteColor),
                                        color: mainThemeColor,
                                        borderRadius: BorderRadius.circular(24)
                                    ),
                                    child:
                                    Row(
                                      children: [
                                        kText(
                                            text: "Todos",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: whiteColor
                                        ),
                                        const SizedBox(width: 5,),
                                        Icon(Icons.arrow_drop_down,color: whiteColor,size: 16,)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 23,),
                              kText(
                                text: 'Editar',
                                color: whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ]
                        ),
                      ),
                      Container(
                        width: 942,
                        child: Table(

                          columnWidths: const {
                            0: FlexColumnWidth(170),
                            1: FlexColumnWidth(50),
                            2: FlexColumnWidth(120),
                            3: FlexColumnWidth(100),
                            4: FlexColumnWidth(100),
                            // 5: FlexColumnWidth(2),
                            // 6: FlexColumnWidth(1.5),
                          },
                          children: [

                            for(int i =0; i<nameList.length;i++)...[
                              if(i%2==0)
                              TableRow(
                                decoration: const BoxDecoration(
                                  color: Color(0x00ffffff)
                                ),
                                  children: [
                                    TableCell(
                                      verticalAlignment: TableCellVerticalAlignment.middle,
                                      child: SizedBox(
                                        height: 40,
                                        child: Center(
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: kText(
                                              text: nameList[i],
                                              color: mainThemeColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 40,
                                        child: Center(
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: kText(
                                              text: '12345',
                                              color: mainThemeColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 40,
                                        child: Center(
                                          child: kText(
                                            text: 'joãobaralhão',
                                            color: mainThemeColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 40,
                                        child: Center(
                                          child: kText(
                                            text: 'Ativo',
                                            color: mainThemeColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const TableCell(
                                      child: SizedBox(
                                          height: 40,
                                          child: Center(child: Icon(Icons.mode_edit_rounded)))
                                    ),
                                  ]
                              ),
                              if(i%2==1)
                                TableRow(
                                    decoration: BoxDecoration(
                                        color: whiteColor
                                    ),
                                    children: [
                                      TableCell(
                                        verticalAlignment: TableCellVerticalAlignment.middle,
                                        child: SizedBox(
                                          height: 40,
                                          child: Center(
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: kText(
                                                text: nameList[i],
                                                color: mainThemeColor,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: SizedBox(
                                          height: 40,
                                          child: Center(
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: kText(
                                                text: '12345',
                                                color: mainThemeColor,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: SizedBox(
                                          height: 40,
                                          child: Center(
                                            child: kText(
                                              text: 'joãobaralhão',
                                              color: mainThemeColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: SizedBox(
                                          height: 40,
                                          child: Center(
                                            child: kText(
                                              text: 'Ativo',
                                              color: mainThemeColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const TableCell(
                                          child: SizedBox(
                                              height: 40,
                                              child: Center(child: Icon(Icons.mode_edit_rounded)))
                                      ),
                                    ]
                                ),
                            ]

                          ],
                        ),
                      ),

                    ],
                  )
              ),
              Visibility(
                visible: isAdicionar,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 24,),
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
                            text: "Adicionar no jogador",
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: whiteColor
                        ),
                      ),
                      const SizedBox(height: 33,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              kText(text: 'CPF',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              color: mainThemeColor,
                              ),
                              const SizedBox(height: 21.38,),
                              kText(text: 'Nome\nCompleto',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: mainThemeColor,
                              ),
                              const SizedBox(height: 21.73,),
                              kText(text: 'Telefone',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: mainThemeColor,
                              ),
                              const SizedBox(height: 32,),
                              kText(text: 'E-mail',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: mainThemeColor,
                              ),
                              const SizedBox(height: 32,),
                              kText(text: 'ID',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: mainThemeColor,
                              ),
                              const SizedBox(height: 30.38,),
                              kText(text: 'Nick',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: mainThemeColor,
                              )
                            ],
                          ),

                          const SizedBox(width: 12,),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 8),
                                width: 400,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: JogadoresText(
                                    controller: cfpController,
                                label: '000.000.000-73',)
                              ),
                              const SizedBox(height: 12,),
                              Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  width: 400,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: JogadoresText(
                                    controller: nameController,
                                    label: 'João da Silda',)
                              ),
                              const SizedBox(height: 12,),
                              Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  width: 400,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: JogadoresText(
                                    controller: telefoneController,
                                    label: '(12) 12345-6789',)
                              ),
                              const SizedBox(height: 12,),
                              Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  width: 400,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: JogadoresText(
                                    controller: emailController,
                                    label: 'exemplo@ex.com',)
                              ),
                              const SizedBox(height: 12,),
                              Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  width: 400,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: JogadoresText(
                                    controller: idController,
                                    label: '012345',)
                              ),
                              const SizedBox(height: 12,),
                              Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  width: 400,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: JogadoresText(
                                    controller: nickController,
                                    label: 'JoãoAK',)
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height:58),
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
                  )
              )




            ],
          ),
        ),
      ),
    );
  }
}


class JogadoresText extends StatelessWidget {
  JogadoresText({required this.controller,this.label});
  TextEditingController controller;
  String? label;


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(label!),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: InputBorder.none
      ),
    );
  }
}
