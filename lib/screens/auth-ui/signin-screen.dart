part of '../../import-path.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Sign In',
            style: TextStyle(color: AppConstant.appTextcolor, fontSize: 29),
          ),
          backgroundColor: AppConstant.appSecodrycolor,
        ),
        body: Container(
          child: Column(
            children: [
              isKeyboardVisible
                  ? const Text('Welcome To My App',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                  : Column(
                      children: [
                        Lottie.asset('assets/images/splash-icon.json'),
                      ],
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 10, left: 10),
                          hintText: 'Password',
                          prefixIcon: const Icon(Icons.password),
                          suffix: const Icon(Icons.visibility_off),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                alignment: Alignment.centerRight,
                child: const Text('Forget Password?',
                    style: TextStyle(
                        fontSize: 18,
                        color: AppConstant.appSecodrycolor,
                        fontWeight: FontWeight.bold)),
              ),
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
                    label: const Text('Sign In',
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account",
                      style: TextStyle(
                          fontSize: 22,
                          color: AppConstant.appSecodrycolor,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Sign Up",
                      style: TextStyle(
                          fontSize: 22,
                          color: AppConstant.appSecodrycolor,
                          fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
