void main() {
  Aluno aluno1 = Aluno('12345', 'João', 7.5, 8.0, 9.0);
  print('Média do aluno ${aluno1.nome}: ${aluno1.media()}');
  print('Nota necessária para aprovação na prova final: ${aluno1.notaFinal()}');
}

class Aluno {
  final String matricula;
  final String nome;
  final num notaProva1;
  final num notaProva2;
  final num notaTrabalho;

  Aluno(this.matricula, this.nome, this.notaProva1, this.notaProva2, this.notaTrabalho);

  double media() {
    return (notaProva1 * 2.5 + notaProva2 * 2.5 + notaTrabalho * 2) / 7;
  }

  double notaFinal() {
    double mediaFinal = media();
    if (mediaFinal < 5.0) {
      return 10.0 - mediaFinal;
    } else {
      return 0.0;
    }
  }
}
