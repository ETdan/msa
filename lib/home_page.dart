// import 'package:flutter/material.dart';
// import 'package:vid/drawer.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final String apiUrl = "https://api.themoviedb.org/3/movie/popular";
//   final String authToken =
//       'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2N2QyODQ1Yjk4MWVhNzEyZjQwZDM3ZTg4NWUwZGMxNSIsInN1YiI6IjY1YWVlMDI3YWFkOWMyMDBhZGZlMmQ0MyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.MjbkiQsNAxVu9Fw7RD23BTd38xulzk3e0O8cWH868mQ';

//   Future<Map<String, dynamic>> fetchData() async {
//     try {
//       final response = await http.get(
//         Uri.parse(apiUrl),
//         headers: {
//           'Accept': 'application/json',
//           'Authorization': authToken,
//           'Host': 'api.themoviedb.org',
//         },
//       );

//       if (response.statusCode == 200) {
//         return json.decode(response.body);
//       } else {
//         print('API Error - Status Code: ${response.statusCode}');
//         print('Response Body: ${response.body}');
//         throw Exception('Failed to load data');
//       }
//     } catch (e) {
//       print('Exception: $e');
//       throw Exception('Failed to load data');
//     }
//   }

//   // void _openWebView(BuildContext context, String initialUrl) {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Home Page')),
//       drawer: const MyDrawer(),
//       body: FutureBuilder<Map<String, dynamic>>(
//         future: fetchData(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator();
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else {
//             final data = snapshot.data;
//             final backdrops = data?['backdrops'];

//             return SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   if (backdrops != null)
//                     for (var backdrop in backdrops)
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           children: [
//                             Image.network(
//                               'https://image.tmdb.org/t/p/original/${backdrop['file_path']}',
//                               height: 200,
//                               width: 180,
//                               fit: BoxFit.fill,
//                             ),
//                             SizedBox(height: 8),
//                             Text(
//                               'https://image.tmdb.org/t/p/original/${backdrop['file_path']}',
//                             ),
//                           ],
//                         ),
//                       ),
//                 ],
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:vid/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String apiUrl = "https://api.themoviedb.org/3/movie/popular";
  final String authToken =
      'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2N2QyODQ1Yjk4MWVhNzEyZjQwZDM3ZTg4NWUwZGMxNSIsInN1YiI6IjY1YWVlMDI3YWFkOWMyMDBhZGZlMmQ0MyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.MjbkiQsNAxVu9Fw7RD23BTd38xulzk3e0O8cWH868mQ';

  Future<Map<String, dynamic>> fetchData() async {
    try {
      final response = await http.get(
        Uri.parse(apiUrl),
        headers: {
          'Accept': 'application/json',
          'Authorization': authToken,
          'Host': 'api.themoviedb.org',
        },
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        print('API Error - Status Code: ${response.statusCode}');
        print('Response Body: ${response.body}');
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Exception: $e');
      throw Exception('Failed to load data');
    }
  }

  void handleMovieTap(String id) {
    Navigator.pushNamed(context, '/webview',
        arguments: {'initialUrl': "https://vidsrc.to/embed/movie/$id"});

    print('Tapped on https://vidsrc.to/embed/movie/$id');
  }

  @override
  Widget build(BuildContext context) {
    print('Building widget...');
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      drawer: const MyDrawer(),
      body: FutureBuilder<Map<String, dynamic>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final data = snapshot.data?['results'];
            if (data != null) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var movie in data)
                      GestureDetector(
                        onTap: () => handleMovieTap(movie['id'].toString()),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.network(
                                'https://image.tmdb.org/t/p/original/${movie['backdrop_path']}',
                                height: 200,
                                width: 180,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(height: 8),
                              Text(movie['original_title']),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              );
            } else {
              return Text('Invalid data format');
            }
          }
        },
      ),
    );
  }
}
