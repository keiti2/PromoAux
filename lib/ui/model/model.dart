class Promocao{
  final int id;
  final String nome;
  final String descricao;
  final double precoVenda;
  final double precoPromocao;
  final String image;
  final String imageBackground;
  final Estabelecimento estabelecimento;

  const Promocao({this.id,this.nome,this.descricao,this.precoVenda,this.precoPromocao,this.image,this.estabelecimento,this.imageBackground});
}

class Estabelecimento{
  final String nome;
  final String descricao;
  final String imagem;
  final String imageBackground;
  final String endereco;
  final String cidade;
  const Estabelecimento({
    this.nome,
    this.descricao,
    this.imagem,
    this.imageBackground,
    this.endereco,
    this.cidade
  });
}

List<Promocao> lstPromocoes=[
  const Promocao(
    id: 1,
    nome: 'Búfalo Burger',
    descricao: 'Pão artesanal (sem ovo e sem leite) mega burger de costela e molho barbecy',
    precoVenda: 25.00,
    precoPromocao: 13.00,
    image: 'assets/img/bufalo_large.jpg',
    imageBackground: '',
    estabelecimento: Estabelecimento(
      nome: 'Café do outro lado',
      descricao: 'Ponto convidativo de cafés especias e lanches de bufalo........'  ,
      imagem: 'assets/est/cafedolado.png',
      imageBackground: '',
      endereco: "Av. das Esmeraldas, 11 - Jardim Tangara",
      cidade: "Marília"
    )
  ),
  const Promocao(
    id: 2,
    nome: 'Marguerita',
    descricao: 'Mussarela de búfala, tomate, manjericão e azeitonas verdes.',
    precoVenda: 40.00,
    precoPromocao: 20.00,
    image: 'assets/img/pizza.jpg',
    imageBackground: '',
    estabelecimento: Estabelecimento(
      nome: 'Chapolin',
      descricao: 'Restaurante espaçoso e festivo serve grande opção de pratos em buffet ou...'  ,
      imagem: 'assets/est/chaplin.png',
      imageBackground: '',
      endereco: "Av. das Esmeraldas, 11 - Jardim Tangara",
      cidade: "Marília"
    )
  ),
  const Promocao(
    id: 3,
    nome: 'Hot Filadelfia',
    descricao: 'Salmão, cream cheese, cebilinha picada e molho.',
    precoVenda: 25.00,
    precoPromocao: 12.00,
    image: 'assets/img/hotfiladelfia.png',
    imageBackground: '',
    estabelecimento: Estabelecimento(
      nome: 'Kozan',
      descricao: 'Amplo menu japonês com destaque ao rodizio, opções a lá carte e ambiente bom...',
      imagem: 'assets/est/cafedolado.png',
      imageBackground: '',
      endereco: "Av. das Esmeraldas, 11 - Jardim Tangara",
      cidade: "Marília"
    )
  ),
  const Promocao(
    id: 4,
    nome: 'Tabule',
    descricao: 'Triguilho,tomate,cebola,salsa,hortelã e outras ervas, com....',
    precoVenda: 25.00,
    precoPromocao: 13.00,
    image: 'assets/img/tabule.png',
    imageBackground: '',
    estabelecimento: Estabelecimento(
      nome: 'Chapolin',
      descricao: 'Restaurante espaçoso e festivo serve grande opção de pratos em buffet ou...'  ,
      imagem: 'assets/est/chaplin.png',
      imageBackground: '',
      endereco: "Av. das Esmeraldas, 11 - Jardim Tangara",
      cidade: "Marília"
    )
  ),
  const Promocao(
    id: 5,
    nome: 'X-Gorduroso',
    descricao: 'Bancon,hamburger,costela,panceta,bacon...',
    precoVenda: 50.00,
    precoPromocao: 20.00,
    image: 'assets/img/xgorduroso.png',
    imageBackground: '',
    estabelecimento: Estabelecimento(
      nome: 'Chapolin',
      descricao: 'Restaurante espaçoso e festivo serve grande opção de pratos em buffet ou...'  ,
      imagem: 'assets/est/chaplin.png',
      imageBackground: '',
      endereco: "Av. das Esmeraldas, 11 - Jardim Tangara",
      cidade: "Marília"
    )
  ),

  const Promocao(
    id: 6,
    nome: 'X-Podrão',
    descricao: 'Pão artesanal (sem ovo e sem leite) mega burger de costela e molho barbecy',
    precoVenda: 25.00,
    precoPromocao: 13.00,
    image: 'assets/img/bufalo.png',
    imageBackground: '',
    estabelecimento: Estabelecimento(
      nome: 'Café do outro lado',
      descricao: 'Ponto convidativo de cafés especias e lanches de bufalo........'  ,
      imagem: 'assets/est/cafedolado.png',
      imageBackground: '',
      endereco: "Av. das Esmeraldas, 11 - Jardim Tangara",
      cidade: "Marília"
    )
  ),
  const Promocao(
    id: 7,
    nome: 'Salada',
    descricao: 'Pão artesanal (sem ovo e sem leite) mega burger de costela e molho barbecy',
    precoVenda: 25.00,
    precoPromocao: 13.00,
    image: 'assets/img/bufalo.png',
    imageBackground: '',
    estabelecimento: Estabelecimento(
      nome: 'Café do outro lado',
      descricao: 'Ponto convidativo de cafés especias e lanches de bufalo........'  ,
      imagem: 'assets/est/cafedolado.png',
      imageBackground: '',
      endereco: "Av. das Esmeraldas, 11 - Jardim Tangara",
      cidade: "Marília"
    )
  ),
  const Promocao(
    id: 8,
    nome: 'MP3',
    descricao: 'Áudio Portátil MP3....................................................',
    precoVenda: 25.00,
    precoPromocao: 13.00,
    image: 'assets/img/mp3.jpg',
    imageBackground: '',
    estabelecimento: Estabelecimento(
      nome: 'Café do outro lado',
      descricao: 'Ponto convidativo de cafés especias e lanches de bufalo........'  ,
      imagem: 'assets/est/freak.png',
      imageBackground: '',
      endereco: "Av. das Esmeraldas, 11 - Jardim Tangara",
      cidade: "Marília"
    )
  ),
];