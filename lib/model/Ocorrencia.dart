class Ocorrencia {
  String id = '';
  String descricao;
  String img;

  Ocorrencia(this.descricao, this.img);

  @override
  String toString() {
    return "$id | $descricao | $img";
  }

  String getId() {
    return id;
  }

  String getDescricao() {
    return descricao;
  }

  String getImg() {
    return img;
  }
}
