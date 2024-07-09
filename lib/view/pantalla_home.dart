import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import './show_dialog.dart';

class PantallaInicio extends StatefulWidget {
  const PantallaInicio({super.key});

  @override
  State<PantallaInicio> createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Text('Inicio: Bienvenido'),
              CachedNetworkImage(
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/commons/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg",
                width: 600,
                height: 450,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              DialogoSalir.alert(context,
                  title: "Advertencia",
                  description: "¿Desea cerrar sesión?",
                  icono: 'question');
            },
            child: const Text('Salir'),
          ),
        ],
      ),
    ));
  }
}
