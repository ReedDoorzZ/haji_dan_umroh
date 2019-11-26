import 'package:flutter/material.dart';

void main() => runApp(HukumHaji());

class HukumHaji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hukum Haji & Umroh"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageRukun("Haji",
              "Haji hukumnya wajib bagi orang-orang yang sudah mampu seumur hidup sekali. Hal ini sesuai dengan perintah Allah dalam al-qur’an surah Ali-Imran Ayat 97: \n Artinya: “Padanya terdapat tanda-tanda yang jelas (di antaranya) maqam Ibrahin, barang siapa memasukinya (Baitullah itu) menjadi amanlah dia. Dan (diantara) kewajiban manusia terhadap Allah adalah melaksanakan ibadah haji ke Baitullah, yaitu bagi orang-orang yang mampu mengadakan perjalanan ke sana. Barang siapa mengingkari (kewajiban) haji maka ketahuilah bahwa Allah Mahakaya (tidak memerlukan sesuatu) dari seluruh Alam. (QS. Ali Imran:97)"),
          _createPageRukun("Umroh",
              "Sedangkan umrah hukumnya sunnah hal ini berdasarkan sabda Rasulullah SAW: \n “Haji adalah fardhu sedangkan umrah adalah “tatawwu.” (HR. muslim). \n Tatawwu ialah tidak diwajibkan, tetapi sangat baik dilakukan untuk mendekatkan diri kepada Allah. Dan melakukannya lebih utama daripada meninggalkannya karena tatawwu mempunyai ganjaran pahala."),
        ],
      ),
    );
  }

  Widget _createPageRukun(String nama, String desc) {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(nama,
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
          ),
          Divider(
            thickness: 4.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              desc,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
