import 'package:falcon/boardingPackage/page.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  final List<Pages> boardingPages;
  final String appName;
  final Widget appLogo;
  final Function signUp;
  final Function signIn;
  OnBoardingPage(this.boardingPages,
      {this.appName = '', this.signUp, this.signIn, this.appLogo});
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(23.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Logo and App Name
            Container(
              margin: const EdgeInsets.only(top: 15.0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  
                  widget.appLogo ?? Text(''),
                  Text(
                    widget.appName ?? '',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                children: widget.boardingPages,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                controller: controller,
              ),
            ),

            //Image

            //indicator
            Container(
              child: Row(
                children: [
                  //Back button
                  GestureDetector(
                    onTap: () {
                      controller.previousPage(
                          duration: const Duration(seconds: 2),
                          curve: Curves.bounceIn);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 30,
                      child: Icon(
                        Icons.arrow_back,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        widget.boardingPages.length,
                        (index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            width: index == currentIndex ? 14 : 6,
                            height: 6,
                            decoration: BoxDecoration(
                                color: index == currentIndex
                                    ? Colors.redAccent
                                    : Colors.amber,
                                borderRadius: BorderRadius.circular(10)),
                          );
                        },
                      ),
                    ),
                  ),
                  //Forward button
                  GestureDetector(
                    onTap: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.bounceIn);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      radius: 30,
                      child: Icon(
                        Icons.arrow_forward,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),

            //Buttton
            GestureDetector(
              onTap: widget.signUp ?? null,
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 13),
                padding: const EdgeInsets.all(17.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.amber, fontSize: 18),
                ),
              ),
            ),

            //Text
            Container(
              margin: const EdgeInsets.only(top: 15),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already Have An Account? "),
                  GestureDetector(
                    onTap: widget.signIn ?? null,
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
