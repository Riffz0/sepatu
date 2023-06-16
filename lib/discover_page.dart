import 'package:belajar_flutter_unit_2/sepatu.dart';
import 'package:belajar_flutter_unit_2/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Header(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    const SizedBox(height: 15),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Image.asset(
                                      "assets/images/man.png",
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  const Text("Men"),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Image.asset(
                                      "assets/images/women.png",
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  const Text("Women"),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Image.asset(
                                      "assets/images/kids.png",
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  const Text("Kids"),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Image.asset(
                                      "assets/images/sale.png",
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  const Text("Sale"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    StaffPicks(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
