class Promocao{
  final int id;
  final String nome;
  final String descricao;
  final double precoVenda;
  final double precoPromocao;
  final String image;
  final Estabelecimento estabelecimento;

  const Promocao({this.id,this.nome,this.descricao,this.precoVenda,this.precoPromocao,this.image,this.estabelecimento});
}

class Estabelecimento{
  final String nome;
  final String descricao;
  final String imagem;
  const Estabelecimento({
    this.nome,
    this.descricao,
    this.imagem
  });
}

List<Promocao> lstPromocoes=[
  const Promocao(
    id: 1,
    nome: 'Búfalo Burger',
    descricao: 'Pão artesanal (sem ovo e sem leite) mega burger de costela e molho barbecy',
    precoVenda: 25.00,
    precoPromocao: 13.00,
    image: 'assets/img/bufalo.png',
    estabelecimento: Estabelecimento(
      nome: 'Café do outro lado',
      descricao: 'Ponto convidativo de cafés especias e lanches de bufalo........'  ,
      imagem: 'assets/est/cafedolado.png'
    )
  ),
  const Promocao(
    id: 2,
    nome: 'Marguerita',
    descricao: 'Mussarela de búfala, tomate, manjericão e azeitonas verdes.',
    precoVenda: 40.00,
    precoPromocao: 20.00,
    image: 'assets/img/marguerita.png',
    estabelecimento: Estabelecimento(
      nome: 'Chapolin',
      descricao: 'Restaurante espaçoso e festivo serve grande opção de pratos em buffet ou...'  ,
      imagem: 'assets/est/cafedolado.png'
    )
  ),
  const Promocao(
    id: 3,
    nome: 'Hot Filadelfia',
    descricao: 'Salmão, cream cheese, cebilinha picada e molho.',
    precoVenda: 25.00,
    precoPromocao: 12.00,
    image: 'assets/img/hotfiladelfia.png',
    estabelecimento: Estabelecimento(
      nome: 'Kozan',
      descricao: 'Amplo menu japonês com destaque ao rodizio, opções a lá carte e ambiente bom...',
      imagem: 'assets/est/cafedolado.png'
    )
  ),
  const Promocao(
    id: 4,
    nome: 'Tabule',
    descricao: 'Triguilho,tomate,cebola,salsa,hortelã e outras ervas, com....',
    precoVenda: 25.00,
    precoPromocao: 13.00,
    image: 'assets/img/tabule.png',
    estabelecimento: Estabelecimento(
      nome: 'Chapolin',
      descricao: 'Restaurante espaçoso e festivo serve grande opção de pratos em buffet ou...'  ,
      imagem: 'assets/est/cafedolado.png'
    )
  ),
  const Promocao(
    id: 5,
    nome: 'X-Gorduroso',
    descricao: 'Bancon,hamburger,costela,panceta,bacon...',
    precoVenda: 50.00,
    precoPromocao: 20.00,
    image: 'assets/img/xgorduroso.png',
    estabelecimento: Estabelecimento(
      nome: 'Chapolin',
      descricao: 'Restaurante espaçoso e festivo serve grande opção de pratos em buffet ou...'  ,
      imagem: 'assets/est/cafedolado.png'
    )
  ),
];