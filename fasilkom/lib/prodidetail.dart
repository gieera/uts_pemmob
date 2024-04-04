import 'package:flutter/material.dart';
import 'prodi.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchEmail(String emailResmi) async {
  String url = 'mailto:$emailResmi';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Tidak bisa membuka email';
  }
}

class ProdiDetail extends StatelessWidget {
  final Prodi prodi;

  const ProdiDetail({Key? key, required this.prodi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(prodi.label),
        backgroundColor: Color.fromARGB(255, 194, 129, 58),
      ),
      backgroundColor: Color.fromARGB(255, 237, 147, 63),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: Center(
                  child: Image.asset(
                    prodi.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 70),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Profil ${prodi.profil}',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Card(
                      margin: EdgeInsets.only(bottom: 16),
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Visi & Misi',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '${prodi.visi_keilmuan}',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      color: Color.fromARGB(255, 255, 204, 128)
                    ),
                    SizedBox(height: 1),
                    Card(
                      margin: EdgeInsets.only(bottom: 16),
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Akreditasi',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '${prodi.akreditasi}',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      color: Color.fromARGB(255, 255, 204, 128)
                    ),
                    SizedBox(height: 1),
                    Card(
                      margin: EdgeInsets.only(bottom: 16),
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ketua Program Studi',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        color: Colors.blue,
                                        child: Image.asset(
                                          prodi.ketuaProgramStudi.fotoPath,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        _buildKetuaProgramStudiInfo('Nama', prodi.ketuaProgramStudi.nama),
                                        _buildKetuaProgramStudiInfo('NIP', prodi.ketuaProgramStudi.NIP),
                                        _buildKetuaProgramStudiInfo('Email', prodi.ketuaProgramStudi.email),
                                        _buildKetuaProgramStudiInfo('Keahlian', prodi.ketuaProgramStudi.keahlian),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      color: Color.fromARGB(255, 255, 204, 128)
                    ),
                    SizedBox(height: 1),
                    Card(
                      margin: EdgeInsets.only(bottom: 16),
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Daftar Dosen',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ...prodi.dosen.map((dosen) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: SizedBox(
                                        width: 300,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 100,
                                              height: 100,
                                              color: Colors.blue,
                                              child: Image.asset(
                                                dosen.fotoPath,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Nama : ${dosen.nama}',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                Text(
                                                  'NIP : ${dosen.NIP}',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                Text(
                                                  'Email : ${dosen.email}',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                Text(
                                                  'Pendidikan : ${dosen.pendidikan}',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                Text(
                                                  'Bidang Minat : ${dosen.minat}',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                _launchURL(prodi.daftarDosenProdi[0].link);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'More',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      color: Color.fromARGB(255, 255, 204, 128)
                    ),
                    SizedBox(height: 1),
                    Card(
                      margin: EdgeInsets.only(bottom: 16),
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Laman Website Resmi',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchURL(prodi.lamanWebsiteResmi);
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.link),
                                  SizedBox(width: 10),
                                  Text(
                                    'Laman Website Resmi',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      color: Color.fromARGB(255, 255, 204, 128)
                    ),
                    SizedBox(height: 0),
                    Card(
                      margin: EdgeInsets.only(bottom: 16),
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _launchEmail(prodi.emailResmi);
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.email),
                                  SizedBox(width: 10),
                                  Text(
                                    'Email : ${prodi.emailResmi}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      color: Color.fromARGB(255, 255, 204, 128)
                    ),
                    SizedBox(height: 1),
                    Card(
                      margin: EdgeInsets.only(bottom: 16),
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prestasi Mahasiswa',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: prodi.prestasi.map((prestasi) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: SizedBox(
                                      width: 300,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 100,
                                            color: Colors.blue,
                                            child: Image.asset(
                                              prestasi.fotoPath,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Nama : ${prestasi.nama}',
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              Text(
                                                'Prestasi : ${prestasi.prestasi}',
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                        color: Color.fromARGB(255, 255, 204, 128)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildKetuaProgramStudiInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              '$label',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Text(
                  ':',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Flexible(
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
