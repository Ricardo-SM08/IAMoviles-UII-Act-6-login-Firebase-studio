import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, iconTheme: const IconThemeData(color: Colors.black)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fila 1
            const Text("Login", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFF4A148C))),
            const SizedBox(height: 10),
            
            // Fila 2
            const Text("inicia sesión con tu cuenta", style: TextStyle(fontSize: 16, color: Colors.black54)),
            const SizedBox(height: 40),
            
            // Fila 3
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Email", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                const SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
                    focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF9C27B0))),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Fila 4
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("contraseña", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                const SizedBox(height: 8),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
                    focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF9C27B0))),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            
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
                onPressed: () {},
                child: const Text("iniciar sesión", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 20),
            
            // Fila 6
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("no tienes cuenta? "),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/signup'),
                  child: const Text("Sign up", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF4A148C))),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Fila 7
            Center(
              child: Image.network(
                "https://raw.githubusercontent.com/Ricardo-SM08/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/empleado.png",
                height: 120,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}