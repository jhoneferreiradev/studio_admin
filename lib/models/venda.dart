import 'package:studio_admin/models/estoque_movimento.dart';

class Venda extends EstoqueMovimento {
  final String cliente_nome;
  final String? cliente_celular;
  final double valor_total;

  Venda(
      {super.id = -1,
      required super.data_movimento,
      this.cliente_nome = 'Não definido',
      this.cliente_celular,
      super.estoque_movimento_status = EstoqueMovimentoStatus.ATIVO,
      this.valor_total = 0.0}) : super(estoque_movimento_tipo: EstoqueMovimentoTipo.VENDA);
}

class VendaItem {
  final int id, id_venda, id_item_faturavel;
  final double quantidade, valor_unitario;

  VendaItem({this.id = -1, required this.id_venda, required this.id_item_faturavel, this.quantidade = 1, this.valor_unitario = 0.0});

  double _valorTotal(){
    return quantidade * valor_unitario;
  }
}
