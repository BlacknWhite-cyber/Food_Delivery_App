import 'package:flutter/material.dart';
import 'package:helloworld/pages/Signup.dart';
import 'package:helloworld/widget/content_model.dart';
import 'package:helloworld/widget/widget_support.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Image.asset(
                          contents[i].image,
                          height: 300,
                          width: MediaQuery.of(context).size.width / 1,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          contents[i].title,
                          style: AppWidget.semiBoldTextFieldStyle(),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          contents[i].description,
                          style: AppWidget.LightTextFieldStyle(),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => builDot(index, context),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (currentIndex == contents.length - 1) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Signup()));
              }
              _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10)),
              height: 50,
              margin: const EdgeInsets.all(35),
              width: double.infinity,
              child: Center(
                  child: Text(
                'Next',
                style: AppWidget.semiBoldTextFieldStyle(),
              )),
            ),
          ),
        ],
      ),
    );
  }

  Container builDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 18 : 7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
    );
  }
}
