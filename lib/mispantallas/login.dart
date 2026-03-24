import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Color(0xFF4A148C),
        ), // Flecha morada
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        // Columna principal con 7 filas exactas
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fila 1: Título
            const Center(
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A148C),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Fila 2: Subtítulo
            const Center(
              child: Text(
                "inicia sesión con tu cuenta",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 40),

            // Fila 3: Etiqueta y TextField Email
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Email",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9C27B0),
                  ),
                ),
                const SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF3E5F5), // Lila súper claro
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Fila 4: Etiqueta y TextField Contraseña
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "contraseña",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9C27B0),
                  ),
                ),
                const SizedBox(height: 5),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF3E5F5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Fila 5: Botón redondeado "iniciar sesión"
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9C27B0),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                  shadowColor: const Color(0xFFE040FB),
                ),
                onPressed: () {},
                child: const Text(
                  "iniciar sesión",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Fila 6: Texto y enlace Sign up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "no tienes cuenta? ",
                  style: TextStyle(color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/signup'),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4A148C),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Fila 7: Imagen fondo
            Center(
              child: Image.network(
                "https://raw.githubusercontent.com/Ricardo-SM08/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/empleado.png",
                height: 150,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const SizedBox(),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
