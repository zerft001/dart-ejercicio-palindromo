library verificarPalindromo;
export './verificar_palindromo.dart';
import 'src/replace_map.dart';

bool verificarPalindromo(String text) {
  //quita todos los acentos
  String cleanText = String.fromCharCodes(replaceCodeUnits(text.codeUnits));
  // separa la cadena de texto y luego la invierte para unir nuevamente
  final invertedText = cleanText.split('')
                                .reversed
                                .join('')
                                .toLowerCase();                      
  //compara las cadenas de texto                                
  if (cleanText == invertedText) {
    return true;    
  }
  return false;
}