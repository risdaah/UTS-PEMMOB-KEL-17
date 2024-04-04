class Prodi{
  String nProdi, deskProdi1, deskProdi2, deskProdi3, headerImg, email, web, logo;

  Prodi(this.nProdi, this.deskProdi1, this.deskProdi2, this.deskProdi3, this.headerImg, this.email, this.web, this.logo);

  static List<Prodi> samples = [
    Prodi(
      'Administrasi Publik', 
      'Program Studi Administrasi Publik Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran” Jawa Timur (FISIP-UPNVJT) didirikan untuk memenuhi kebutuhan tenaga professional dalam bidang Administrasi Publik dan membantu pemerintah dalam menyediakan tenaga professional yang kompeten dan memiliki daya saing.',
      'Sejak tahun 2009 Fakultas Ilmu Sosial dan Ilmu Politik memiliki empat Program Studi yaitu : Ilmu Administrasi Negara, Ilmu Administrasi Bisnis, Ilmu Komunikasi, dan Hubungan Internasional. Selanjutnya UPN “Veteran” Jawa timur berdasarkan Peraturan Presiden Republik Indonesia Nomor 122 Tahun 2014 tentang Pendirian Universitas Pembangunan Nasional “Veteran” Jawa Timur sebagai Perguruan Tinggi Negeri.',
      'Selain itu, Program Studi Administrasi Publik Fakultas Ilmu Sosial dan Ilmu Politik UPN “Veteran” Jawa Timur (FISIP-UPNVJT) didirikan untuk menghasilkan Sarjana Administrasi Publik yang memiliki integritas, kepribadian, kepekaan sosial dan karakter yang tangguh serta kompetensi keilmuan yang memadai dan daya saing tinggi, beriman dan bertaqwa kepada Tuhan yang Maha Esa sekaligus menjunjung tinggi nikai-nilai dan semangat bela Negara yang siap untuk mendharmabaktikan dirinya pada kepentingan masyarakat, bangsa dan Negara.',
      'image/adpub.jpg',
      'adneg@upnjatim.ac.id',
      'https://adneg.upnjatim.ac.id/',
      'image/logoadpub.jpeg'
    ),

    Prodi(
      'Administrasi Bisnis',       
      'Program Studi Ilmu Administrasi Bisnis (Prodi Adbis) merupakan salah satu dari 4 (Lima) Progdi yang dimiliki  Fakultas Ilmu Sosial dan Ilmu Politik (FISIP), Universitas Pembangunan Nasional (UPN) “Veteran” Jawa Timur. Progdi Adbis berdiri pada tahun 1993 berdasarkan Surat Keputusan Menhankam Nomor Kep/01/II/1993, tanggal 27 Pebruari 1993 dengan status Negeri Kedinasan.',
      'Program Studi Ilmu Administrasi Bisnis telah mendapatkan nilai Akreditasi A berdasarkan Surat Keputusan Badan Akreditasi Nasional Perguruan Tinggi Departemen Pendidikan Nasional Republik Indonesia No : 022/BAN-PT/Ak-SURV-III/S1/II/2012 tanggal 2 Maret 2012 .',
      'Akreditasi A mampu dipetahankan oleh Prodi Ilmu Administrasi Bisnis pada 21 mei 2016 untuk yang ketiga kali. Perubahan nama Program Studi Ilmu Administrasi Bisnis menjadi Program Studi Administrasi Bisnis berdasarkan keputusan Kemenristekdikti No. 956/KPT/1/2019. Akreditasi Program Studi Ilmu Administrasi Bisnis diperpanjang lagi Terakreditasi A berdasarkan Kep. BAN -PT NOMOR 3166/ SK / BAN- PT/Ak-PPJ/S.V/2021 21 Mei 2021 sampai 21 Mei 2026 dengan nilai 370.',
      'image/adbis.jpg',
      'adbisupnvjt@gmail.com',
      'https://adbis.upnjatim.ac.id/',
      'image/logoadbis.jpg'
    ),

    Prodi(
      'Ilmu Komunikasi', 
      'Program Studi Ilmu Komunikasi berdiri pada 27 April 1994 dengan SK Pendirian Program Studi Nomor. Kep/09/IV/1994. Pada tahun 1994 Universitas Pembangunan Nasional “Veteran” Jawa Timur berada dalam naungan Departemen Pertahanan dan Keamanan dengan status Negeri Kedinasan. Jurusan Ilmu Komunikasi pada saat itu berada didalam Fakultas Ilmu Administrasi yang kemudian berubah menjadi Fakultas Ilmu Sosial dan Ilmu Politik sejak tanggal 6 Mei 2005.',
      'Jurusan Ilmu Komunikasi seiring dengan perkembangan Universitas Pembangunan Nasional “Veteran” Jawa Timur dengan dinamikanya berubah menjadi Perguruan Tinggi Swasta pada tahun 1995 dibawah Yayasan Kejuangan Panglima Besar Sudirman dan secara fungsional dibawah pembinaan Departemen Pertahanan dan Keamanan RI. Pada tanggal 6 Oktober 2014 dengan Peraturan Presiden No. 122 tahun 2014, Presiden RI Susilo Bambang Yudhoyono menandatangani pengesahan UPN “Veteran” Jawa Timur menjadi Perguruan Tinggi Negeri dibawah Kementerian Riset, Teknologi dan Pendidikan Tinggi .',
      'Program Studi Ilmu Komunikasi selalu memperoleh nilai Akreditasi A oleh BAN-PT. Lulusan Ilmu Komunikasi sudah tersebar luas di berbagai bidang pekerjaan baik di dalam maupun luar negeri, baik pemerintahan ataupun swasta. Banyak terdapat lulusan yang bekerja di industri media massa baik Surat Kabar/Majalah, Radio, Televisi, Humas, Event Organizer serta berbagai bidang kerja komunikasi lainnya. Banyak pula lulusan yang dipercaya diluar bidang komunikasi namun sedikit banyak masih berkaitan mengingat Ilmu Komunikasi yang Multi Disipliner.',
      'image/ilkom.jpg',
      'ilmu.komunikasi@upnjatim.ac.id',
      'https://ilkom.upnjatim.ac.id/',
      'image/logoilkom.png'
    ),

    Prodi(
      'Hubungan Internasional', 
      'Program Studi S1 Hubungan Internasional didirikan pada tanggal 30 September 2011, di bawah Fakultas Ilmu Sosial dan Ilmu Politik melalui Surat Keputusan Menteri Pendidikan Nasional nomor 216/E/O/2011.',
      'Di antara beberapa jurusan HI di provinsi Jawa Timur, HI UPNVJT memberikan penekanan unik pada pendekatan lokal. Ketika sebagian besar jurusan HI di Indonesia sering menggunakan perspektif makro untuk menganalisis fenomena global, HI UPNVJT bertujuan untuk melihat konteks lokal untuk melihat gambaran yang lebih luas. ',
      'Karakteristik lokal yang diimplementasikan sebagai kurikulum inti HI, sejalan dengan visi universitas untuk menerapkan karakter bangsa dan juga sesuai dengan standar nasional pendidikan tinggi yang baru, yaitu kurikulum "Kampus Merdeka, Merdeka Belajar" yang dikeluarkan oleh Menteri Pendidikan dan Kebudayaan. Standar dan kurikulum baru ini mengharuskan universitas di seluruh Indonesia untuk mendorong mahasiswanya agar lebih aktif terlibat dalam masyarakat dan dunia kerja selama masa studi mereka untuk meningkatkan kemampuan kerja mereka.',
      'image/hi.jpg',
      'hubint@upnjatim.ac.id',
      'https://hubint.upnjatim.ac.id/',
      'image/logohi.jpeg'
    ),

    Prodi(
      'Pariwisata', 
      'Program Studi Pariwisata UPN “Veteran” Jawa Timur berdiri pada tanggal tanggal 8 April 2020 berdasarkan Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia Nomor: 433/M/2020.',
      'UPN “Veteran” Jawa Timur Kembali mendapatkan izin membuka prodi Pariwisata berdasarkan Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia Nomor: 433/M/2020 tanggal 8 April 2020 tentang Izin Pembukaan Program Studi Pariwisata Program Sarjana pada Universitas Pembangunan Nasional “Veteran” Jawa Timur di Kota Surabaya',
      'Pendirian program studi ini untuk menjawab tantangan dan perkembangan industri pariwisata di Indonesia dan dunia. Dalam beberapa tahun terakhir, industri pariwisata telah mengalami pertumbuhan yang signifikan, didorong oleh faktor-faktor seperti globalisasi, perkembangan teknologi informasi, dan perubahan perilaku konsumen. Namun, pertumbuhan ini juga diiringi oleh tantangan seperti persaingan yang ketat, kebutuhan akan sumber daya manusia yang berkualitas, dan perlunya inovasi dalam menghadapi perubahan tren dan preferensi wisatawan. ',
      'image/pari.png',
      'pariwisata@upnjatim.ac.id',
      'https://pariwisata.upnjatim.ac.id/',
      'image/logopari.jpg'
    ),
  ];
}