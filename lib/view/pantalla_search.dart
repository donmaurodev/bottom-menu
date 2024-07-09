import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PantallaBuscar extends StatefulWidget {
  const PantallaBuscar({super.key});

  @override
  State<PantallaBuscar> createState() => _PantallaBuscarState();
}

class _PantallaBuscarState extends State<PantallaBuscar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Buscar: Cuarta Pantalla'),
            CachedNetworkImage(
              imageUrl:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/LeBron_James%27_pregame_ritual.jpg/800px-LeBron_James%27_pregame_ritual.jpg",
              width: 600,
              height: 450,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
  }
}
