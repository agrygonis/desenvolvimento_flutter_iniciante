// Adicionando um superpoder aos Doubles
extension PesoExtension on double {
  // 'this' representa o número em si (ex 72.5843)
  String get paraPeso => '${toStringAsFixed(1)} kg';
}

// Adicionamos um superpoder aos Inteiros
extension AlturaExtension on int {
  // 'this' representa o número em si (ex 172)
  String get paraAltura => '$this cm';
}
