///
/// Clase para consolidar funciones de validacion
///
class ValidationMixin {
  ///
  /// Método para validar email
  /// 
  String validateEmail(String value) {
    // return null if valid
    if (!value.contains('@')) {
      return 'Por favor captura un email valido.';
    }
    return null;
    // otherwise string with error mmessage if invalid
  }

  ///
  /// Método para validar que el password tenga al menos 4 caracteres 
  ///
  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password debe tener al menos 4 caracteres';
    }
    return null;
  }
}
