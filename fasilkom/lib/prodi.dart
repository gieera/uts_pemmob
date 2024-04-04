class Prodi {
  String label;
  String imageUrl;
  int servings;

  // Properti tambahan
  String profil;
  String visi_keilmuan;
  String akreditasi;
  KetuaProgramStudi ketuaProgramStudi; // Properti untuk ketua program studi
  final List<Dosen> dosen; // menyimpan informasi tentang dosen
  final List<Prestasi> prestasi;
  final List<DaftarDosen> daftarDosenProdi;
  String lamanWebsiteResmi;
  String emailResmi;

  Prodi({
    required this.label,
    required this.imageUrl,
    required this.servings,
    required this.profil,
    required this.visi_keilmuan,
    required this.akreditasi,
    required this.ketuaProgramStudi,
    required this.dosen,
    required this.daftarDosenProdi,
    required this.lamanWebsiteResmi,
    required this.prestasi,
    required this.emailResmi,
  });

  static List<Dosen> dosenProdi1 = [
    Dosen(
        nama: 'Dr. Basuki Rahmat, S.Si. MT.',
        NIP: '19690723 2021211 002',
        email: 'basukirahmat.if@upnjatim.ac.id',
        pendidikan: '',
        minat: 'A.I and IoT Programming',
        fotoPath: 'dosentifa1.png'),
    Dosen(
        nama: 'Budi Nugroho, S.Kom. M.Kom.',
        NIP: '19800907 2021211 005',
        email: 'budinugroho.if@upnjatim.ac.id',
        pendidikan: '',
        minat: '',
        fotoPath: 'dosentifa2.png'),
    Dosen(
        nama: '	Eva Yulia Puspaningrum, S.Kom., M.Kom',
        NIP: '19890705 2021212 002',
        email: ' evapuspaningrum.if@upnjatim.ac.id',
        pendidikan: '',
        minat: '',
        fotoPath: 'dosentifa3.png'),
  ];

  static List<Dosen> dosenProdi2 = [
    Dosen(
        nama: 'ABDUL REZHA EFRAT NAJAF, S.Kom, M.Kom.',
        NIP: '19940929 202203 1008',
        email: '',
        pendidikan:
            'S2 Sistem Informasi Universitas Diponegoro (UNDIP) Semarang, S1 Teknik Informatika Universitas Diponegoro (UNDIP) Semarang',
        minat: 'Data Mining, Sistem Pendukung Keputusan',
        fotoPath: 'dosensifo1.jpg'),
    Dosen(
        nama: 'NUR CAHYO WIBOWO, S.Kom, M.Kom',
        NIP: '19790317 2021211 002',
        email: 'nurcahyo.si@upnjatim.ac.id',
        pendidikan:
            'S2 Teknik Informatika Institut Teknologi Sepuluh Nopember (ITS) Surabaya, S1 Teknik Informatika Institut Teknologi Sepuluh Nopember (ITS) Surabaya',
        minat: 'Jaringan Komputer',
        fotoPath: 'dosensifo2.jpg'),
    Dosen(
        nama: 'DHIAN SATRIA YUDHA KARTIKA, S.Kom, M.Kom',
        NIP: '20119860522249',
        email: 'dhian.satria@upnjatim.ac.id',
        pendidikan:
            'S2 Informatika Institut Teknologi Sepuluh Nopember (ITS) Surabaya, S1 Teknik Informatika Universitas Pembangunan Nasional (UPN) Veteran Jawa Timur',
        minat: 'Citra Digital, Basis Data, Data Mining, Software Engineering',
        fotoPath: 'dosensifo3.jpg'),
  ];

  static List<Dosen> dosenProdi3 = [
    Dosen(
        nama: 'Aviolla Terza Damaliana, S.Si, M.Stat',
        NIP: '',
        email: 'aviolla.terza.sada@upnjatim.ac.id',
        pendidikan:
            'S1 Statistika, Institut Teknologi Sepuluh Nopember, S2 Statistika,Institut Teknologi Sepuluh Nopember',
        minat: 'Statistika',
        fotoPath: 'dosensada1.jpg'),
    Dosen(
        nama: 'Wahyu Syaifullah J. S., S.Kom., M.Kom',
        NIP: '3 8608 10 0295 1',
        email: 'wahyu.s.j.saputra.if@upnjatim.ac.id',
        pendidikan:
            'S1 Teknik Informatika, Universitas Pembangunan Nasional “Veteran” Jawa Timur, S2 informatika, Institut Teknologi Sepuluh Nopember',
        minat:
            'Data Scientist, Data Analyst, Kecerdasan Buatan, Algoritma Pemrograman,  Visi Komputer',
        fotoPath: 'dosensada2.jpg'),
    Dosen(
        nama: 'Tresna Maulana Fahrudin, S.ST., M.T.',
        NIP: '20219930501200',
        email: 'tresna.maulana.ds@upnjatim.ac.id',
        pendidikan:
            'D4 Teknik informatika, Politeknik Elektronika Negeri Surabaya, S2 Terapan Teknik Informatika dan Komputer, Politeknik Elektronika Negeri Surabaya',
        minat:
            'Text and Data Mining, Machine and Federated Learning, Big Data Analytics, Nature-inspired Computing',
        fotoPath: 'dosensada3.jpg'),
  ];

  static List<Dosen> dosenProdi4 = [
    Dosen(
        nama: 'Hendra Maulana, S.Kom, M.Kom',
        NIP: '20119831223248',
        email: 'hendra.maulana.if@upnjatim.ac.id',
        pendidikan: '',
        minat: '',
        fotoPath: 'dosenbisdi1.jpg'),
    Dosen(
        nama: 'Pratama Wirya Atmaja, S.Kom, M.Kom',
        NIP: '198401062018031001',
        email: 'pratama_wirya.fik@upnjatim.ac.id',
        pendidikan: '',
        minat: '',
        fotoPath: 'dosenbisdi2.jpg'),
    Dosen(
        nama: 'Letda KC Taufikurrahman, S.Pd., M.Pd',
        NIP: '20119930410246',
        email: 'taufikurrahman.if@upnjatim.ac.id',
        pendidikan: '',
        minat: '',
        fotoPath: 'dosenbisdi3.jpg'),
  ];

  static List<Dosen> dosenProdi5 = [
    Dosen(
        nama: 'Dr. Basuki Rahmat, S.Si., MT',
        NIP: '19690723 2021211 002',
        email: 'basukirahmat.if@upnjatim.ac.id',
        pendidikan: '',
        minat: 'A.I and IoT Programming',
        fotoPath: 'dosenmagister1.jpeg'),
    Dosen(
        nama: 'Dr. Gede Susrama Mas Diyasa, ST., MT., IPU',
        NIP: '19700619 2021211 009',
        email: 'igsusrama.if@upnjatim.ac.id',
        pendidikan: '',
        minat: '',
        fotoPath: 'dosenmagister2.jpeg'),
    Dosen(
        nama: 'Dr. Eng. Ir. Dwi Arman Prasetya, S.T., M.T., IPU',
        NIP: '198012052005011002',
        email: 'arman.prasetya.sada@upnjatim.ac.id',
        pendidikan:
            'S1 Teknik Elektro, Institut Teknologi Sepuluh Nopember S2, Teknik Elektro, Universitas Brawijaya Malang S3 Systems Innovation Engineering, The University of Tokushima Japan',
        minat: '',
        fotoPath: 'dosenmagister3.jpeg'),
  ];

  static List<Prestasi> prestasiProdi1 = [
    Prestasi(
        nama:
            'Nurkholis Amanullah, Muhammad Hakam Fardana, Kaisar Fauzan - Informatika 2020',
        prestasi:
            'Top 20 Product Based Capstone Project Bangkit 2023 (Get Incubation) ',
        fotoPath: 'prestasiInfor1.jpeg'),
    Prestasi(
        nama: 'Yuaini Pranajelita - Informatika 2021',
        prestasi:
            'Juara 1 Poomsae Beregu Senior Putri, diselenggarakan oleh Pangdam V Brawijaya',
        fotoPath: 'prestasiInfor2.jpeg'),
    Prestasi(
        nama: 'Bayu Setya Aji - Informatika 2022',
        prestasi:
            'Juara 2 Kyorugi Festival Putra diselenggarakan oleh Pangdam V Brawijaya',
        fotoPath: 'prestasiInfor3.jpeg'),
  ];

  static List<Prestasi> prestasiProdi2 = [
    Prestasi(
        nama: 'TIM GALAKSI',
        prestasi:
            'Juara 2 pada acara "Creative Innovation and Science Technology Festival" kategori lomba UI/UX Design Competition yang diadakan oleh Himpunana Mahasiswa Sistem Informasi- Universitas Ahmad Dahlan',
        fotoPath: 'prestasiSifo1.jpeg'),
    Prestasi(
        nama: 'TIM ABRYZA',
        prestasi:
            'Juara 3 pada acara "Parade Teknik Informatika UMS" kategori lomba UI/UX Competition yang diadakan oleh Himpunan Mahasiswa Teknik Informatika- Universitas Muhammadiyah Surakarta',
        fotoPath: 'prestasiSifo2.jpeg'),
    Prestasi(
        nama: 'RATIH AISYAH - Information System 2020',
        prestasi:
            'Lolos Program Indonesian International Student Mobility Awards (IISMA) 2023, diterima di Lancaster University ',
        fotoPath: 'prestasiSifo3.png'),
  ];

  static List<Prestasi> prestasiProdi3 = [
    Prestasi(
        nama: 'ACH. ARIF SETIAWAN- Sains Data 2021',
        prestasi: 'Juara 1 GenBi Infographics Competition 2023',
        fotoPath: 'prestasiSada1.jpeg'),
    Prestasi(
        nama: 'MUHAMMAD GHINAN NAVSIH',
        prestasi:
            'Lolos program Indonesian International Student Mobility Awards (IISMA) 2024, diterima di KTH Royal Institute of Technology',
        fotoPath: 'prestasiSada2.jpeg'),
    Prestasi(
        nama:
            'Tsabita Rosyidah Putri, Erika Fatimatul Hidayanti, dan Muhammad Nashif Farid - Sains Data 2022',
        prestasi:
            'Juara 2 Lomba BMC Mahasiswa Dies Natalis Fasilkom UPN "Veteran" Jawa Timur 2023',
        fotoPath: 'prestasiSada3.jpeg'),
  ];

  static List<Prestasi> prestasiProdi4 = [
    Prestasi(
        nama: '-',
        prestasi: '-',
        fotoPath:
            'png-transparent-trophy-silver-cup-trophy-material-png-material-medal-medals.png'),
    Prestasi(
        nama: '-',
        prestasi: '-',
        fotoPath:
            'png-transparent-trophy-silver-cup-trophy-material-png-material-medal-medals.png'),
    Prestasi(
        nama: '-',
        prestasi: '-',
        fotoPath:
            'png-transparent-trophy-silver-cup-trophy-material-png-material-medal-medals.png'),
  ];

  static List<Prestasi> prestasiProdi5 = [
    Prestasi(
        nama: '-',
        prestasi: '-',
        fotoPath:
            'png-transparent-trophy-silver-cup-trophy-material-png-material-medal-medals.png'),
    Prestasi(
        nama: '-',
        prestasi: '-',
        fotoPath:
            'png-transparent-trophy-silver-cup-trophy-material-png-material-medal-medals.png'),
    Prestasi(
        nama: '-',
        prestasi: '-',
        fotoPath:
            'png-transparent-trophy-silver-cup-trophy-material-png-material-medal-medals.png'),
  ];

  static List<DaftarDosen> daftarDosenProdi1 = [
    DaftarDosen(
      link: 'https://if.upnjatim.ac.id/dosen/',
    )
  ];
  static List<DaftarDosen> daftarDosenProdi2 = [
    DaftarDosen(
      link: 'https://sisfo.upnjatim.ac.id/dosen/',
    )
  ];
  static List<DaftarDosen> daftarDosenProdi3 = [
    DaftarDosen(
      link: 'https://sada.upnjatim.ac.id/data-pegawai/',
    )
  ];
  static List<DaftarDosen> daftarDosenProdi4 = [
    DaftarDosen(
      link: 'https://bisdi.upnjatim.ac.id/staf/dosen',
    )
  ];
  static List<DaftarDosen> daftarDosenProdi5 = [
    DaftarDosen(
      link: 'https://mti.upnjatim.ac.id/staff-pengajar/',
    )
  ];

  static List<Prodi> samples = [
    Prodi(
      label: 'Informatika',
      imageUrl: 'informatika.jpeg',
      servings: 0,
      profil: 'Program Studi Informatika',
      visi_keilmuan:
          'Mengembangkan Keilmuan Iinformatika yang Unggul Dalam Bidang Sistem Cerdas Tepat Guna Berkarakter Bela Negara',
      akreditasi: 'Baik Sekali',
      ketuaProgramStudi: KetuaProgramStudi(
          fotoPath: 'ketuaInformatika.png',
          nama: 'Fetty Tri Anggraeny, S.Kom. M.Kom',
          NIP: '19820211 2021212 005',
          email: 'fettyanggraeny.if@upnjatim.ac.id',
          keahlian: 'Digital Image Processing, Computer Vision'),
      dosen: dosenProdi1,
      daftarDosenProdi: daftarDosenProdi1,
      lamanWebsiteResmi: 'https://if.upnjatim.ac.id/',
      emailResmi: 'informatika@upnjatim.ac.id',
      prestasi: prestasiProdi1,
    ),
    Prodi(
      label: 'Sistem Informasi',
      imageUrl: 'sifo.jpeg',
      servings: 0,
      profil: 'Program Studi Sistem Informasi',
      visi_keilmuan:
          'Visi Prodi Sistem Informasi adalah menjadi program studi yang unggul berkarakter bela negara. Visi tersebut diwujudkan ke dalam roadmap keilmuan program studi untuk membangun Smart Village (Desa Cerdas) dengan dukungan teknologi/sistem informasi.',
      akreditasi: 'Baik Sekali',
      ketuaProgramStudi: KetuaProgramStudi(
          fotoPath: 'kaprodisifo.jpeg',
          nama: 'AGUNG BRASTAMA PUTRA, S.Kom, M.Kom',
          NIP: '198511242021211 003',
          email: 'agungbp.si@upnjatim.ac.id',
          keahlian:
              'Modeling and Simulation System Dynamics, Software Development, System Engineering.'),
      dosen: dosenProdi2,
      daftarDosenProdi: daftarDosenProdi2,
      lamanWebsiteResmi: 'https://sisfo.upnjatim.ac.id/',
      emailResmi: 'piasifo@upnjatim.ac.id',
      prestasi: prestasiProdi2,
    ),
    Prodi(
      label: 'Sains Data',
      imageUrl: 'sainsdata.jpeg',
      servings: 0,
      profil: 'Program Studi Sains Data',
      visi_keilmuan:
          'Menjadi program studi sains data yang unggul di bidang kecerdasan buatan dan big data untuk industri 4.0 berkarakter bela negara, Misi: Menyelenggarakan pendidikan terbaik di bidang kecerdasan buatan dan big data bagi para mahasiswa agar mampu menjadi lulusan yang handal, berkarakter Bela Negara, dan berwawasan global dan siap menghadapi tantangan di tengah revolusi industri 4.0, Menyelenggarakan penelitian dan pengembangan ilmu pengetahuan di bidang kecerdasan buatan dan big data yang memberikan dampak pada kemajuan disiplin akademik dan profesional, Menyelenggarakan pengabdian kepada masyarakat dengan menerapkan ilmu-ilmu di bidang kecerdasan buatan dan big data, Melaksanakan tata kelola yang baik dan bersih dalam rangka mencapai pengelolaan anggaran yang akuntabel, Mengembangkan kualitas sumber daya manusia yang memiliki karakter unggul, handal, cerdas, dan berjiwa kepemimpinan, Mengembangkan sistem pengelolaan sarana dan prasarana terintegrasi yang mendukung operasional, Menjalin kerjasama dengan masyarakat, institusi, dan lembaga pemerintah maupun swasta untuk terus meningkatkan kualitas kegiatan dan hasil tridharma perguruan tinggi',
      akreditasi: 'Baik',
      ketuaProgramStudi: KetuaProgramStudi(
          fotoPath: 'kaprodisada.png',
          nama: 'Dr.Eng.Ir.Dwi Arman Prasetya.,ST.,MT.,IPU.',
          NIP: '198012052005011002',
          email: 'arman.prasetya.sada@upnjatim.ac.id',
          keahlian:
              'Swarm robotics, Biomedical engineering, Artificial intelligence, Internet of things'),
      dosen: dosenProdi3,
      daftarDosenProdi: daftarDosenProdi3,
      lamanWebsiteResmi: 'https://sada.upnjatim.ac.id/',
      emailResmi: 'ds@upnjatim.ac.id',
      prestasi: prestasiProdi3,
    ),
    Prodi(
      label: 'Bisnis Digital',
      imageUrl: 'bisnisdigital.jpeg',
      servings: 0,
      profil: 'Program Studi Bisnis Digital',
      visi_keilmuan:
          '“Menjadi Program Studi yang Unggul di Bidang Intelligent Business untuk Industri 4.0 dan Society 5.0 Berkarakter Bela Negara”',
      akreditasi: 'Baik',
      ketuaProgramStudi: KetuaProgramStudi(
          fotoPath: 'kaprodibisdi.png',
          nama: 'Sugiarto, S.Kom, M.Kom',
          NIP: '198702142021211001',
          email: 'sugiarto.if@upnjatim.ac.id',
          keahlian: 'Bisnis Digital'),
      dosen: dosenProdi4,
      daftarDosenProdi: daftarDosenProdi4,
      lamanWebsiteResmi: 'https://bisdi.upnjatim.ac.id/',
      emailResmi: 'bisdi@upnjatim.ac.id',
      prestasi: prestasiProdi4,
    ),
    Prodi(
      label: 'Magister Teknologi Informasi',
      imageUrl: 's2.jpeg',
      servings: 0,
      profil: 'Program Studi Magister Teknologi Informasi',
      visi_keilmuan:
          'Menjadi Program Studi yang Unggul di Bidang Teknologi Informasi berbasis Sistem Cerdas yang Berkarakter Bela Negara. Misi: Menyelenggarakan pendidikan Magister Teknologi Informasi yang berkualitas dan berkarakter bela negara untuk menghasilkan lulusan yang bermutu dan berdaya saing di tingkat lokal, nasional, dan internasional, Menyelenggarakan penelitian yang berkualitas untuk menghasilkan publikasi tingkat nasional, internasional, serta hak kekayaan atas intelektual, buku ajar, kebijakan dan teknologi yang berhasil guna dan berdaya guna dalam bidang Teknologi Informasi, Menyelenggarakan pengabdian kepada masyarakat sebagai pengembangan dan penerapan teknologi informasi dengan mengedepankan sumber daya lokal melalui layanan implementasi, konsultasi, pendampingan, dan pelatihan, Menjalin kerjasama dengan berbagai lembaga, baik di dalam maupun diluar negeri',
      akreditasi: 'Baik',
      ketuaProgramStudi: KetuaProgramStudi(
          fotoPath: 'kaprodimagisterTI.jpeg',
          nama: 'Dr. Eng. Agussalim, MT.',
          NIP: '19850811 201903 100005',
          email: 'agussalim.si@upnjatim.ac.id',
          keahlian:
              'computer Networks, Store-Carry-Forward Networking, Multihop Wireless Networking, Delay Tolerant Networking, Software Defined Networking, Fog Computing'),
      dosen: dosenProdi5,
      daftarDosenProdi: daftarDosenProdi5,
      lamanWebsiteResmi: 'https://mti.upnjatim.ac.id/',
      emailResmi: 'mti@upnjatim.ac.id',
      prestasi: prestasiProdi5,
    ),
  ];
}

class KetuaProgramStudi {
  String fotoPath;
  String nama;
  String NIP;
  String email;
  String keahlian;

  KetuaProgramStudi({
    required this.fotoPath,
    required this.nama,
    required this.NIP,
    required this.email,
    required this.keahlian,
  });
}

class Dosen {
  final String nama;
  final String NIP;
  final String email;
  final String pendidikan;
  final String minat;
  final String fotoPath;
  // Jika diperlukan, Anda dapat menambahkan properti lain untuk dosen seperti NIP, email, dll.

  Dosen({
    required this.nama,
    required this.NIP,
    required this.email,
    required this.pendidikan,
    required this.minat,
    required this.fotoPath,
    // Jika diperlukan, Anda dapat menambahkan parameter lain di sini.
  });
}

class Prestasi {
  final String nama;
  final String prestasi;
  final String fotoPath;
  // Jika diperlukan, Anda dapat menambahkan properti lain untuk dosen seperti NIP, email, dll.

  Prestasi({
    required this.nama,
    required this.prestasi,
    required this.fotoPath,
    // Jika diperlukan, Anda dapat menambahkan parameter lain di sini.
  });
}

class DaftarDosen {
  final String link;

  // Jika diperlukan, Anda dapat menambahkan properti lain untuk dosen seperti NIP, email, dll.

  DaftarDosen({
    required this.link,
    // Jika diperlukan, Anda dapat menambahkan parameter lain di sini.
  });
}

class Data {
  String name;
  String description;

  Data(this.name, this.description);
}
