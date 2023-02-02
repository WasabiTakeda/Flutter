class InvalidFormatException implements Exception {
  String message = "";
  InvalidFormatException(this.message);
}

class SocketException implements Exception {
  String message = "";
  SocketException(this.message);
}
