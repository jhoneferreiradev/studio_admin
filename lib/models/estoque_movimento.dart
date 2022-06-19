enum EstoqueMovimentoStatus {
  ATIVO,
  INATIVO;
}

enum EstoqueMovimentoTipo {
  VENDA(true),
  COMPRA(false);

  const EstoqueMovimentoTipo(this.is_saida);
  final bool is_saida;
}

class EstoqueMovimento {
  int id;
  DateTime data_movimento;
  EstoqueMovimentoStatus estoque_movimento_status;
  EstoqueMovimentoTipo estoque_movimento_tipo;

  EstoqueMovimento(
      {this.id = -1,
      required this.data_movimento,
      this.estoque_movimento_status = EstoqueMovimentoStatus.ATIVO,
      required this.estoque_movimento_tipo});
}
