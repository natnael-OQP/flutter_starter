class Introduction {
  final String title, desc, image;
  final String? button;
  Introduction({
    this.button,
    required this.title,
    required this.desc,
    required this.image,
  });
}

List<Introduction> Introduction_demo = [
  Introduction(
    title: "Get credits anytime, anywhere, with no collateral!",
    desc:
        "Get credits based on your income to purchase and get services right when and where you want",
    image: "assets/images/bg1.png",
  ),
  Introduction(
    title: "Pay your credits on your chosen installment options",
    desc:
        "Choose the time duration and the amount of money based on your preferred options",
    image: "assets/images/bg2.png",
  ),
  Introduction(
    title: "Enjoy your purchase service without being worried about inflation",
    desc:
        "Knockdown inflation and purchase now, and enjoy every moment of your payment without stress",
    image: "assets/images/bg3.png",
    button: "Get Started",
  ),
];
