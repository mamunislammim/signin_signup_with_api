import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:signup_signin_ui_design/Models/latestNewsModels/LatestNewsModel.dart';
import 'package:signup_signin_ui_design/Screen/detailsScreens.dart';
import '../Authentication/latestNewsRepo/latestNewsAuthentication.dart';

class LatestNewsPage extends StatefulWidget {
  const LatestNewsPage({super.key});

  @override
  State<LatestNewsPage> createState() => _LatestNewsPageState();
}

class _LatestNewsPageState extends State<LatestNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              " A ",
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.white,
              ),
            ),
            Text(
              " B ",
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.white,
              ),
            ),
            Text(
              " C ",
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.white,
              ),
            ),
            Text(
              "News ",
              style: TextStyle(
                color: Colors.white,
                // backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: FutureBuilder<LatestNewsModel>(
        future: LatestNewsAuth().getLatestNews(),
        builder: (_, snapshots) {
          if (snapshots.hasData) {
            return ListView.builder(
              itemCount: snapshots.data!.datas!.data!.length,
              itemBuilder: (_, index) {
                if (index == 0) {
                  // return ImageSlideshow(
                  //   height: 300,
                  //   onPageChanged: (value){
                  //   },
                  //     children: [
                  //   // InkWell(
                  //   //   onTap: () {
                  //   //     DetailsScreen(
                  //   //       newsId:
                  //   //           snapshots.data!.datas!.data![index].id.toString(),
                  //   //     ).launch(context);
                  //   //   },
                  //   //   child: Container(
                  //   //     decoration: const BoxDecoration(
                  //   //         borderRadius: BorderRadius.only(
                  //   //           bottomRight: Radius.circular(5),
                  //   //           bottomLeft: Radius.circular(5),
                  //   //         ),
                  //   //         color: Colors.redAccent),
                  //   //     child: Column(
                  //   //       children: [
                  //   //         Image.network(
                  //   //             snapshots.data!.datas!.data![index].image![0]),
                  //   //         Padding(
                  //   //           padding: const EdgeInsets.all(8.0),
                  //   //           child: Text(
                  //   //             snapshots.data!.datas!.data![index].title
                  //   //                 .toString(),
                  //   //             style: const TextStyle(
                  //   //                 color: Colors.white,
                  //   //                 fontWeight: FontWeight.bold,
                  //   //                 fontSize: 17),
                  //   //           ),
                  //   //         )
                  //   //       ],
                  //   //     ),
                  //   //   ),
                  //   // )
                  //       Image.network(
                  //         snapshots.data!.datas!.data![index].image![0],
                  //         fit: BoxFit.fill,
                  //       ),
                  //       Image.network(
                  //         snapshots.data!.datas!.data![index].image![0],
                  //         fit: BoxFit.fill,
                  //       ),
                  //       Image.network(
                  //         snapshots.data!.datas!.data![index].image![0],
                  //         fit: BoxFit.fill,
                  //       ),
                  //       Image.network(
                  //         snapshots.data!.datas!.data![index].image![0],
                  //         fit: BoxFit.fill,
                  //       ),
                  //       Image.network(
                  //         snapshots.data!.datas!.data![index].image![0],
                  //         fit: BoxFit.fill,
                  //       ),
                  // ],
                  // );
                 return InkWell(
                    onTap: () {
                      DetailsScreen(
                        newsId:
                            snapshots.data!.datas!.data![index].id.toString(),
                      ).launch(context);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                          color: Colors.redAccent),
                      child: Column(
                        children: [
                          Image.network(
                              snapshots.data!.datas!.data![index].image![0]),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              snapshots.data!.datas!.data![index].title
                                  .toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                } else {
                  // Row Container
                  return InkWell(
                    onTap: () {
                      DetailsScreen(
                        newsId:
                            snapshots.data!.datas!.data![index].id.toString(),
                      ).launch(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 3, bottom: 3, top: 3),
                      margin: const EdgeInsets.only(
                          top: 3, bottom: 2, left: 2, right: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(
                                1.0,
                                2.0,
                              ),
                              blurRadius: 3.0,
                              spreadRadius: 2.0,
                            ),
                            // BoxShadow(
                            //   color: Colors.white,
                            //   offset: Offset(0.0, 0.0),
                            //   blurRadius: 0.0,
                            //   spreadRadius: 0.0,
                            // ),
                          ]),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Text(
                              "${snapshots.data!.datas!.data![index].title.toString().substring(0, 50)} ....",
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Image.network(
                              snapshots.data!.datas!.data![index].image![0],
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
