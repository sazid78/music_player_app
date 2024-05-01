import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SongPageHeader extends StatelessWidget {
  const SongPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/icons/big_logo.svg",width: 35,),
        const SizedBox(width: 10,),
        const Text("My music",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins"
        ),)
      ],
    );
  }
}
