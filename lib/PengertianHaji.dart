import 'package:flutter/material.dart';

void main() => runApp(PengertianHaji());

class PengertianHaji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pengertian Haji & Umroh"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageRukun("Haji",
              "Haji adalah berkunjung ketanah suci (ka’bah)) untuk melaksanakan amal ibadah tertentu sesuai dengan syarat, rukun, dan ketentuan yang telah ditetapkan oleh syara’. Haji diwajibkan bagi orang-orang islam yang sudah mampu atau mempunyai biaya untuk melaksanakannya. Haji dilaksanakanibadah pada bulan zulhijjah."),
          _createPageRukun("Umroh",
              "Sedangkan umrah adalah berkunjung ke tanah suci atau Baitullah dengan tujuan mendekatkan diri kepada Allah SWT dengan memenuhi syarat tertentu yang telah ditetapkan oleh syara’, dan waktunya boleh kapan saja tidak ditentukan seperti halnya haji."),
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
