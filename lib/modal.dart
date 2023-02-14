class News {
  final List title;

  News({
    required this.title,
  });

  factory News.fromjson({required Map json}) {
    return News(
        title:  json['data'],
    );
  }
}


// class news {
//   final String title;
//   final String imageUrl;
//   final dynamic content;
//   final int date;
//   final String author;
//
//   // final int totalConfirmed;
//   news({
//     required this.title,
//     required this.imageUrl,
//     required this.content,
//     required this.date,
//     required this.author,
//     // required this.totalConfirmed,
//   });
//   factory news.fromJson({required Map json}){
//     return news(
//       title:  json['data'][0]['title'],
//       imageUrl:  json['data'][0]['imageUrl'],
//       content: json['data'][0]['content'],
//       date: json['data'][0]['date'],
//       author: json['data'][0]['author'],
//     );
//   }
// }
