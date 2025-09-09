import 'package:flutter/material.dart';
import 'dart:ui_web' as ui;
import 'package:web/web.dart' as web;
import 'destinasi_data.dart';

class DetailPage extends StatelessWidget {
  final DestinasiWisata destinasi;

  const DetailPage({super.key, required this.destinasi});

  @override
  Widget build(BuildContext context) {
    final String viewType = 'map-view-${destinasi.nama.replaceAll(' ', '')}';

    ui.platformViewRegistry.registerViewFactory(
      viewType,
      (int viewId) {
        final iframe = web.document.createElement('iframe') as web.HTMLIFrameElement;
        iframe
          ..src = destinasi.mapEmbedUrl
          ..style.border = 'none'
          ..style.width = '100%'
          ..style.height = '100%';
        return iframe;
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(destinasi.nama),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  destinasi.imageUrl,
                  width: double.infinity,
                  height: 350,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Center(child: Icon(Icons.error)),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                destinasi.nama,
                style: const TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.grey[600]),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      destinasi.alamat,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Deskripsi',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                destinasi.deskripsi,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 16.0, height: 1.5),
              ),
              const SizedBox(height: 20),
              const Text(
                'Peta Lokasi',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: HtmlElementView(viewType: viewType),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}