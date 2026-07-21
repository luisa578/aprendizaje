void main(){

}
class Persona {
    String? nombre;
    int? edad;
    int? documento;
     Persona(this.nombre, this.documento, this.edad);
}
class Estudiante extends Persona {
  String programa;
  double notaFinal;

  Estudiante(
    String nombre,
    String documento,
    int edad,
    this.programa,
    this.notaFinal,
  ) : super(nombre, documento, edad);

  // Metodo para mostrar la informacion
  void mostrarInformacion() {
    print("\n---------------------------");
    print("Nombre: $nombre");
    print("Documento: $documento");
    print("Edad: $edad");
    print("Programa: $programa");
    print("Nota final: $notaFinal");

    if (notaFinal >= 3.0) {
      print("Estado: Aprobo");
    } else {
      print("Estado: Reprobo");
    }
  }
}

void main() {
  List<Estudiante> estudiantes = [];

  // Registrar 5 estudiantes usando FOR
  for (int i = 1; i <= 5; i++) {
    print("\nRegistro del estudiante $i");

    stdout.write("Nombre: ");
    String nombre = stdin.readLineSync()!;

    stdout.write("Documento: ");
    String documento = stdin.readLineSync()!;

    stdout.write("Edad: ");
    int edad = int.parse(stdin.readLineSync()!);

    stdout.write("Programa de formacion: ");
    String programa = stdin.readLineSync()!;

    double nota;

    // Validación con WHILE (MQ)
    while (true) {
      stdout.write("Nota final (0.0 - 5.0): ");
      nota = double.parse(stdin.readLineSync()!);

      if (nota >= 0.0 && nota <= 5.0) {
        break;
      } else {
        print("Nota invalida Intente nuevamente");
      }
    }

    estudiantes.add(
      Estudiante(nombre, documento, edad, programa, nota),
    );
  }

  String respuesta = "si";

  // Ciclo para consultar la informacion
  while (respuesta.toLowerCase() == "si") {
    print("\n===== LISTA DE ESTUDIANTES =====");

    for (var estudiante in estudiantes) {
      estudiante.mostrarInformacion();
    }

    stdout.write("\n¿Desea volver a consultar la informacion? (Si/No): ");
    respuesta = stdin.readLineSync()!;
  }

  print("\nPrograma finalizado.");
}