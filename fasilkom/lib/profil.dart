import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AdditionalCardDetail extends StatelessWidget {
  final int index;

  AdditionalCardDetail({required this.index});

  @override
  Widget build(BuildContext context) {
    // Contoh informasi detail untuk card tambahan
    List<Map<String, String>> additionalCardDetails = [
      {
        'name': 'Risma Paramesti',
        'image': 'fotoRisma.jpeg',
        'birthDate': '06 April 2004',
        'address': 'Babatan Jati Sidoarjo',
        'phoneNumber': '081334118284',
        'email': '22082010014@student.upnjatim.ac.id',
        'github': 'https://github.com/RismaParamesti',
        'education':
            'SMA Negeri 2 Sidoarjo (2019-2022), UPN "Veteran" Jawa Timur (2022-Now)',
        'awards':
            'Juara 1 Journalist Competition 2017, Juara 1 Lomba Foto Perpustakaan Daerah Kabupaten Sidoarjo (2018), Duta Pepelingasih Kabupaten Sidoarjo 2023'
      },
      {
        'name': 'Engie Ramadhani',
        'image': 'fotoEngie.jpeg',
        'birthDate': 'Tanjung Pandan, 29 Oktober 2004',
        'address': 'Jl. Hasyim Idris, TanjungPandan, Belitung',
        'phoneNumber': '081995364795',
        'email': '22082010029@student.upnjatim.ac.id',
        'github': 'https://github.com/gieera',
        'education':
            'MA Negeri 1 Belitung (2019-2022), S1 Sistem Informasi UPN "Veteran" Jawa Timur (2022-Now)',
        'awards':
            '1st Winner Madrasah Science Competition in Integrated Physics Belitung Regency Level. (2022), 3th WinnerMadrasah Science Competition in Integrated Physics Provincial Level of Bangka Belitung Islands. (2022), 4th Winner of Wonderful Sail Indonesia Kelayang Beach Painting Competition. (2022) , 1st Winner anniversary poster competition of Madrasah Aliyah 1 Belitung. (2022) , Awardee S1 LPDP Dalam Negeri. (2022-now) , 2nd Winner Mind Mapping Competition AMN Surabaya National Tour. (2023)'
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Kelompok'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255), // Ubah warna latar belakang sesuai keinginan
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                additionalCardDetails[index]['image']!,
                width: 100,
                height: 100,
              ),
              SizedBox(height: 20),
              Text(
                additionalCardDetails[index]['name']!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    _buildDetailItemCard(
                      'Tempat/Tanggal Lahir',
                      additionalCardDetails[index]['birthDate']!,
                    ),
                    _buildDetailItemCard(
                      'Alamat',
                      additionalCardDetails[index]['address']!,
                    ),
                    _buildDetailItemCard(
                      'Nomor HP',
                      additionalCardDetails[index]['phoneNumber']!,
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchEmail(additionalCardDetails[index]['email']!);
                      },
                      child: _buildDetailItemCard(
                        'Email',
                        additionalCardDetails[index]['email']!,
                        isLink: true,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchURL(additionalCardDetails[index]['github']!);
                      },
                      child: _buildDetailItemCard(
                        'Profil GitHub',
                        additionalCardDetails[index]['github']!,
                        isLink: true,
                      ),
                    ),
                    _buildDetailItemCard(
                      'Riwayat Pendidikan',
                      additionalCardDetails[index]['education']!,
                    ),
                    _buildDetailItemCard(
                      'Penghargaan',
                      additionalCardDetails[index]['awards']!,
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

  Widget _buildDetailItemCard(String title, String value, {bool isLink = false}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            if (title == 'Riwayat Pendidikan' || title == 'Penghargaan')
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: value.split(',').map((point) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      '• $point',
                      style: TextStyle(
                        fontStyle:
                            title == 'Penghargaan' ? FontStyle.italic : null,
                      ),
                    ),
                  );
                }).toList(),
              ),
            if (title != 'Riwayat Pendidikan' && title != 'Penghargaan')
              Text(
                value,
                style: isLink ? TextStyle(color: Colors.blue) : null,
              ),
          ],
        ),
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

  void _launchEmail(String email) async {
    String mailUrl = 'mailto:$email';
    if (await canLaunch(mailUrl)) {
      await launch(mailUrl);
    } else {
      throw 'Could not launch $mailUrl';
    }
  }
}
