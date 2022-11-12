import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:signup_signin_ui_design/Models/getDataModel/Get_data_model.dart';
import 'package:signup_signin_ui_design/Screen/splash_screen.dart';
import '../Authentication/GetDataAuth/get_data_auth.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Center(
              child: InkWell(
                  onTap: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setString("token", '');
                      const SplashScreen().launch(context);
                  },
                  child: const Text("Log Out"))),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.white, width: 5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "You Are \n         SuccessFull....",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),

            const SizedBox(height: 20,),
            FutureBuilder<GetDataModel>(
                future: GetData().GetAllData(),
                builder: (_, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Name : ${snapshot.data?.data?.user?.name}" ?? '',
                          style:   const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text(
                          snapshot.data?.data?.user?.email ?? '',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text(
                          snapshot.data?.data?.user?.updatedAt?? '',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text(
                          snapshot.data?.data?.user?.phone.toString() ?? '',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ],
                    );
                  }
                  else {
                     return const CircularProgressIndicator();
                  }
                },)
          ],
        ),
      )),
    );
  }
}
