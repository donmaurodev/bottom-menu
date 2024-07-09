import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PantallaPerfil extends StatelessWidget {
  const PantallaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipOval(
                child: CachedNetworkImage(
                  imageUrl:
                      "https://media.bleacherreport.com/w_768,h_512,c_fill/br-img-images/003/677/763/hi-res-6b0250397cb90b7f9cd5f0a907f33301_crop_north.jpg",
                  width: 400,
                  height: 400,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                '@stephencurry',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Perfil: Tercera Pantalla',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
