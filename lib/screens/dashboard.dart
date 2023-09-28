
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pag_poker/screens/supporte.dart';

import '../../constants.dart';
import '../../widgets/customTextField.dart';
import '../widgets/custom_text_widget.dart';
import 'configuration.dart';
import 'jogadorse_screen.dart';
import 'transações_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isDashboard=true;
  bool isJogadores = false;
  bool isTransacoes=false;
  bool isAdustes=false;
  bool isSupportee =false;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: Center(

        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 32),
              decoration: BoxDecoration(
                color: mainThemeColor,
              ),

              height: height,
              width: width*.22,
              child: Column(
                children: [
                  Center(child: Image.asset('assets/images/img.png',height: 35,width: 200,)),
                  const SizedBox(height: 57,),
                  InkWell(
                    onTap: (){
                      isSupportee=false;
                      isDashboard=true;
                      isJogadores=false;
                      isTransacoes=false;
                      isAdustes=false;
                      setState(() {

                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      width: width*.19,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: isDashboard?BoxDecoration(
                          color: neonColor,
                          borderRadius: BorderRadius.circular(8)
                      ):BoxDecoration(
                          color: const Color(0x00ffffff),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: isDashboard?Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.dashboard,color: mainThemeColor,),
                          const SizedBox(width: 16,),
                          Text("Dashboard",
                            style: TextStyle(
                              color: mainThemeColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,


                            ),
                          ),
                        ],
                      ):Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.dashboard,color: whiteColor,),
                          const SizedBox(width: 16,),
                          Text("Dashboard",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,


                            ),
                          ),
                        ],
                      ),),
                  ),
                  InkWell(
                    onTap: (){
                      isSupportee=false;
                      isDashboard=false;
                      isJogadores=true;
                      isTransacoes=false;
                      isAdustes=false;
                      setState(() {

                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      width: width*.19,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: isJogadores?BoxDecoration(
                          color: neonColor,
                          borderRadius: BorderRadius.circular(8)
                      ):BoxDecoration(
                          color: const Color(0x00ffffff),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: isJogadores?Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(FontAwesomeIcons.peopleGroup,color: mainThemeColor,),
                          const SizedBox(width: 16,),
                          Text("Jogadores",
                            style: TextStyle(
                              color: mainThemeColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,


                            ),
                          ),
                        ],
                      ):Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(FontAwesomeIcons.peopleGroup,color: whiteColor,),
                          const SizedBox(width: 16,),
                          Text("Jogadores",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,


                            ),
                          ),
                        ],
                      ),),
                  ),
                  InkWell(
                    onTap: (){
                      isSupportee=false;
                      isDashboard=false;
                      isAdustes=false;
                      isJogadores=false;
                      isTransacoes=true;
                      setState(() {

                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      width: width*.19,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: isTransacoes?BoxDecoration(
                          color: neonColor,
                          borderRadius: BorderRadius.circular(8)
                      ):BoxDecoration(
                          color: const Color(0x00ffffff),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: isTransacoes?Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(FontAwesomeIcons.arrowRightArrowLeft,color: mainThemeColor,),
                          const SizedBox(width: 16,),
                          Text("Transações",
                            style: TextStyle(
                              color: mainThemeColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,


                            ),
                          ),
                        ],
                      ):Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(FontAwesomeIcons.arrowRightArrowLeft,color: whiteColor,),
                          const SizedBox(width: 16,),
                          Text("Transações",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,


                            ),
                          ),
                        ],
                      ),),
                  ),
                  InkWell(
                    onTap: (){
                      isDashboard=false;
                      isAdustes=true;
                      isJogadores=false;
                      isTransacoes=false;
                      isSupportee=false;
                      setState(() {

                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      width: width*.19,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: isAdustes?BoxDecoration(
                          color: neonColor,
                          borderRadius: BorderRadius.circular(8)
                      ):BoxDecoration(
                          color: const Color(0x00ffffff),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: isAdustes?Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.settings,color: whiteColor,),
                          const SizedBox(width: 16,),
                          Text("Configurações",
                            style: TextStyle(
                              color: mainThemeColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,


                            ),
                          ),
                        ],
                      ):Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.settings,color: whiteColor,),
                          const SizedBox(width: 16,),
                          Text("Configurações",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,


                            ),
                          ),
                        ],
                      ),),
                  ),
                  InkWell(
                    onTap: (){
                      isDashboard=false;
                      isAdustes=false;
                      isJogadores=false;
                      isTransacoes=false;
                      isSupportee=true;
                      setState(() {

                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      width: width*.19,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: isSupportee?BoxDecoration(
                          color: neonColor,
                          borderRadius: BorderRadius.circular(8)
                      ):BoxDecoration(
                          color: const Color(0x00ffffff),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: isSupportee?Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(FontAwesomeIcons.whatsapp,color: mainThemeColor,),
                          const SizedBox(width: 16,),
                          Text("Suporte",
                            style: TextStyle(
                              color: mainThemeColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,


                            ),
                          ),
                        ],
                      ):Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(FontAwesomeIcons.whatsapp,color: whiteColor,),
                          const SizedBox(width: 16,),
                          Text("Suporte",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,


                            ),
                          ),
                        ],
                      ),),
                  ),
                  const SizedBox(height: 40,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashboardScreen()));
                    },
                    child: Container(
                      width: 150,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Text("Sair",
                        style: TextStyle(
                          color: Color(0xffF91B1B),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,


                        ),
                      ),),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  color: mainThemeColor,
                  height: 100,
                  width: width*.78,
                  child: Padding(
                      padding: const EdgeInsets.only(right: 100,top: 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          kText(
                            text: 'Bem Vindo!',
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: whiteColor
                          ),
                          kText(
                              text: 'Nome do Clube',
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: whiteColor
                          ),

                        ],
                      ),
                    ),
                ),
                Visibility(
                  visible: isDashboard,
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  height: height*.38,
                                  width: width*.27,
                                  decoration: BoxDecoration(
                                      color: mainThemeColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              kText(
                                                  text: 'Solicitações de\nsaque para\naprovar',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 30,
                                                  color: whiteColor
                                              ),
                                              kText(
                                                  text: '5',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 30,
                                                  color: whiteColor
                                              ),

                                            ],
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Icon(Icons.add_circle_outline_rounded,
                                              color: whiteColor,
                                              size: 48,
                                            ),
                                          )
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashboardScreen()));
                                          },
                                          child: Container(
                                            width: 228,
                                            height: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: neonColor,
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            child:
                                            kText(
                                                text: "Ver e Aprovar",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20,
                                                color: mainThemeColor
                                            ),
                                            ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                const SizedBox(width: 24,),
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  height: height*.38,
                                  width: width*.27,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          kText(
                                              text: 'Configurações',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 30,
                                              color: mainThemeColor
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Icon(Icons.add_circle_outline_rounded,
                                              color: mainThemeColor
                                              ,
                                              size: 48,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 20,),
                                      kText(
                                          text: 'Depósito minimo',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: mainThemeColor
                                      ),
                                      const SizedBox(height: 12,),
                                      kText(
                                          text: 'Mínimo R\$ 50,00',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: mainThemeColor
                                      ),
                                      const SizedBox(height: 12,),
                                      kText(
                                          text: 'Saque sem autorização',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: mainThemeColor
                                      ),
                                      const SizedBox(height: 12,),
                                      kText(
                                          text: 'Até R\$ 2.000,00',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: mainThemeColor
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24,),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  height: height*.38,
                                  width: width*.27,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          kText(
                                              text: 'Depósitos',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 30,
                                              color: mainThemeColor
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Icon(Icons.add_circle_outline_rounded,
                                              color: mainThemeColor
                                              ,
                                              size: 48,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 20,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              kText(
                                                  text: 'Total do mês',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: mainThemeColor
                                              ),
                                              const SizedBox(height: 12,),
                                              kText(
                                                  text: '2.765',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24,
                                                  color: mainThemeColor
                                              ),
                                              const SizedBox(height: 12,),
                                              kText(
                                                  text: 'Total do mês',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: mainThemeColor
                                              ),
                                              const SizedBox(height: 12,),
                                              kText(
                                                  text: '2.765',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24,
                                                  color: mainThemeColor
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              kText(
                                                  text: 'Total em R\$',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: mainThemeColor
                                              ),
                                              const SizedBox(height: 12,),
                                              kText(
                                                  text: 'R\$ 105.055,00',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24,
                                                  color: mainThemeColor
                                              ),
                                              const SizedBox(height: 12,),
                                              kText(
                                                  text: 'Ticket médio',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: mainThemeColor
                                              ),
                                              const SizedBox(height: 12,),
                                              kText(
                                                  text: 'R\$ 55,00',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24,
                                                  color: mainThemeColor
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                ),
                                const SizedBox(width: 24,),
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  height: height*.38,
                                  width: width*.27,
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          kText(
                                              text: 'Saques',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 30,
                                              color: mainThemeColor
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Icon(Icons.add_circle_outline_rounded,
                                              color: mainThemeColor
                                              ,
                                              size: 48,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 20,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              kText(
                                                  text: 'Total do mês',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: mainThemeColor
                                              ),
                                              const SizedBox(height: 12,),
                                              kText(
                                                  text: '365',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24,
                                                  color: mainThemeColor
                                              ),
                                              const SizedBox(height: 12,),
                                              kText(
                                                  text: 'Total do mês',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: mainThemeColor
                                              ),
                                              const SizedBox(height: 12,),
                                              kText(
                                                  text: '65',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24,
                                                  color: mainThemeColor
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              kText(
                                                  text: 'Total em R\$',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: mainThemeColor
                                              ),
                                              const SizedBox(height: 12,),
                                              kText(
                                                  text: 'R\$ 55.055,00',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24,
                                                  color: mainThemeColor
                                              ),
                                              const SizedBox(height: 12,),
                                              kText(
                                                  text: 'Ticket médio',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: mainThemeColor
                                              ),
                                              const SizedBox(height: 12,),
                                              kText(
                                                  text: 'R\$ 275,00',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24,
                                                  color: mainThemeColor
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: isJogadores,
                  child: JogadoresScreen(),
                ),
                Visibility(
                  visible: isTransacoes,
                  child: const TransacoesScreen(),
                ),
                Visibility(
                  visible: isAdustes,
                  child: const AdjustesScreen(),
                ),
                Visibility(
                  visible: isSupportee,
                  child: const SupporteScreen(),
                ),




              ],
            ),
          ],
        ),
      ),

    );
  }
}
