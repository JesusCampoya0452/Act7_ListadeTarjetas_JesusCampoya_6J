import 'package:flutter/material.dart';

void main() => runApp(const AppLavanderia());

class AppLavanderia extends StatelessWidget {
  const AppLavanderia({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Empleados(),
    );
  }
}

class Empleados extends StatelessWidget {
  const Empleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lavanderia Campoya',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 2, 172, 251),
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.white),
          onPressed: () {
            // Acción de la cámara
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.local_laundry_service, color: Colors.black),
            onPressed: () {
              // Acción de la lavadora
            },
          ),
          IconButton(
            icon: const Icon(Icons.dry_cleaning, color: Colors.white),
            onPressed: () {
              // Acción de la secadora
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Tarjeta 1
            _crearTarjeta(
              'Lzit No sILVA',
              'Desarrollador Flutter',
              'https://raw.githubusercontent.com/JesusCampoya0452/Imagenes-para-Flutter-6j-11-de-febrero-2026/main/empleado1.png',
            ),
            const SizedBox(height: 12), // Espacio entre tarjetas

            // Tarjeta 2
            _crearTarjeta(
              'Shakira Ortoga',
              'Diseñadora UI/UX',
              'https://raw.githubusercontent.com/JesusCampoya0452/Imagenes-para-Flutter-6j-11-de-febrero-2026/main/empleado2.png',
            ),
            const SizedBox(height: 12),

            // Tarjeta 3
            _crearTarjeta(
              'Jesus Campoya',
              'Especialista en Backend',
              'https://raw.githubusercontent.com/JesusCampoya0452/Imagenes-para-Flutter-6j-11-de-febrero-2026/main/empleado3.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearTarjeta(String titulo, String subtitulo, String urlImagen) {
    return Card(
      color: Colors.deepPurple, // Fondo morado
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlImagen),
          onBackgroundImageError: (exception, stackTrace) {
            // Manejo de error si la imagen no se puede cargar
            print("Error al cargar la imagen: $exception");
          },
        ),
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.favorite_border, color: Colors.red),
          onPressed: () {
            // Aquí iría la lógica del "Like"
          },
        ),
      ),
    );
  }
}
