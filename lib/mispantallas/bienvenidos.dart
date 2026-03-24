import 'package:flutter/material.dart';

class Bienvenidos extends StatelessWidget {
  const Bienvenidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Fila 1
                const Text("Bienvenidos", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFF4A148C))),
                const SizedBox(height: 10),
                
                // Fila 2
                const Text("login desarrollado en flutter", style: TextStyle(fontSize: 16, color: Colors.black54)),
                const SizedBox(height: 40),
                
                // Fila 3
                Image.network(
                  "https://raw.githubusercontent.com/Ricardo-SM08/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/mustang.jpg",
                  height: 250,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 50),
                
                // Fila 4
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF4A148C),
                      side: const BorderSide(color: Color(0xFF4A148C), width: 2),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: const Text("Login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 15),
                
                // Fila 5
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9C27B0),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/signup'),
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