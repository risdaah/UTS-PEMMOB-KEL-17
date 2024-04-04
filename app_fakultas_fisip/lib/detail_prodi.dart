import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'prodi.dart';
import 'visimisi.dart';
import 'dosen.dart';
import 'akreditasi.dart';
import 'mhsprestasi.dart';

class DetailProdi extends StatefulWidget {
  final Prodi prodi;
  final VisiMisi visimisi;
  final Dosen dosen;
  final Akreditasi akreditasi;
  final PrestasiMhs prestasimhs;

  const DetailProdi(
      {Key? key,
      required this.prodi,
      required this.visimisi,
      required this.dosen,
      required this.akreditasi,
      required this.prestasimhs})
      : super(key: key);

  @override
  _DetailProdiState createState() => _DetailProdiState();
}

class _DetailProdiState extends State<DetailProdi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text(
              widget.prodi.nProdi,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            bottom: const TabBar(
              labelStyle: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
              unselectedLabelStyle: TextStyle(
                fontFamily: 'Poppins',
                color: Color.fromARGB(255, 120, 119, 51),
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(text: "Profil"),
                Tab(text: "Visi & Misi"),
                Tab(text: "Akreditasi"),
                Tab(text: "Dosen"),
                Tab(text: "Prestasi"),
              ],
            ),
            backgroundColor: const Color(0xFFe7e571),
          ),
          body: TabBarView(
            children: [
              // Profil
              ListView(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        widget.prodi.headerImg,
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
                        child: Center(
                          child: Text(
                            'Tentang ${widget.prodi.nProdi}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10.0),
                    child: Text(
                      widget.prodi.deskProdi1,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10.0),
                    child: Text(
                      widget.prodi.deskProdi2,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10.0),
                    child: Text(
                      widget.prodi.deskProdi3,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () => launch(widget.visimisi.linkweb),
                      child: Container(
                        child: Text(
                          widget.visimisi.linkweb,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors
                                .blue, // Ubah warna teks menjadi biru agar terlihat seperti tautan
                            decoration: TextDecoration
                                .underline, // Tambahkan garis bawah agar terlihat seperti tautan
                          ),
                        ),
                      ),
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

              // Visi Misi
              ListView(
                children: [
                  // Konten Visi & Misi
                  Stack(
                    children: [
                      Image.asset(
                        widget.prodi.headerImg,
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
                        child: Center(
                          child: Text(
                            'Visi & Misi ${widget.visimisi.vprodi}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10.0),
                    child: Text(
                      widget.visimisi.visiprodi,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10.0),
                    child: Text(
                      widget.visimisi.misiprodi,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.justify,
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

              // Akreditasi
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width - 20),
                        child: Text(
                          'Akreditasi Program Studi ${widget.dosen.dsnprodi}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        '${widget.akreditasi.akre}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Dosen
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Kepala Program Studi ${widget.dosen.dsnprodi}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage(widget.dosen.ftokaprodi),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            widget.dosen.kaprodi,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.all(10.0),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: widget.dosen.ddosen.length,
                      itemBuilder: (BuildContext context, int index) {
                        final ddosen = widget.dosen.ddosen[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20.0, left: 15),
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(ddosen.fotodosen),
                                ),
                              ),
                              SizedBox(height: 5),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // Set agar teks sejajar di tengah vertikal
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ddosen.namadosen,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Dosen Prodi ${widget.prodi.nProdi}',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
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

              // Prestasi
              ListView.builder(
                padding: const EdgeInsets.all(15.0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: widget.prestasimhs.prestasimahasiswa.length,
                itemBuilder: (BuildContext context, int index) {
                  final pres = widget.prestasimhs.prestasimahasiswa[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, left: 15),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(pres.fotopres),
                          ),
                        ),
                        SizedBox(height: 5),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Set agar teks sejajar di tengah vertikal
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pres.namamhs,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                pres.angkatan,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                pres.prestasi,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
