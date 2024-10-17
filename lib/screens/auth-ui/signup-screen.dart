part of '../../import-path.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sign Up',
            style: TextStyle(
                color: AppConstant.appTextcolor,
                fontSize: 29,
                fontWeight: FontWeight.bold)),
        backgroundColor: AppConstant.appSecodrycolor,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: Get.height / 18,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text('Welcome To My App',
                  style: TextStyle(
                      fontSize: 20,
                      color: AppConstant.appSecodrycolor,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: Get.height / 18,
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor: AppConstant.appSecodrycolor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(top: 10, left: 10),
                        hintText: 'Email',
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor: AppConstant.appSecodrycolor,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(top: 10, left: 10),
                        hintText: 'UserName',
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor: AppConstant.appSecodrycolor,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(top: 10, left: 10),
                        hintText: 'phone',
                        prefixIcon: const Icon(Icons.phone),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor: AppConstant.appSecodrycolor,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(top: 10, left: 10),
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: const Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )),
            SizedBox(
              height: Get.height / 40,
            ),
            Material(
              child: Container(
                width: Get.width / 2,
                height: Get.height / 18,
                decoration: BoxDecoration(
                    color: AppConstant.appSecodrycolor,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton.icon(
                  label: const Text('Sign up',
                      style: TextStyle(
                          fontSize: 22,
                          color: AppConstant.appStatusBarcolor,
                          fontWeight: FontWeight.bold)),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account",
                    style: TextStyle(
                        fontSize: 20,
                        color: AppConstant.appSecodrycolor,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () => Get.offAll(() => const SignInScreen()),
                  child: const Text("Sign In",
                      style: TextStyle(
                          fontSize: 20,
                          color: AppConstant.appSecodrycolor,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
