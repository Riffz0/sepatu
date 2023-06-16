import 'package:belajar_flutter_unit_2/second_page.dart';
import 'package:belajar_flutter_unit_2/sepatu_picks_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class StaffPicks extends StatelessWidget {
  const StaffPicks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          "New Products",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SecondPage();
                },
              ),
            );
          },
          child: const Text("View all"),
        ),
        const SizedBox(height: 10),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            staffPicksItem(
              gambar: Image.asset("assets/images/sepatu1.png"),
              title: "Nike",
              fee: "\$192.00",
              height: "5 Colors",
            ),
            SizedBox(
              width: 20,
            ),
            staffPicksItem(
                gambar: Image.asset("assets/images/sepatu2.png"),
                title: "Adidas",
                height: "5 Colors",
                fee: "\$559"),
            SizedBox(
              width: 20,
            ),
            staffPicksItem(
                gambar: Image.asset("assets/images/sepatu2.png"),
                title: "Adidas",
                height: "5 Colors",
                fee: "\$559"),
            SizedBox(
              width: 20,
            ),
          ]),
        ),
      ],
    );
  }
}
