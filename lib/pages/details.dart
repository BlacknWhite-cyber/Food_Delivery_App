import 'package:flutter/material.dart';
import 'package:helloworld/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightGreen,
        child: Container(
            margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/pulao.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kashmiri',
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                    Text(
                      'Pulao',
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }

                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  a.toString(),
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              Text(
                  'Kashmiri pulao is a delicious variant of rice pulao from Kashmiri cuisine made with nuts, dried fruits, saffron and fresh fruits. Generally, a pulao is rice that is flavored with various spices, then bulked up with the addition of vegetables, nuts or even meats.',
                  maxLines: 4,
                  style: AppWidget.LightTextFieldStyle()),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Delivery Time',
                    style: AppWidget.semiBoldTextFieldStyle(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.alarm,
                    color: Colors.black,
                  ),
                  Text(
                    '30 min',
                    style: AppWidget.semiBoldTextFieldStyle(),
                  )
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Total Price',
                          style: AppWidget.semiBoldTextFieldStyle(),
                        ),
                        Text(
                          '\$1.5',
                          style: AppWidget.HeadLineTextFieldStyle(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 36,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Poppins'),
                          ),
                          const SizedBox(
                            width: 40.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
