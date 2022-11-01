import 'package:flutter/material.dart';
import 'package:medicare/styles/colors.dart';
import 'package:medicare/styles/styles.dart';
import 'package:medicare/tabs/style_quick.dart';

List<Map> doctors = [
  {
    'img': 'assets/doctor02.png',
    'doctorName': 'Dr. Gardner Pearson',
    'doctorTitle': 'Heart Specialist'
  },
  {
    'img': 'assets/doctor03.jpeg',
    'doctorName': 'Dr. Rosa Williamson',
    'doctorTitle': 'Skin Specialist'
  },
  {
    'img': 'assets/doctor02.png',
    'doctorName': 'Dr. Gardner Pearson',
    'doctorTitle': 'Heart Specialist'
  },
  {
    'img': 'assets/doctor03.jpeg',
    'doctorName': 'Dr. Rosa Williamson',
    'doctorTitle': 'Skin Specialist'
  }
];

class HomeTab extends StatelessWidget {
  final void Function() onPressedScheduleCard;

  const HomeTab({
    Key? key,
    required this.onPressedScheduleCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            CircleGreenProfile(),
            SizedBox(
              height: 20,
            ),
            UserIntro(),
            SizedBox(
              height: 10,
            ),

            SizedBox(
              height: 20,
            ),
            QuickCheckingEmotions(),
            //CategoryIcons(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sessões marcadas',
                  style: kTitleStyle,
                ),
                TextButton(
                  child: Text(
                    'Ver todos',
                    style: TextStyle(
                      color: Color(MyColors.yellow01),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            AppointmentCard(
              onTap: onPressedScheduleCard,
            ),
            AppointmentCard(onTap: onPressedScheduleCard),
            SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class CircleGreenProfile extends StatelessWidget {
  const CircleGreenProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color(MyColors.green),
      ),
      height: 200,
    );
  }
}

// class QuickCheckingEmotions extends StatelessWidget {
//   const QuickCheckingEmotions({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 100),
//       child: Container(
//         height: 150,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             gradient: LinearGradient(
//               begin: Alignment.topRight,
//               end: Alignment.bottomLeft,
//               colors: const [
//                 Color.fromARGB(255, 16, 214, 188),
//                 Colors.blue,
//               ],
//             )),
//         //color: Color.fromARGB(125, 95, 200, 226),

//         //Inserir emoticons
//         child: GestureDetector(
//           onTap: () => FocusScope.of(context).unfocus(),
//           child: Material(
//             color: Colors.transparent,
//             child: Padding(
//               padding: const EdgeInsets.all(45),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: const [
//                   CircleAvatar(
//                     backgroundImage: AssetImage(
//                         'assets/quick_checking_emotions/icons/aborecido.png'),
//                     child: Text('Aborrecido', style: TextStyle(
//                       color: Color.fromARGB(255, 255, 250, 250),
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold
//                       ,),
//                     ),
//                   ),
//                   CircleAvatar(
//                     backgroundImage: AssetImage(
//                         'assets/quick_checking_emotions/icons/contente.png'),
//                         child: Text('Contente', style: TextStyle(
//                       color: Color.fromARGB(255, 255, 250, 250),
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold
//                       ,),
//                     ),

//                   ),
//                   CircleAvatar(
//                     backgroundImage: AssetImage(
//                         'assets/quick_checking_emotions/icons/furioso.png'),
//                         child: Text('Furioso', style: TextStyle(
//                       color: Color.fromARGB(255, 255, 250, 250),
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold
//                       ,),
//                     ),
//                   ),
//                   CircleAvatar(
//                     backgroundImage: AssetImage(
//                         'assets/quick_checking_emotions/icons/nao_sabe.png'),
//                         child: Text('Apático', style: TextStyle(
//                       color: Color.fromARGB(255, 255, 250, 250),
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold
//                       ,),
//                     ),
//                   ),
//                   CircleAvatar(
//                     backgroundImage:
//                         AssetImage('assets/quick_checking_emotions/icons/triste.png'),
//                         child: Text('Triste', style: TextStyle(
//                       color: Color.fromARGB(255, 255, 250, 250),
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold
//                       ,),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//Teste

class QuickCheckingEmotions extends StatelessWidget {
  const QuickCheckingEmotions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: const [
                Color.fromARGB(255, 16, 214, 188),
                Colors.blue,
              ],
            )),
        //color: Color.fromARGB(125, 95, 200, 226),

        //Inserir emoticons
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(45),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/quick_checking_emotions/icons/aborecido.png'),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/quick_checking_emotions/icons/contente.png'),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/quick_checking_emotions/icons/furioso.png'),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/quick_checking_emotions/icons/nao_sabe.png'),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/quick_checking_emotions/icons/triste.png'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      construirTextoEmotions(text: 'Doente'),
                      construirTextoEmotions(text: 'Feliz'),
                      construirTextoEmotions(text: 'Furioso'),
                      construirTextoEmotions(text: 'Aborrecido'),
                      construirTextoEmotions(text: 'Triste')
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  final void Function() onTap;

  const AppointmentCard({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(MyColors.green),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/doctor01.jpeg'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dr.Carlos Moreira',
                                style: TextStyle(color: Colors.white)),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Psicologo',
                              style: TextStyle(color: Color(MyColors.text01)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ScheduleCard(),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: 10,
          decoration: BoxDecoration(
            color: Color(MyColors.bg02),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          width: double.infinity,
          height: 10,
          decoration: BoxDecoration(
            color: Color(MyColors.bg03),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(MyColors.bg01),
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.calendar_today,
            color: Colors.white,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Mon, July 29',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.access_alarm,
            color: Colors.white,
            size: 17,
          ),
          SizedBox(
            width: 5,
          ),
          Flexible(
            child: Text(
              '11:00 ~ 12:10',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  IconData icon;
  String text;

  CategoryIcon({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Color(MyColors.bg01),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Color(MyColors.bg),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                icon,
                color: Color(MyColors.primary),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(
                color: Color(MyColors.primary),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserIntro extends StatelessWidget {
  const UserIntro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/person.jpeg'),
              radius: 30,
            ),
            Text(
              'Olá',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              'Sarmento 👋',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}

// Funções

// construirIconesEmoticons({
//   required String urlImage,
//   required String title,
// }) async => CircleAvatar(
//                     backgroundImage: AssetImage(
//                         urlImage),
//                         child: SizedBox(height: 5,),
//                         child: Text(title, style: TextStyle(
//                       color: Color(MyColors.white),
//                       fontWeight: FontWeight.bold
//                       ,),
//                     ),
//                   );

construirTextoEmotions({
  required String text,
}) =>
    Text(
      text,
      style: TextStyle(
        color: Color.fromARGB(255, 255, 250, 250),
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );


