import 'package:flutter/material.dart';
import 'prodi.dart';
import 'prodidetail.dart';
import 'profil.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchEmail(String emailResmi) async {
  String url = 'mailto:$emailResmi';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Tidak bisa membuka email';
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'web Fasilkom',
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                'logoupnbaru.png', // Ubah sesuai dengan path gambar logo UPN
                width: 40,
                height: 40,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Profil Fakultas Ilmu Komputer',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'UPN Veteran Jawa Timur', // Teks "UPN Veteran Jawa Timur"
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 230, 142, 48),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.public), // Ikon website
                  onPressed: () {
                    _launchURL(
                        'https://fasilkom.upnjatim.ac.id/'); // Ganti dengan URL website resmi
                  },
                ),
                IconButton(
                  icon: Icon(Icons.email),
                  onPressed: () {
                    _launchEmail(
                        'fasilkom@upnjatim.ac.id'); // Ganti dengan alamat email yang diinginkan
                  },
                ),
                Text(
                  'fasilkom@upnjatim.ac.id', // Teks alamat email
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
        body: ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text:
                        'Fakultas Ilmu Komputer (FIK) UPNVJT merupakan fakultas yang berperan aktif dalam mengembangkan ilmu pengetahuan dan teknologi di bidang teknologi informasi. Sejak dibentuk pada tahun 2016, FIK telah mengelola dua program studi S1, yaitu Teknik Informatika dan Sistem Informasi, yang sebelumnya berada di bawah Fakultas Teknologi Industri. FIK telah berhasil melaksanakan Tri Dharma Perguruan Tinggi dengan baik, terbukti dari banyaknya penelitian dan pengabdian masyarakat yang dilakukan oleh dosen-dosennya. Melalui kerjasama dengan berbagai institusi, FIK berupaya mewujudkan visi dan misi yang diembannya. Dalam menghadapi arus globalisasi, FIK terus berupaya meningkatkan mutu pendidikan untuk menghasilkan lulusan yang berkualitas dan mampu bersaing secara internasional. Diharapkan FIK dapat terus mengembangkan kualitas lulusan, proses pembelajaran, serta penelitian dan pengabdian kepada masyarakat, sehingga mampu beradaptasi dengan perubahan global yang terus berlangsung.',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Program Studi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Prodi.samples.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProdiDetail(prodi: Prodi.samples[index]);
                          },
                        ),
                      );
                    },
                    child: buildProdiCard(Prodi.samples[index]),
                  );
                },
              ),
              SizedBox(height: 20),
              Text(
                'Profil Kelompok',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail card tambahan
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AdditionalCardDetail(index: index);
                          },
                        ),
                      );
                    },
                    child: buildAdditionalCard(index),
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

Widget buildProdiCard(Prodi prodi) {
  return Card(
    elevation: 2.0,
    margin: EdgeInsets.symmetric(vertical: 10.0), // Tambahkan margin vertikal
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
      side: BorderSide(color: Color.fromARGB(255, 255, 136, 0), width: 2.0), // Tambahkan sisi dengan warna
    ),
    color: Color.fromARGB(255, 254, 233, 188),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(prodi.imageUrl, width: 50, height: 50),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Text(
              prodi.label,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palationo',
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildAdditionalCard(int index) {
  // Data statis untuk card tambahan (ganti dengan data sesuai kebutuhan)
  List<String> additionalCardNames = ['Risma Paramesti', 'Engie Ramadhani'];
  List<String> additionalCardImages = ['fotoRisma.jpeg', 'fotoEngie.jpeg'];

  return Card(
    elevation: 2.0,
    margin: EdgeInsets.symmetric(vertical: 10.0), // Tambahkan margin vertikal
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100.0),
      side: BorderSide(color: Color.fromARGB(255, 223, 137, 40), width: 2.0), // Tambahkan sisi dengan warna
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.center,
              child: ClipOval(
              child: Image.asset(
                additionalCardImages[index], // Mengambil gambar sesuai index
                width: 50,
                height: 50,
              )
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Menentukan tata letak teks ke kiri
              children: [
                SizedBox(height: 0), // Memberikan jarak antara gambar dan teks
                Text(
                  additionalCardNames[index], // Mengambil nama sesuai index
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Palationo',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
