/* =======================================================
 *
 * Created by anele on 23/07/2023.
 *
 * @anele_ace
 *
 * =======================================================
 */

import 'package:flutter/material.dart';
import 'package:kasi_mjolo/models/models.dart';
import 'package:kasi_mjolo/widgets/widgets.dart';

class LandingAppScreen extends StatefulWidget {
  const LandingAppScreen({super.key});

  @override
  State<LandingAppScreen> createState() => _LandingAppScreenState();
}

class _LandingAppScreenState extends State<LandingAppScreen> {

  final user =  const UserModel(
      username: 'Mbali',
      userage: 27,
      userImage: 'https://previews.123rf.com/images/sam74100/sam741001503/sam74100150300098/38080753-portrait-of-a-young-african-american-business-woman-black-people.jpg'
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            buildLogo(),
            const SizedBox(height: 16,),
            BuildKasiCard(user: user),
            const SizedBox(height: 16,),
            //buildButtons()
          ],
        ),
          ),
      ),
    );
  }

  Widget buildLogo() {
    return const Row(
      children: [
        Icon(Icons.local_fire_department_rounded, size: 46, color: Colors.redAccent,),
        SizedBox(width: 5,),
        Text(
          'Yekan\' uMjolo',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildButtons() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(onPressed: null, child: Icon(Icons.clear, color: Colors.red, size: 45,)),
        ElevatedButton(onPressed: null, child: Icon(Icons.star, color: Colors.blue, size: 45,)),
        ElevatedButton(onPressed: null, child: Icon(Icons.favorite, color: Colors.teal, size: 45,))
      ],
    );
  }

}