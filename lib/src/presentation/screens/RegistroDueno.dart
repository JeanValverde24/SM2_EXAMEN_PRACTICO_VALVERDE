import 'package:flutter/material.dart';
import 'LoginTurista.dart'; // Asegúrate de tener importado el LoginTurista.dart

// ignore: camel_case_types
class RegistroDueno extends StatelessWidget {
  const RegistroDueno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo de pantalla
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'images/registro.png'), // Ruta de la imagen de fondo
                fit: BoxFit.cover, // Ajusta la imagen al tamaño de la pantalla
              ),
            ),
          ),
          // Ajustar el contenido cuando aparece el teclado y centrar en el área guinda
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 300,
                  left: 20,
                  right:
                      20), // Ajuste para posicionar el contenido debajo de "Tacna Heroica"
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Campo de RUC (11 dígitos) con caja amarilla y texto rojo
                  const TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 11,
                    decoration: InputDecoration(
                      labelText: "RUC",
                      filled: true,
                      fillColor: Color(0xFFFFC107), // Color amarillo
                      labelStyle: TextStyle(
                        color: Color(0xFF8B0000), // Color guinda
                        fontWeight: FontWeight.bold, // Texto en negrita
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.business,
                          color: Colors.blue), // Icono azul
                    ),
                    style: TextStyle(
                        color: Color(0xFFB22222)), // Color rojo para el texto
                  ),
                  const SizedBox(height: 20),

                  // Campo de Nombres con caja amarilla y texto rojo
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Nombres",
                      filled: true,
                      fillColor: Color(0xFFFFC107), // Color amarillo
                      labelStyle: TextStyle(
                        color: Color(0xFF8B0000), // Color guinda
                        fontWeight: FontWeight.bold, // Texto en negrita
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person,
                          color: Colors.green), // Icono verde
                    ),
                    style: TextStyle(
                        color: Color(0xFFB22222)), // Color rojo para el texto
                  ),
                  const SizedBox(height: 20),

                  // Campo de Apellidos (Paterno y Materno juntos) con caja amarilla y texto rojo
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Apellidos",
                      filled: true,
                      fillColor: Color(0xFFFFC107), // Color amarillo
                      labelStyle: TextStyle(
                        color: Color(0xFF8B0000), // Color guinda
                        fontWeight: FontWeight.bold, // Texto en negrita
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person_outline,
                          color: Colors.orange), // Icono naranja
                    ),
                    style: TextStyle(
                        color: Color(0xFFB22222)), // Color rojo para el texto
                  ),
                  const SizedBox(height: 20),

                  // Campo de Correo Electrónico con caja amarilla y texto rojo
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Correo",
                      filled: true,
                      fillColor: Color(0xFFFFC107), // Color amarillo
                      labelStyle: TextStyle(
                        color: Color(0xFF8B0000), // Color guinda
                        fontWeight: FontWeight.bold, // Texto en negrita
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email,
                          color: Colors.purple), // Icono morado
                    ),
                    style: TextStyle(
                        color: Color(0xFFB22222)), // Color rojo para el texto
                  ),
                  const SizedBox(height: 20),

                  // Campo de Número de Teléfono con caja amarilla y texto rojo
                  const TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Número",
                      filled: true,
                      fillColor: Color(0xFFFFC107), // Color amarillo
                      labelStyle: TextStyle(
                        color: Color(0xFF8B0000), // Color guinda
                        fontWeight: FontWeight.bold, // Texto en negrita
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon:
                          Icon(Icons.phone, color: Colors.red), // Icono rojo
                    ),
                    style: TextStyle(
                        color: Color(0xFFB22222)), // Color rojo para el texto
                  ),
                  const SizedBox(height: 20),

                  // Campo de País con caja amarilla y texto rojo
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "País",
                      filled: true,
                      fillColor: Color(0xFFFFC107), // Color amarillo
                      labelStyle: TextStyle(
                        color: Color(0xFF8B0000), // Color guinda
                        fontWeight: FontWeight.bold, // Texto en negrita
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon:
                          Icon(Icons.public, color: Colors.teal), // Icono teal
                    ),
                    style: TextStyle(
                        color: Color(0xFFB22222)), // Color rojo para el texto
                  ),
                  const SizedBox(height: 40),

                  // Botón de Crear Cuenta con degradado y redirección a LoginDueño
                  GestureDetector(
                    onTap: () {
                      // Redirigir a la pantalla de LoginDueño
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginTurista()),
                        (Route<dynamic> route) =>
                            false, // Esto previene volver a RegistroDueño
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Colors.redAccent,
                            Colors.yellow
                          ], // Degradado entre guinda y amarillo
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      child: const Text(
                        "Crear cuenta",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white, // Texto blanco
                        ),
                      ),
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
