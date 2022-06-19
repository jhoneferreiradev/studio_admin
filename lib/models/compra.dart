import 'package:studio_admin/models/estoque_movimento.dart';

class Compra extends EstoqueMovimento {
  final String fornecedor_nome;
  final String? fornecedor_telefone;
  final double valor_total;

  Compra(
      {super.id = -1,
      required super.data_movimento,
      this.fornecedor_nome = 'Não definido',
      this.fornecedor_telefone,
      super.estoque_movimento_status = EstoqueMovimentoStatus.ATIVO,
      this.valor_total = 0.0}) : super(estoque_movimento_tipo: EstoqueMovimentoTipo.VENDA);
}

class CompraItem {
  final int id, id_compra, id_item_faturavel;
  final double quantidade, valor_unitario;

  CompraItem({this.id = -1, required this.id_compra, required this.id_item_faturavel, this.quantidade = 1, this.valor_unitario = 0.0});

  double _valorTotal(){
    return quantidade * valor_unitario;
  }
}
