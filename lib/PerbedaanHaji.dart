import 'package:flutter/material.dart';

void main() => runApp(PerbedaanHaji());

class PerbedaanHaji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Perbedaan Haji & Umroh"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageRukun("Ibadah Haji & Umroh",
              "Ibadah haji dan umrah adalah suatu ibadah yang dikerjakan oleh umat Islam di tanah suci (Mekkah). Cara melakukan ibadah haji dan umroh tidak sama, karena memiliki perbedaan dari segi rukun umrah dan wajib umrah, terkadang masih banyak orang yang belum mengetahui perbedaannya. Berikut perbedaan haji dan umroh: \n "),
          _createPageRukun("Ibadah Haji & Umroh",
              "Ibadah haji dilakukan seumur hidup sekali dalam setahun, sedangkan umrah dapat dilakukan setiap hari dalam setahun kecuali hari ibadah haji."),
          _createPageRukun("Ibadah Haji & Umroh",
              "Pada pelaksannaan haji adanya wukuf diarafah (termasuk rukun haji) sedangkan pelaksanaan umrah tidak ada wukuf diarafah."),
          _createPageRukun("Ibadah Haji & Umroh",
              "waktu pelaksanaan ibadah haji lebih lama karena ibadah haji lebih banyak memakan waktu dibandingkan dengan ibadah umrah. karena dalam umrah, kita hanya butuh 3 pekerjaan saja, yaitu berihram dari miqat, bertawaf tujuh kali putaran di sekeliling Ka’bah, lalu berjalan kaki antara bukit Shafa dan Marwah tujuh kali putaran, dan bercukur rambut kemudian selesai"),
          _createPageRukun("Ibadah Haji & Umroh",
              "Dalam pelaksanaan ibadah haji lebih memerlukan tenaga atau fisik yang lebih baik dibandingkan dengan ibadah umrah, karena dalam ibadah haji kegiatan yang dilakukan lebih banyak dan lebih rumit dibandingkan ibadah umrah."),
          _createPageRukun("Ibadah Haji & Umroh",
              "Hukum ibadah haji adalah wajib sedangkan hukum umroh adalah sunnah."),
          _createPageRukun("", ""),
          _createPageRukun(
              "Perbedaan dari segi rukun/ wajib haji dengan rukun/wajib umrah",
              ""),
          _createPageRukun("Rukun Haji ada 6 yaitu :",
              "1. Ihram 2. wukuf diarafah3. tawaf 4. sa’i5. mencukur 6. tertib"),
          _createPageRukun("Rukun Umroh ada 4 yaitu :",
              "1. Ihram disertai niat. 2. Tawaf atau mengelilingi Kakbah. 3. Sa’i (lari-lari kecil antara bukit Safa dan Marwah) 4. Bercukur atau memotong rambut minimal tiga helai"),
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
