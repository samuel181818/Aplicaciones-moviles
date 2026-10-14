void main() async {
  // Async
  // Await (eperar a que se resuelva la tarea asincrona)

  print("Antes de la peticion");

  String data = await httpGet("http://home.cern/");

  print(data);

  print("Fin del programa");
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 5), () {
    return "Experimento - 5 segundos";
  });
}
