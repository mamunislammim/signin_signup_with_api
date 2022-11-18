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
        backgroundColor: const Color(0xabffffff),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [
            Center(
                child: InkWell(
                    onTap: () async {
                      final prefs = await SharedPreferences.getInstance();
                      prefs.setString("token", '');
                      const SplashScreen().launch(context);
                    },
                    child: Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blueGrey,
                        ),
                        child: const Text("Log Out")))),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: FutureBuilder<GetDataModel>(
          future: GetData().GetAllData(),
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topLeft,
                    children: [
                      Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Colors.teal,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.redAccent,
                                blurRadius: .5,
                                spreadRadius: .6)
                          ],
                          image: DecorationImage(
                            opacity: .5,
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://scontent.fdac136-1.fna.fbcdn.net/v/t39.30808-6/295682003_582279973295891_3884008506104133137_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=e3f864&_nc_ohc=YorYtedRGwkAX82_bGw&_nc_oc=AQkFuRj-OtMZbRduVLlMxJKq_vUyf6iuSiaUTVoNB6Tl0Gz4-an51VG-5LKKpvxCusA&_nc_ht=scontent.fdac136-1.fna&oh=00_AfDzaF9wt2fsoe-BCLPI2-4S4Rdvg2fcDTJW-eHnA94pfA&oe=637BCCF7"),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 10,
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 45,
                              backgroundImage: NetworkImage(
                                  "https://scontent.fdac136-1.fna.fbcdn.net/v/t39.30808-6/295682003_582279973295891_3884008506104133137_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=e3f864&_nc_ohc=YorYtedRGwkAX82_bGw&_nc_oc=AQkFuRj-OtMZbRduVLlMxJKq_vUyf6iuSiaUTVoNB6Tl0Gz4-an51VG-5LKKpvxCusA&_nc_ht=scontent.fdac136-1.fna&oh=00_AfDzaF9wt2fsoe-BCLPI2-4S4Rdvg2fcDTJW-eHnA94pfA&oe=637BCCF7"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 5, left: 8, right: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.redAccent,
                                  ),
                                  child: Text(
                                    snapshot.data!.data!.user!.name
                                        .toString()
                                        .toUpperCase(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Card(
                    color: const Color(0xffe14545),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    shadowColor: Colors.redAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text(
                                "960",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                "Points",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "350",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "300",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: const Color(0x5962A4B6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    shadowColor: Colors.redAccent,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Name : ${snapshot.data!.data!.user!.name.toString()}"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                " E-mail : ${snapshot.data!.data!.user!.email.toString()}"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Phone : ${snapshot.data!.data!.user!.phone.toString()}"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Updated At : ${snapshot.data!.data!.user!.updatedAt.toString()}"),
                          ),
                        ]),
                  ),
                ],
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ));
  }
}
