import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/images/LinkAja.svg.png",
          width: 50,
        ),
        Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                    offset: Offset(1.8, 1.5),
                  )
                ],
              ),
              child: const IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.heart,
                  color: Colors.black,
                ),
                onPressed: null,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 7.0,
                    spreadRadius: 0.5,
                    offset: Offset(2.0, 2.0),
                  )
                ],
              ),
              child: const IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.headset,
                  color: Colors.black,
                ),
                onPressed: null,
              ),
            )
          ],
        )
      ],
    );
  }
}
