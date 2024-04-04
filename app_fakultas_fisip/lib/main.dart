import 'package:app_fakultas_fisip/mhsprestasi.dart';
import 'package:app_fakultas_fisip/prodi.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app_fakultas_fisip/detail_prodi.dart';

import 'dosen.dart';
import 'visimisi.dart';
import 'akreditasi.dart';

void main() {
  runApp(const FisipApp());
}

class FisipApp extends StatelessWidget {
  const FisipApp({Key? key}) : super(key: key);
  static const MaterialColor white = MaterialColor(0xFFe7e571, <int, Color>{
    50: Color(0xFFe7e571),
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFe7e571),
      ),
      home: const MyHomePage(title: 'Fakultas Ilmu Sosial dan Ilmu Politik'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakultas Ilmu Sosial dan Ilmu Politik',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset(
              'image/logoupnbaru.png',
              width: 40,
              height: 40,
            ),
          ),
          title: const Text(
            'Fakultas Ilmu Sosial dan Ilmu Politik',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor: const Color(0xFFe7e571),
          actions: [
            IconButton(
              onPressed: () {
                // Aksi yang ingin Anda lakukan ketika icon diklik
              },
              icon: const Icon(Icons.search_outlined),
              padding: const EdgeInsets.only(right: 15),
              color: Colors.white,
            ),
          ],
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Image.asset(
                  'image/fisip.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        const Color(0xFFe7e571).withOpacity(0.7),
                      ],
                    ),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PROFIL FAKULTAS FISIP UPN JATIM',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Fakultas Ilmu Sosial dan Ilmu Politik merupakan salah satu fakultas yang ada di UPN Veteran Jawa Timur. Yang terdiri dari program studi berikut',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Prodi.samples.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailProdi(
                              prodi: Prodi.samples[index],
                              visimisi: VisiMisi.samples[index],
                              dosen: Dosen.samples[index],
                              akreditasi: Akreditasi.samples[index],
                              prestasimhs: PrestasiMhs.samples[index],
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      color: index % 2 == 0
                          ? const Color(0xFFe7e571)
                          : const Color(0xFFe7e571),
                      child: buildProdiCard(Prodi.samples[index]),
                    ),
                  );
                },
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  'image/upn.jpeg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 250,
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.9),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'HUBUNGI KAMI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned.fill(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 200,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 30.0, left: 40.0),
                              child: Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  width: 100,
                                  'image/km.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 40.0, left: 30.0, right: 40.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Jl. Rungkut Madya No.1, Gn. Anyar, Kec. Gn. Anyar, Kota SBY, Jawa Timur 60294',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () {
                                            _launchEmailFisip(
                                                'fisip@upnjatim.ac.id');
                                          },
                                          child: const Text(
                                            'Email : fisip@upnjatim.ac.id',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () {
                                            _launchIGFisip(
                                                'https://www.instagram.com/fisipupnvjatim/');
                                          },
                                          child: const Text(
                                            'Instagram : fisipupnvjatim',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () {
                                            _launchTTFisip(
                                                'https://www.tiktok.com/@fisipupnvjatim');
                                          },
                                          child: const Text(
                                            'Tiktok : fisipupnvjatim',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () {
                                            _launchFBFisip(
                                                'https://www.facebook.com/people/FISIP-UPN-Veteran-Jawa-Timur/100090930265755/');
                                          },
                                          child: const Text(
                                            'Facebook : FISIP UPN "Veteran" Jawa Timur',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'No. Layanan : 082324544650',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () {
                                            _launchURLFisip(
                                                'https://fisip.upnjatim.ac.id/');
                                          },
                                          child: const Text(
                                            'Kunjungi Website Fisip',
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: Colors.white,
                                              decorationThickness: 2.0,
                                              decorationStyle:
                                                  TextDecorationStyle.solid,
                                              color: Colors.white,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Color(0xFFe7e571),
                        ),
                        child: const Center(
                          child: Text(
                            'Copyright © 2024 | All Rights Reserved | Kelompok 17',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color.fromARGB(255, 120, 119, 51),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void _launchURLFisip(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchIGFisip(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchTTFisip(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchFBFisip(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchEmailFisip(String email) async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
    queryParameters: {
      'subject': 'Email',
      'body': 'Mengirim ke Talia',
    },
  );
  final String uri = _emailLaunchUri.toString();
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not launch $uri';
  }
}

Widget buildProdiCard(Prodi prodi) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            prodi.nProdi,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            prodi.deskProdi1,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
            ),
          )
        ],
      ),
    ),
  );
}
