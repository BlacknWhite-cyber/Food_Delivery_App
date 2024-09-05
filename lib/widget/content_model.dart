class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.title, required this.image});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'Pick your food from our \n wide variety of menu  ',
      title: '  Select from\nour best menu',
      image: 'assets/images/1.png'),
  UnboardingContent(
      description:
          'You can pay through Cash after delivery or\n  You can pay through Card and Online methods  ',
      title: 'Easy Payments',
      image: 'assets/images/2.png'),
  UnboardingContent(
      description: ' Delivery of food at your \n doorstep  ',
      title: 'Quick delivery of ordered food!!',
      image: 'assets/images/3.png'),
];
