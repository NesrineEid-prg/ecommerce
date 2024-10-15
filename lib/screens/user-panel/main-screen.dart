part of '../../import-path.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(AppConstant.appMainNaime),
          centerTitle: true,
          backgroundColor: AppConstant.appMaincolor),
        
    );
  }
}
