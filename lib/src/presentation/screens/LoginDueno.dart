import 'package:flutter/material.dart';
import 'RegistroDueno.dart'; // Asegúrate de importar RegistroDueno
import 'VistaPrincipal.dart'; // Para redirigir a VistaPrincipal

class LoginDueno extends StatefulWidget {
  const LoginDueno({super.key});

  @override
  State<LoginDueno> createState() => _LoginDuenoState();
}

class _LoginDuenoState extends State<LoginDueno> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 130),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Correo electrónico",
                      labelStyle: TextStyle(color: Colors.yellow),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow),
                      ),
                      prefixIcon: Icon(Icons.email, color: Colors.yellow),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Contraseña",
                      labelStyle: TextStyle(color: Colors.yellow),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow),
                      ),
                      prefixIcon: Icon(Icons.lock, color: Colors.yellow),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTapDown: (_) {
                      setState(() {
                        isButtonPressed = true;
                      });
                    },
                    onTapUp: (_) {
                      setState(() {
                        isButtonPressed = false;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VistaPrincipal(),
                        ),
                      );
                    },
                    child: AnimatedScale(
                      scale: isButtonPressed ? 0.95 : 1.0,
                      duration: const Duration(milliseconds: 100),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.redAccent, Colors.yellow],
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        child: const Text(
                          "Iniciar sesión",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegistroDueno(),
                        ),
                      );
                    },
                    child: const Text(
                      "Crear cuenta",
                      style:
                          TextStyle(fontSize: 16, color: Colors.yellowAccent),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Aquí irá la lógica para recuperar la contraseña
                    },
                    child: const Text(
                      "Recuperar contraseña",
                      style:
                          TextStyle(fontSize: 16, color: Colors.yellowAccent),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
