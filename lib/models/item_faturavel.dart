enum ItemFaturavelStatus {
  ATIVO,
  INATIVO;
}

enum ItemFaturavelTipo {
  PRODUTO('Produto Final'),
  MATERIA_PRIMA('Matéria-prima'),
  EQUIPAMENTO_INTERNO("Equipamento interno");

  const ItemFaturavelTipo(this.descricao);
  final String descricao;

}

class ItemFaturavel {
  int id;
  String item_faturavel_nome;
  ItemFaturavelStatus item_faturavel_status;
  ItemFaturavelTipo item_faturavel_tipo;

  ItemFaturavel({
    this.id = -1,
    required this.item_faturavel_nome,
    this.item_faturavel_status = ItemFaturavelStatus.ATIVO,
    required this.item_faturavel_tipo,
  });
}
