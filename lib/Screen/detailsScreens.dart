import 'package:flutter/material.dart';
import '../Authentication/newsDetailsRepo/newsDetailsRepository.dart';
import '../Models/newsDetailsModel/NewsDetailsModels.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.newsId}) : super(key: key);
  final String newsId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // extendBody: true,
      extendBodyBehindAppBar: true,
      //resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Colors.blueGrey,
      body: FutureBuilder<NewsDetailsModels>(
        future: NewsDetailsRepo().getDetails(newsId),
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            return  ListView(
              padding: EdgeInsets.zero,
              children: [
                Image.network(snapshot.data!.data!.image![0]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    snapshot.data!.data!.title.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                HtmlWidget(
                    snapshot.data!.data!.description.toString(),
                    textStyle: const TextStyle(
                      backgroundColor: Colors.transparent,
                      color: Colors.white,
                    ),
                ),
                ],
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
