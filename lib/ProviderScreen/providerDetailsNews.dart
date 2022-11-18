
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import '../Models/newsDetailsModel/NewsDetailsModels.dart';
import '../Provider/provider.dart';

class ProviderDetailsNewsScreen extends StatelessWidget {
  const ProviderDetailsNewsScreen({Key? key,required this.newsID}) : super(key: key);
final String newsID;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Consumer(builder: (_, ref, watch){
          AsyncValue<NewsDetailsModels> detailsNews = ref.watch(detailsNewsProvider(newsID));
       return detailsNews.when(data: (news){
         return  ListView(
           padding: EdgeInsets.zero,
           children:  [
             Image.network(news.data!.image![0]),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(
                 news.data!.title.toString(),
                 style: const TextStyle(
                     color: Colors.white,
                     fontSize: 17,
                     fontWeight: FontWeight.bold),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: HtmlWidget(
                news.data!.description.toString(),
               ),
             ),
           ],
         );
       },
         error: (e,stack){
         return   Center(child: Text(e.toString()));
         },
         loading: (){
         return const CircularProgressIndicator();
         });
        }),
      ),
    );
  }
}
