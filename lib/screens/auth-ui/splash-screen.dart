part of '../../import-path.dart';

class SpashSreen extends StatefulWidget {
  const SpashSreen({super.key});

  @override
  State<SpashSreen> createState() => _SpashSreenState();
}

class _SpashSreenState extends State<SpashSreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => const WelcomeSreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppConstant.appSecodrycolor,
      appBar: AppBar(
        backgroundColor: AppConstant.appSecodrycolor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
                width: Get.width,
                child: Lottie.asset('assets/images/splash-icon.json')),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            alignment: Alignment.center,
            width: Get.width,
            child: Text(
              AppConstant.appPoweredBy,
              style: const TextStyle(
                  fontSize: 22, color: AppConstant.appStatusBarcolor),
            ),
          ),
        ],
      ),
    );
  }
}
