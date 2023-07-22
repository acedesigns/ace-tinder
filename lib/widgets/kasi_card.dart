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

class BuildKasiCard extends StatefulWidget {
  
  final UserModel user;

  const BuildKasiCard({
    super.key,
    required this.user,
  });

  @override
  State<BuildKasiCard> createState() => _BuildKasiCardState();
}

class _BuildKasiCardState extends State<BuildKasiCard> {

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.66,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: const Alignment(-0.3,0),
            image: NetworkImage(widget.user.userImage)
          ), 
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.7, 1]
            )
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Spacer(),
                builsUserName(),
                buildStatus()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget builsUserName() {
    return Row(
      children: [
        Text(
          widget.user.username,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        const SizedBox(width: 16,),

        Text(
          widget.user.userage.toString(),
          style: const TextStyle(
            fontSize: 32,
            color: Colors.white
          ),
        )
      ],
    );
  }

  Widget buildStatus() {
    return Row(
      children: [
        Container(
          width: 12, height: 12,
          decoration: const BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8,),
        const Text(
          'Recently active',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}