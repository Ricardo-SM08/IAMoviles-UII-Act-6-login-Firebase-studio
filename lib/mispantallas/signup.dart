import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  // Widget reutilizable para no repetir tanto código en las etiquetas y TextFields
  Widget _crearInput(String etiqueta, {bool esPassword = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(etiqueta, style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF9C27B0))),
          const SizedBox(height: 5),
          TextField(
            obscureText: esPassword,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFF3E5F5),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF4A148C)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título
            const Center(
              child: Text("Sign up", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF4A148C))),
            ),
            const SizedBox(height: 10),
            
            // Subtítulo
            const Center(
              child: Text("crear una cuenta, es gratis", style: TextStyle(fontSize: 16, color: Colors.grey)),
            ),
            const SizedBox(height: 30),
            
            // Etiquetas y TextFields
            _crearInput("Nombre de usuario"),
            _crearInput("Correo electrónico"),
            _crearInput("contraseña", esPassword: true),
            _crearInput("confirmar contraseña", esPassword: true),
            const SizedBox(height: 20),
            
            // Botón redondeado Registro
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9C27B0),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  elevation: 5,
                  shadowColor: const Color(0xFFE040FB),
                ),
                onPressed: () {},
                child: const Text("Registro", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 20),
            
            // Texto ya tienes cuenta? y Login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("ya tienes una cuenta? ", style: TextStyle(color: Colors.grey)),
                GestureDetector(
                  // Regresa a la pantalla de Login
                  onTap: () => Navigator.pop(context),
                  child: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF4A148C))),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}