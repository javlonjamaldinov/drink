import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list/next_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffffff),
      body: Padding(
        padding: const EdgeInsets.only(right: 120),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 55),
                const Text(
                  "It’s time for a",
                  style: TextStyle(
                    color: Color(0xfff1e2742),
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 130),
                  child: Text(
                    "Drink",
                    style: GoogleFonts.dancingScript(
                      color: const Color(0xffff66372),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "The one-stop to find amazing drink mixes for any occassion.",
                    style: TextStyle(
                      color: Color(0xfff010101),
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NextPage(),
                    ),
                  );
                },
                child: Container(
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xfff1e2742),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(
                            color: Color(0xfffffffff),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xfffffffff),
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Image.asset(
              "assets/images/drinc.png",
              height: 500,
              width: 500,
            ),
          ],
        ),
      ),
    );
  }
}
