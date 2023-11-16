import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/movie_btn.dart';

class MovieIntroScreen extends StatelessWidget {
  const MovieIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // poster
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset("assets/movie_ui/movie2.jpg").image,
                  fit: BoxFit.fill
                )
              ),
            ),
            //gradiant
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                width: double.infinity,
                height: 500,
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black,Colors.black.withOpacity(0.1)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                  )
                ),
              ),
            ),
            //detail
            Positioned(
              bottom: 30,
              right: 0,
              left: 0,
              child: Container(
                width: double.infinity,
                height: 270,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFF181818),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    Expanded(child: PageView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // title
                              Text(
                                "All movies and series with all qualities",
                                style: GoogleFonts.interTight(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 12),
                              // content
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. In egestas erat imperdiet sed euismod nisi porta lorem mollis.",
                                style: GoogleFonts.interTight(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        );
                      },
                    ),),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                      child: MovieBtn(
                        onTap: () {},
                        text: "next",
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


