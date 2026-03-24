import 'package:flutter/material.dart';

// -- PASO 1: PUNTO DE ENTRADA --
void main() {
  runApp(const MyApp());
}

// -- PASO 2: ESTRUCTURA BÁSICA DE LA APP --
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Store Grid - 14 Espacios',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      // Esta es nuestra pantalla principal
      home: const GameStorePage(),
    );
  }
}

// -- PASO 3: LA PANTALLA PRINCIPAL (GRIDVIEW ESTÁTICO) --
class GameStorePage extends StatelessWidget {
  const GameStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- BARRA SUPERIOR TURQUESA (IDÉNTICA A LA IMAGEN) --
      appBar: AppBar(
        // Color Turquesa exacto de la imagen
        backgroundColor: const Color(0xFF66E0E0), 
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "G",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: Colors.black),
          ),
        ],
      ),
      
      // -- EL CUERPO CON EL GRIDVIEW --
      // Usamos ListView aquí para poder colocar las tarjetas manualmente una por una
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Usamos un GridView.count para fijar las 2 columnas y el diseño
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(), // El scroll lo maneja el SingleChildScrollView
              crossAxisCount: 2, // 2 Columnas
              crossAxisSpacing: 10, // Espacio horizontal
              mainAxisSpacing: 10, // Espacio vertical
              childAspectRatio: 0.76, // Radio para el diseño de la imagen
              
              // --- AQUÍ ESTÁN TUS 14 ESPACIOS DIFERENTES ---
              // He creado 14 llamadas manuales al widget de tarjeta, cada una con datos temporales.
              children: const [
                // TARJETA 1
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/brawlstars.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 1]
                  title: 'BRAWL STARS', // [PEGAR TÍTULO AQUÍ PARA JUEGO 1]
                  subtitle: 'Increible juego de lucha', // [PEGAR SUBTÍTULO AQUÍ PARA JUEGO 1]
                ),
                // TARJETA 2
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/fort.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 2]
                  title: 'Fortnite',
                  subtitle: 'Juego de guerra en línea',
                ),
                // TARJETA 3
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/gd.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 3]
                  title: 'Geometry dash]',
                  subtitle: 'Juego de arcade',
                ),
                // TARJETA 4
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/juego2.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 4]
                  title: 'Free Fire',
                  subtitle: 'Juego de disparos',
                ),
                // TARJETA 5
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/mclogo.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 5]
                  title: 'Minecraft',
                  subtitle: 'Juego de construcción',
                ),
                // TARJETA 6
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/poppy.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 6]
                  title: 'Poppy Playtime',
                  subtitle: 'Juego de terror',
                ),
                // TARJETA 7
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/rblxlogo.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 7]
                  title: 'Roblox',
                  subtitle: 'Juego increible',
                ),
                // TARJETA 8
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/smashbros.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 8]
                  title: 'Smash Bros',
                  subtitle: 'Juego de brgzos',
                ),
                // TARJETA 9
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/resident.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 9]
                  title: 'Resident Evil',
                  subtitle: 'Juego de terror',
                ),
                // TARJETA 10
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/clashofclans.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 10]
                  title: 'Clash of Clans',
                  subtitle: 'Juego de estrategia',
                ),
                // TARJETA 11
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/stumble.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 11]
                  title: 'Stumble Guys',
                  subtitle: 'Juego de plataformas',
                ),
                // TARJETA 12
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/clashroyale.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 12]
                  title: 'Clash Royale',
                  subtitle: 'Juego de estrategia',
                ),
                // TARJETA 13
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/juego1.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 13]
                  title: 'Zelda',
                  subtitle: 'Juego de aventura',
                ),
                // TARJETA 14
                CustomGameCard(
                  imageUrl: 'https://raw.githubusercontent.com/CarlosLozano0257/Imagenes-para-flutter-6J-11-02-2026/refs/heads/main/overcooked.jpg', // [PEGAR URL DE GITHUB AQUÍ PARA JUEGO 14]
                  title: "Overcooked 2",
                  subtitle: 'Juegoo de cocina',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// -- PASO 4: EL WIDGET DE LA TARJETA (ESTRUCTURA IDÉNTICA) --
// Este widget acepta datos diferentes (imagen, titulo, subtitulo)
class CustomGameCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const CustomGameCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // -- BORDE NEGRO solicitado alrededor de todo el contenedor --
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // -- SECCIÓN 1: IMAGEN (Con bordes redondeados arriba) --
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(13)),
              child: Container(
                width: double.infinity,
                color: Colors.grey[200], // Fondo temporal gris
                
                // Muestra la imagen de GitHub si la URL no está vacía, sino muestra un texto temporal
                child: imageUrl.isNotEmpty
                  ? Image.network(
                      imageUrl, // La URL que pegarás arriba
                      fit: BoxFit.cover,
                      width: double.infinity,
                      // Muestra un icono de error si la imagen no carga
                      errorBuilder: (context, error, stack) => const Icon(Icons.broken_image, color: Colors.red),
                    )
                  : const Center(
                      child: Text(
                        "[GitHub Aquí]",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
              ),
            ),
          ),
          
          // -- SECCIÓN 2: TEXTOS Y ESTRELLAS --
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // -- FILA 1: TÍTULO DIFERENTE --
                Text(
                  title, // El título que pegarás arriba
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                
                // -- FILA 2: SUBTÍTULO DIFERENTE (Hello World por defecto o el que pongas) --
                Text(
                  subtitle, // El subtítulo que pegarás arriba
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                
                const SizedBox(height: 4), // Pequeño espacio
                
                // -- FILA 3: ESTRELLITAS (IDÉNTICAS Y NEGRAS) --
                Row(
                  children: List.generate(5, (index) => const Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.black, // Color negro como en la imagen
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}