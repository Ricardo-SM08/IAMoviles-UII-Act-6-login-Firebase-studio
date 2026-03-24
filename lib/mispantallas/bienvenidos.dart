import 'package:flutter/material.dart';

class Bienvenidos extends StatelessWidget {
  const Bienvenidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            // Columna principal con 5 filas exactas
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Fila 1: Título
                const Text(
                  "Bienvenidos",
                  style: TextStyle(
                    fontSize: 36, 
                    fontWeight: FontWeight.bold, 
                    color: Color(0xFF4A148C) // Morado Oscuro
                  ),
                ),
                const SizedBox(height: 10),
                
                // Fila 2: Subtítulo
                const Text(
                  "login desarrollado en flutter",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 40),
                
                // Fila 3: Imagen desde la red
                Image.network(
                  "https://raw.githubusercontent.com/Ricardo-SM08/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/mustang.jpg",
                  height: 200,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.image, size: 100, color: Colors.purple),
                ),
                const SizedBox(height: 50),
                
                // Fila 4: Botón Login
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDCD0FF), // Lila
                      foregroundColor: const Color(0xFF4A148C),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text("Login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 15),
                
                // Fila 5: Botón redondeado Sign up
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9C27B0), // Morado Principal
                      foregroundColor: Colors.white,
                      elevation: 5,
                      shadowColor: const Color(0xFFE040FB), // Sombra Neón
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), // Muy redondeado
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text("Sign up", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}