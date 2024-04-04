class Dosen {
  String dsnprodi, kaprodi, ftokaprodi;
  List<DDosen> ddosen;
  Dosen(this.dsnprodi, this.ftokaprodi, this.kaprodi, this.ddosen);

  static List<Dosen> samples = [
    Dosen('Administrasi Publik', 'haha', 'haha', [
      DDosen('Dr. Diana Hertati, MSi', 'image/adpub-diana.jpg'),
      DDosen('Dr. Agus Widiyarta, S.Sos., M.Si.', 'image/adpub-agus.jpg'),
      DDosen('Binti Azizatun Nafiah MPA S.IAN.', 'image/adpub-binti.png'),
      DDosen('Dr. Lukman Arif, M.Si', 'image/adpub-lukman.png'),
      DDosen('Katerina Bataha MPA S.A.P', 'image/adpub-katerina.jpg'),
    ]),
    Dosen('Administrasi Bisnis', 'image/kaprodi-adbis.png',
        'Dr.Acep Samsudin., S,Sos.,MM.,MA', [
      DDosen(
          'Dr. Jojok Dwiridotjahjono, S.Sos.,M.Si', 'image/adbis-jojok.jpeg'),
      DDosen('Dr. Drs. Nurhadi, M.Si', 'image/adbis-nurhadi.jpeg'),
      DDosen('Dr.Ir. Rusdi Hidayat N, M.Si', 'image/adbis-rusdi.jpeg'),
      DDosen('Dra.Sonja Andarini., M, Si', 'image/adbis-sonja.jpeg'),
      DDosen('Sumainah Fauziah, S.AB.,M.AB', 'image/adbis-sumainah.jpeg'),
    ]),
    Dosen('Ilmu Komunikasi', 'image/kaprodi-ilkom.jpg',
        'Dr. Catur Suratnoaji, MSi', [
      DDosen('Didik Tranggono, Ir, M.Si', 'image/ilkom-didik.jpg'),
      DDosen('Dyva Claretta, Dra, M.Si', 'image/ilkom-dyva.png'),
      DDosen('Aulia Rahmawati, Ph.D S.Sos., M.Si', 'image/ilkom-aulia.png'),
      DDosen('Dr. Yudiana Indriastuti, S.Sos., M.Si', 'image/kaprodi-pw.png'),
      DDosen('Didik Tranggono, Ir,M.Si', 'image/pw-joko.jpg'),
    ]),
    Dosen('Hubungan Internasional', 'haha', 'haha', [
      DDosen('Adiasri Putri Purbantina, Ph.D', 'image/hi-adiasari.png'),
      DDosen('Dra. Herlina Suksmawati, M.Si.', 'image/hi-herlina.png'),
      DDosen('Maria Indira Aryani, S.IP., M.Hub.Int', 'image/hi-maria.png'),
      DDosen('Prihandono Wibowo, S.Hub.Int., M.Hub.Int.',
          'image/hi-prihandono.png'),
      DDosen(
          'Renitha Dwi Hapsari, S.Hub.Int., M.Hub.Int.', 'image/hi-renita.png'),
    ]),
    Dosen('Pariwisata', 'image/kaprodi-pw.png',
        'Dr. Yudiana Indriastuti, S.Sos., M.Si', [
      DDosen('Joko Mijiarto, S.Hut., M.Si', 'image/pw-joko.jpg'),
      DDosen('Leily Suci Rahmatin, S.Par., M.Par', 'image/pw-leily.jpg'),
      DDosen('Dr. A. Muammar Alawi, M.Pd.I.', 'image/pw-muammar.jpg'),
      DDosen('Sheidy Yudhiasta, S.Pd., M.Par', 'image/pw-sheidy.jpg'),
      DDosen('Wahyuni, SST.Par., M.Par', 'image/pw-wahyuni.jpg'),
    ]),
  ];
}

class DDosen {
  String namadosen;
  String fotodosen;

  DDosen(this.namadosen, this.fotodosen);
}
