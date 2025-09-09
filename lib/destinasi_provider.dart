import 'package:flutter/material.dart';

// Blueprint data untuk setiap destinasi
class DestinasiWisata {
  final String nama;
  final String alamat;
  final String deskripsi;
  final String imageUrl;
  final String mapEmbedUrl;

  DestinasiWisata({
    required this.nama,
    required this.alamat,
    required this.deskripsi,
    required this.imageUrl,
    required this.mapEmbedUrl,
  });
}

// Class Provider sebagai pengelola state aplikasi
class DestinasiProvider extends ChangeNotifier {
  // Data destinasi sekarang disimpan di sini, terpusat.
  final List<DestinasiWisata> _daftarDestinasi = [
    DestinasiWisata(
      nama: 'Candi Borobudur',
      alamat: 'Magelang, Jawa Tengah',
      deskripsi:
          'Candi Borobudur adalah sebuah candi Buddha Mahayana abad ke-9 di Magelang, Jawa Tengah, Indonesia. Monumen ini terdiri atas sembilan teras berundak, enam teras berbentuk bujur sangkar dan tiga teras berbentuk bundar, dengan sebuah stupa utama di puncaknya. Monumen ini dihiasi dengan 2.672 panel relief dan 504 arca Buddha.',
      imageUrl: 'assets/candi-borobudur.png',
      mapEmbedUrl: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3954.3473922112443!2d110.20151117500357!3d-7.645479992364371!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a000000000001%3A0x1d91384e5801787c!2sCandi%20Borobudur!5e0!3m2!1sid!2sid!4v1725704771089!5m2!1sid!2sid',
    ),
    DestinasiWisata(
      nama: 'Raja Ampat',
      alamat: 'Papua Barat',
      deskripsi:
          'Kepulauan Raja Ampat adalah gugusan kepulauan yang berlokasi di barat bagian Semenanjung Kepala Burung (Vogelkop) Pulau Papua. Secara administrasi, gugusan ini berada di bawah Kabupaten Raja Ampat, Provinsi Papua Barat. Kepulauan ini merupakan destinasi menyelam yang populer di kalangan para penyelam.',
      imageUrl: 'assets/raja-ampat.png',
      mapEmbedUrl: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4085429.354743774!2d127.34898118749999!3d-0.5855013000000061!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d4d125f15c528ad%3A0x25a74e3c11cd3ba!2sKepulauan%20Raja%20Ampat!5e0!3m2!1sid!2sid!4v1725704838611!5m2!1sid!2sid',
    ),
    DestinasiWisata(
      nama: 'Gunung Bromo',
      alamat: 'Jawa Timur',
      deskripsi:
          'Gunung Bromo adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal sebagai objek wisata utama di Jawa Timur.',
      imageUrl: 'assets/bromo.png',
      mapEmbedUrl: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31610.87113192455!2d112.93298152436768!3d-7.9424939922055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd637aaab79464b%3A0x4c75b1d3a5668d22!2sGunung%20Bromo!5e0!3m2!1sid!2sid!4v1725704870505!5m2!1sid!2sid',
    ),
    DestinasiWisata(
      nama: 'Banda Neira',
      alamat: 'Maluku Tengah, Maluku',
      deskripsi:
          'Banda Neira adalah salah satu pulau di Kepulauan Banda, yang terkenal dengan sejarahnya sebagai pusat perdagangan pala dan fuli dunia. Pulau ini menawarkan keindahan bawah laut yang menakjubkan untuk snorkeling dan menyelam, serta peninggalan sejarah berupa benteng-benteng kolonial.',
      imageUrl: 'assets/banda-neira.png',
      mapEmbedUrl: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15918.78453538411!2d129.89209507663243!3d-4.52485599553641!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d67b14d88a10137%3A0x6001a455a536783!2sBanda%20Neira!5e0!3m2!1sid!2sid!4v1725704899771!5m2!1sid!2sid',
    ),
    DestinasiWisata(
      nama: 'Kawah Ijen',
      alamat: 'Banyuwangi & Bondowoso, Jawa Timur',
      deskripsi:
          'Kawah Ijen adalah danau kawah asam yang terkenal dengan fenomena api biru (blue fire) langka yang hanya terlihat pada malam hari. Tempat ini juga menjadi lokasi penambangan belerang tradisional dan menawarkan pemandangan matahari terbit yang spektakuler.',
      imageUrl: 'assets/kawah-ijen.png',
      mapEmbedUrl: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15801.699507946621!2d114.22332821086387!3d-8.058069787523639!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd1360879927549%3A0xa9c052cab461fff1!2sKawah%20Ijen!5e0!3m2!1sid!2sid!4v1757250016307!5m2!1sid!2sid',
    ),
    DestinasiWisata(
      nama: 'Gunung Gamkonora',
      alamat: 'Halmahera Barat, Maluku Utara',
      deskripsi:
          'Gunung Gamkonora adalah puncak tertinggi di Pulau Halmahera. Gunung berapi stratovolcano ini menawarkan jalur pendakian yang menantang dengan pemandangan kawah memanjang di puncaknya, menarik bagi para pendaki berpengalaman.',
      imageUrl: 'assets/gamkonora.png',
      mapEmbedUrl: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31909.31117121295!2d127.51356688967135!3d1.3783331609500644!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x329b24e47236b58f%3A0x25619984eefb0564!2sGn.%20Gamkonora!5e0!3m2!1sid!2sid!4v1757251689374!5m2!1sid!2sid',
    ),
    DestinasiWisata(
      nama: 'Gunung Rinjani',
      alamat: 'Lombok, Nusa Tenggara Barat',
      deskripsi:
          'Gunung Rinjani adalah gunung berapi tertinggi kedua di Indonesia. Pendakiannya yang menantang akan terbayar dengan pemandangan kaldera yang megah dan Danau Segara Anak yang berwarna biru pirus di puncaknya.',
      imageUrl: 'assets/rinjani.png',
      mapEmbedUrl: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31575.21525645028!2d116.43674909330778!3d-8.411294514139422!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dcc2d800216cccf%3A0x3c03cdbf11d30a1e!2sGn.%20Rinjani!5e0!3m2!1sid!2sid!4v1757252069698!5m2!1sid!2sid',
    ),
    DestinasiWisata(
      nama: 'Danau Toba',
      alamat: 'Sumatra Utara',
      deskripsi:
          'Danau Toba adalah danau vulkanik terbesar di dunia, terbentuk dari letusan supervolcano puluhan ribu tahun lalu. Di tengahnya terdapat Pulau Samosir yang lebih besar dari Singapura, menjadi pusat kebudayaan suku Batak yang kaya.',
      imageUrl: 'assets/danau-toba.png',
      mapEmbedUrl: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1020333.7678920766!2d97.6528180489364!3d2.6102051541513185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3031de07a843b6ad%3A0xc018edffa69c0d05!2sDanau%20Toba!5e0!3m2!1sid!2sid!4v1757253694938!5m2!1sid!2sid',
    ),
  ];

  // 'getter' ini digunakan oleh UI untuk mengakses daftar destinasi.
  List<DestinasiWisata> get daftarDestinasi => _daftarDestinasi;
}