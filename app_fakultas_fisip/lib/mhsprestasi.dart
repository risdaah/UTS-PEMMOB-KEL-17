class PrestasiMhs {
  String prodimhs;
  List<PrestasiMahasiswa> prestasimahasiswa;
  PrestasiMhs(this.prodimhs, this.prestasimahasiswa);

  static List<PrestasiMhs> samples = [
    PrestasiMhs('Administrasi Publik', [
      PrestasiMahasiswa(
          'image/adpub-naufal.jpg',
          'Al-Haq Naufal Susilohadi',
          '2020',
          'Juara 3 Pada Lomba Badminton Acara FISIP Sparta 2023 Universitas Brawijaya'),
      PrestasiMahasiswa('image/adpub-ahmad.jpg', 'Ahmad Fais Muludin', '2022',
          'Juara 1 Poomsae Festival Putra Diselenggarakan oleh Pangdam V Brawijaya 09-10 Juni 2023 di Gor Hayam Wuruk Kodam V Brawijaya'),
      PrestasiMahasiswa('image/adpub-nain.png', 'Nain Nur Kholif', '2022',
          'Juara 1 Lomba Esai Nasional Inspiria Fest AKK Fair 2023 Diselenggarakan oleh Forum Administrasi dan Kebijakan Kesehatan, Fakultas Kesehatan Masyarakat Universitas Diponegoro pada Kamis, 5 Oktober 2023 di Undip'),
    ]),
    PrestasiMhs('Administrasi Bisnis', [
      PrestasiMahasiswa(
          'image/adbis-talita.jpg',
          'Talita Karisma Syahrani',
          '2021',
          'Juara 2 100m Bifin Putri, Juara 3 50m Bifin Putri, Juara 3 4x100m Bifin Putri Pada Pekan Olahraga Provinsi Jawa Timur VIII Tahun 2003 di Kolam Renang STKIP Jombang pada 12-15 September 2023'),
      PrestasiMahasiswa(
          'image/adbis-rista.jpg',
          'Rista Maria Hartono Putri',
          '2022',
          'Pemenang 1 Duta Bahasa Jawa Timur 2023 Diselenggarakan oleh Balai Bahasa Jawa Timur di Hotel Grand Mercure Mirama pada 21 Mei 2023'),
      PrestasiMahasiswa('image/adbis-silvia.jpg', 'Silvia Nur Safitri', '2021',
          'Juara Persahabatan Duta Perlindungan Anak Jawa Timur 2023 Diselenggarakan oleh Paguyuban Duta Perlindungan Anak Jawa Timur 13 Agustus 2023 di Ciputra World Surabaya'),
    ]),
    PrestasiMhs('Ilmu Komunikasi', [
      PrestasiMahasiswa('image/ilkom-yasinta.jpg', 'Yasinta Aurellia', '2021',
          '1st Runner Up Puteri Indonesia 2023'),
      PrestasiMahasiswa(
          'image/ilkom-derajat.jpg',
          'Achmad Derajat Waskito',
          '2022',
          'Juara 2 FORDA I (Festival Olahraga Daerah) JAWA TIMUR Kategori FIghting Pibu 56kg Senior PA Diselenggarakan oleh KORMI pada 28-29 Mei di Aula Bela Negara Malang'),
      PrestasiMahasiswa(
          'image/ilkom-niken-fajar-putri.jpg',
          'Niken Desy Nisaulfitri\nFajar Al Haidar\nPutri Raissa Zaravina',
          '2019',
          'Juara 2 Lomba Arjuna Kategori Homeless Media dalam Festival Ajisaka 2023 Diselenggarakan oleh Korps Mahasiswa Komunikasi UGM 20-11 Maret 2023 di Gedung BF Seminar Timur, FISIPOL UGM '),
    ]),
    PrestasiMhs('Hubungan Internasional', [
      PrestasiMahasiswa('image/hi-priyanka.jpg', 'Priyanka Kareena W', '2022',
          'Juara 2 Embu Berpasangan Putri Kyu 2 dan Juara 2 Embu Beregu Putri Cabor Kempo PORPOV JATIM 2023 diselenggarakan oleh Koni Jawa Timur di Gelora abi asad unipdu Kab. Jombang pada 12-15 September 2023'),
      PrestasiMahasiswa('image/hi-owiena.jpg', 'Owiena Aurellia Rusdi', '2020',
          'Juara 1 200M Surface Putri Cabor Selam Porpov Jatim VIII Tahun 2023 mewakili Kab. Sidoarjo pada 12-15 September 2023 di Kolam Renang STKIP Jombang'),
      PrestasiMahasiswa('image/hi-dharma.jpg', 'Dharma Sirhadi', '2022',
          'Juara 2 Kyorugi Festival Putra Diselenggarakan oleh Pangdam V Brawijaya 09-10 Juni 2023 di Gor Hayam Wuruk Kodam V Brawijaya'),
    ]),
    PrestasiMhs('Pariwisata', [
      PrestasiMahasiswa(
          'image/pw-bella.jpg',
          'Bella Aiska Oktavia Ramadhina',
          '2023',
          'Juara 2 Creative Form Open Hand Team Puti dan Juara 3 Creative Form Open Hand Individual Putri Cabang Olahraga Kickboxing Pekan Olahraga Provinsi (PORPROV) Jawa Timur VIII. Tanggal 9-16 September 2023 di SMAN 2 Jombang.'),
      PrestasiMahasiswa('image/pw-defrangga.jpg', 'Defrangga Tedra', '2022',
          'Juara 1 Kyorugi Festival Putra Diselenggarakan oleh Pangdam V Brawijaya 09-10 Juni 2023 di Gor Hayam Wuruk Kodam V Brawijaya'),
      PrestasiMahasiswa(
          'image/pw-meydina.jpg',
          'Meidyna Adjeng Wulandari',
          '2021',
          'Juara 2 Poomsae Festival Putra Diselenggarakan oleh Pangdam V Brawijaya 09-10 Juni 2023 di Gor Hayam Wuruk Kodam V Brawijaya'),
    ]),
  ];
}

class PrestasiMahasiswa {
  String fotopres, namamhs, angkatan, prestasi;

  PrestasiMahasiswa(this.fotopres, this.namamhs, this.angkatan, this.prestasi);
}
