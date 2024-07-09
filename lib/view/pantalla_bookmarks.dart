import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PantallaGuardados extends StatefulWidget {
  const PantallaGuardados({super.key});

  @override
  State<PantallaGuardados> createState() => _PantallaGuardadosState();
}

class _PantallaGuardadosState extends State<PantallaGuardados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Column(
        children: [
          const Text('Guardados: Segunda Pantalla'),
          CachedNetworkImage(
            imageUrl:
                "https://upload.wikimedia.org/wikipedia/commons/9/9a/Cristiano_Ronaldo_Portugal.jpg",
            width: 600,
            height: 450,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ],
      )
    ])));
  }
}
