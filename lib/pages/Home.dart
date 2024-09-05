import 'package:flutter/material.dart';
import 'package:helloworld/pages/details.dart';
import 'package:helloworld/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool rice = false, curry = false, sweet = false, salad = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.lightGreen,
      child: Container(
          margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello Aman,',
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Delicious Food',
              style: AppWidget.boldTextFieldStyle(),
            ),
            Text('Discover and Get Awesome Food!!',
                style: AppWidget.LightTextFieldStyle()),
            const SizedBox(
              height: 10.0,
            ),
            ShowItem(),
            const SizedBox(
              height: 10.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Details()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pulao.png',
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Kashmiri Pulao",
                                style: AppWidget.semiBoldTextFieldStyle(),
                              ),
                              Text(
                                "Fresh and healthy!!",
                                style: AppWidget.LightTextFieldStyle(),
                              ),
                              Text(
                                "\$1.5",
                                style: AppWidget.semiBoldTextFieldStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/massalarice.png',
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Kohlapuri Massala Rice",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          ),
                          Text(
                            "Fresh and Tasty!!",
                            style: AppWidget.LightTextFieldStyle(),
                          ),
                          Text(
                            "\$1.7",
                            style: AppWidget.semiBoldTextFieldStyle(),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(7),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/plainrice.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Text(
                              'Steam Rice',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Text(
                                'Steamed and served',
                                style: AppWidget.LightTextFieldStyle(),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Text(
                                '\$0.8',
                                style: AppWidget.semiBoldTextFieldStyle(),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ])),
    ));
  }

  Widget ShowItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  "assets/images/rice.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              )),
        ),
        Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "assets/images/curry.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            )),
        Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "assets/images/sweet.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            )),
        Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "assets/images/salad.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            )),
      ],
    );
  }
}
