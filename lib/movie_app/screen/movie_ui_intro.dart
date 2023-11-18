import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/data/fake_game_data.dart';
import 'package:flutter_ui_challenge/movie_app/model/intro_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widget/intro_item.dart';
import '../widget/movie_btn.dart';

class MovieIntroScreen extends StatefulWidget {
   const MovieIntroScreen({super.key});

  @override
  State<MovieIntroScreen> createState() => _MovieIntroScreenState();
}

class _MovieIntroScreenState extends State<MovieIntroScreen> {
  final PageController pageController = PageController();

  String imagePath = FakeData.introItems.first.imagePath;
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // poster
            AnimatedContainer(
              duration: const Duration(milliseconds: 700),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(imagePath).image,
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
                height: 330,
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
                height: 300,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFF181818),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    Expanded(
                      child:
                      PageView.builder(
                      controller: pageController,
                      itemCount: FakeData.introItems.length,
                      onPageChanged: (index) {
                        log(index.toString());
                        setState(() {
                          imagePath = FakeData.introItems[index].imagePath;
                          if(index < 3) {
                            isLast = false;
                          }

                          if(index == 3){
                            setState(() {
                              isLast = true;
                            });
                          }

                        });
                      },
                      itemBuilder: (context, index) {
                        final IntroModel intro = FakeData.introItems[index];
                        return Padding(
                          padding: const EdgeInsets.all(12),
                          child: IntroItem(intro: intro),
                        );
                      },
                    ),),
                    // Indicator
                    SmoothPageIndicator(
                      controller: pageController,
                      count:  FakeData.introItems.length,
                      axisDirection: Axis.horizontal,
                      effect: WormEffect(
                          spacing:  8.0,
                          radius:  32,
                          dotWidth:  8,
                          dotHeight:  8,
                          paintStyle:  PaintingStyle.fill,
                          dotColor:  Colors.white.withOpacity(0.2),
                          activeDotColor:  Colors.white
                      ),
                    ),
                    const SizedBox(height: 16),
                    //next btn
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                      child: MovieBtn(
                        onTap: () => _gotoNextPage(),
                        text: isLast? "Lest Go" :"next",
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

  void _gotoNextPage() {
    if(pageController.page! <=2){
      pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      if(pageController.page! == 2){
        setState(() {
          isLast = true;
        });
      }
    }else{
      // navigate to home page
    }
  }
}




