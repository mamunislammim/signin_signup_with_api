import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:signup_signin_ui_design/ProviderScreen/providerDetailsNews.dart';
import '../Models/latestNewsModels/LatestNewsModel.dart';
import '../Provider/provider.dart';

class LatestNewsProvider extends StatelessWidget {
  const LatestNewsProvider({Key? key}) : super(key: key);

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
      body: Consumer(builder: (_,ref,watch){
          AsyncValue<LatestNewsModel> latestNews = ref.watch(latestNewsProvider);
         return latestNews.when(
              data: (news){
                return ListView.builder(
                  itemCount: news.datas!.data!.length,
                  itemBuilder: (_, index) {
                    if (index == 0) {
                      return InkWell(
                        onTap: () {
                          ProviderDetailsNewsScreen(newsID: news.datas!.data![index].id.toString(),).launch(context);
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
                                  news.datas!.data![index].image![0]),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                 news.datas!.data![index].title
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
                          ProviderDetailsNewsScreen(newsID: news.datas!.data![index].id.toString(),).launch(context);
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

                              ]),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Text(
                                  "${news.datas!.data![index].title.toString().substring(0, 50)} ....",
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Image.network(
                                news.datas!.data![index].image![0],
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
              },
              error: (e, stack){
                return const Center(child: Text("Error"),);
              },
              loading: (){
                return const Center(child: CircularProgressIndicator(),);
              });
      }),
    );
  }
}
