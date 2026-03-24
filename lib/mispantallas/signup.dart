import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  Widget _crearInput(String etiqueta, {bool esPassword = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(etiqueta, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
          const SizedBox(height: 8),
          TextField(
            obscureText: esPassword,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF9C27B0))),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0, iconTheme: const IconThemeData(color: Colors.black)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Sign up", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFF4A148C))),
            const SizedBox(height: 10),
            const Text("crear una cuenta, es gratis", style: TextStyle(fontSize: 16, color: Colors.black54)),
            const SizedBox(height: 40),
            
            _crearInput("Nombre de usuario"),
            _crearInput("Correo electrónico"),
            _crearInput("contraseña", esPassword: true),
            _crearInput("confirmar contraseña", esPassword: true),
            const SizedBox(height: 20),
            
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
                child: const Text("Registro", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 30),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("ya tienes una cuenta? "),
                GestureDetector(
                  onTap: () => Navigator.pop(context), // Regresa al login
                  child: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF4A148C))),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}