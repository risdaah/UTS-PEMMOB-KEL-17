import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app_fakultas_fisip/prodi.dart';
import 'package:app_fakultas_fisip/detail_prodi.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dosen.dart';
import 'visimisi.dart';
import 'akreditasi.dart';
import 'mhsprestasi.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.white, 
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
      title: const Text(
        'Profil Kelompok 17',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      backgroundColor: const Color(0xFFe7e571),
    ),
    body: ListView(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Biodata Anggota 1',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'image/talia.jpg',
                  width: 100,
                  fit: BoxFit.contain,
                ),
              ),
              const Text(
                'Nama : Talia Aprianti',
                style: TextStyle(
                  fontSize: 12.0,                
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                      'TTL : Surabaya, 14 April 2004',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      'Alamat : Perum. Taman Puspa Sari Candi-Sidoarjo',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      'No : 083849727449',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),                    
                    const Text(
                      'Riwayat Pendidikan : SMKN 2 Buduran',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      'Prestasi : Juara 2 Lomba UI Koperasi Sekolah',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    _launchEmail('22082010035@student.upnjatim.ac.id');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 207, 205, 89),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        color: Colors.white,
                                        size: 16.0,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Email',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0), 
                                child: ElevatedButton(
                                  onPressed: () {
                                    const url = 'https://github.com/Talia-Apr';
                                    _launchGitHub(url);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 207, 205, 89),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.github,
                                        color: Colors.white,
                                        size: 16.0,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'GitHub',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Biodata Anggota 2',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'image/risda.jpg',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text(
                      'Nama : Risda Rahmawati Harsono',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                            'TTL : Sidoarjo, 01 Februari 2004',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text(
                            'Alamat : Kali Tengah, Tanggulangin-Sidoarjo',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text(
                            'No : 0895326442194 / 087753396348',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),                          
                          const Text(
                            'Riwayat Pendidikan : SMKN 2 Buduran',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text(
                            'Prestasi : Juara 2 LKS AI Wilker 1 Jawa Timur',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    _launchEmail('22082010040@student.upnjatim.ac.id');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 207, 205, 89),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        color: Colors.white,
                                        size: 16.0,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Email',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0), 
                                child: ElevatedButton(
                                  onPressed: () {
                                    const url = 'https://github.com/risdaah';
                                    _launchGitHub(url);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 207, 205, 89),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.github,
                                        color: Colors.white,
                                        size: 16.0,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'GitHub',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: Container(
                height: 50,
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
            );
          }

      void _launchGitHub(String url) async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      }

      void _launchEmail(String email) async {
        final Uri _emailLaunchUri = Uri(
          scheme: 'mailto',
          path: email,
          queryParameters: {
            'subject': 'Email',
            'body': 'Mengirim Email',
          },
        );
        final String uri = _emailLaunchUri.toString();
        if (await canLaunch(uri)) {
          await launch(uri);
        } else {
          throw 'Could not launch $uri';
        }
      }
}

void main() {
  runApp(const FisipApp());
}

class FisipApp extends StatelessWidget {
  const FisipApp({Key? key}) : super(key: key);

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: const Icon(Icons.person),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Profil();
              }));
            },
          ),
        )
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
              physics: const NeverScrollableScrollPhysics(),
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
                    color: index % 2 == 0 ? const Color(0xFFe7e571) : const Color(0xFFe7e571),
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
                            padding: const EdgeInsets.only(top: 30.0, left: 40.0),
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'image/km.png',
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 40.0, left: 30.0, right: 40.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                          _launchEmailFisip('fisip@upnjatim.ac.id');
                                        },
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.email,
                                              color: Colors.white,
                                              size: 15.0,
                                            ),
                                              SizedBox(width: 4.0),
                                              Text(
                                                'Email : fisip@upnjatim.ac.id',
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.white,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () {
                                          _launchURL('https://www.instagram.com/fisipupnvjatim/');
                                        },
                                        child: const Row(
                                          children: [
                                            FaIcon(
                                                FontAwesomeIcons.instagram,
                                                size: 15.0,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 4.0),
                                              Text(
                                                'Instagram : fisipupnvjatim',
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.white,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () {
                                          _launchURL('https://www.tiktok.com/@fisipupnvjatim');
                                        },
                                        child: const Row(
                                          children: [
                                            FaIcon(
                                                FontAwesomeIcons.tiktok,
                                                size: 15.0,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 4.0),
                                              Text(
                                                'Tiktok : fisipupnvjatim',
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.white,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () {
                                          _launchURL('https://www.facebook.com/people/FISIP-UPN-Veteran-Jawa-Timur/100090930265755/');
                                        },
                                        child: const Row(
                                          children: [
                                            FaIcon(
                                                FontAwesomeIcons.facebook,
                                                size: 15.0,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 4.0),
                                              Text(
                                                'Facebook : FISIP UPN "Veteran" Jawa Timur',
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.white,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () {
                                          _launchURL('https://fisip.upnjatim.ac.id/');
                                        },
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.link,
                                              color: Colors.white,
                                              size: 16.0,
                                            ),
                                              SizedBox(width: 4.0),
                                              Text(
                                                'Kunjungi Website FISIP',
                                                  style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                              ),
                                          ],
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
    );
  }

  void _launchURL(String url) async {
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
}
