part of '../../import-path.dart';

class WelcomeSreen extends StatelessWidget {
  const WelcomeSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppConstant.appSecodrycolor,
          title: const Text('Welcome to my app',
              style: TextStyle(
                  color: AppConstant.appStatusBarcolor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          centerTitle: true),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(child: Lottie.asset('assets/images/splash-icon.json')),
            Container(
                margin: const EdgeInsets.only(top: 22),
                child: const Text('Happy Shopping',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    color: AppConstant.appSecodrycolor,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton.icon(
                  onPressed: () {},
                  label: const Text('sign in with google',
                      style: TextStyle(
                          fontSize: 22,
                          color: AppConstant.appStatusBarcolor,
                          fontWeight: FontWeight.bold)),
                  icon: Image.asset(
                    'assets/images/google-logo.png',
                    width: Get.width / 12,
                    height: Get.height / 12,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 16,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    color: AppConstant.appSecodrycolor,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton.icon(
                    onPressed: () {},
                    label: const Text('sign in with email',
                        style: TextStyle(
                            fontSize: 22,
                            color: AppConstant.appStatusBarcolor,
                            fontWeight: FontWeight.bold)),
                    icon: const Icon(
                      Icons.email,
                      size: 35,
                      color: AppConstant.appTextcolor,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
