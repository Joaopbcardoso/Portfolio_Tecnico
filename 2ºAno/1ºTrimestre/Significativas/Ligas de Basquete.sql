create table ligas(
  nome_liga_pk varchar(50) not NULL,
  paises_participantes VARCHAR(500),
  frequencia VARCHAR(35),
  fundação VARCHAR(30),
  PRIMARY key(nome_liga_pk)
)
create table times_basquete(
  nome_time_pk VARCHAR(50) not NULL,
  local_origem VARCHAR(30),
  titulos VARCHAR(1000),
  arena VARCHAR(100),
  rival VARCHAR(30),
  nome_liga_fk VARCHAR(50) not NULL,
  primary KEY(nome_time_pk),
  FOREIGN KEY(nome_liga_fk) REFERENCES ligas(nome_liga_pk)
  )
create table jogadores(
  nome_jogador VARCHAR(30) not NULL,
  numero VARCHAR(2),
  posicao VARCHAR(20),
  altura VARCHAR(4),
  nome_time_fk VARCHAR(50) not NULL,
  id_jogador_pk INT not NULL,
  primary key(id_jogador_pk),
  FOREIGN key(nome_time_fk) references times_basquete(nome_time_pk)
)
create table treinador(
  nome_treinador VARCHAR(30) not NULL,
  id_treinador_pk INT not NULL,
  nome_time_fk VARCHAR(50) not NULL,
  PRIMARY KEY(id_treinador_pk),
  foreign key(nome_time_fk) references times_basquete(nome_time_pk)
)
INSERT INTO ligas(nome_liga_pk, paises_participantes, frequencia, fundação)
VALUES('NBA', 'Estados unidos e Canadá', 'Anual','6 de junho de 1946'),
('NBB', 'Brasil', 'Anual', '1 de agosto de 2008')

INSERT into times_basquete(nome_time_pk, local_origem, titulos, arena, rival, nome_liga_fk)
values('Los Angeles Lakers', 'Los Angeles', '17 Títulos na NBA', 'Crypto.com Arena', 'Boston Celtics', 'NBA'),
('SESI Franca',	'Franca, SP, Brasil', '4 Campeonato Pan-Americano de Clubes, 1 Liga Sul-Americana, 6 Campeonato Sul-Americano de Clubes Campeões, 12 Campeonato Brasileiro, 2 Copa Super 8
15 Campeonato Paulista', 'Ginásio Poliesportivo Pedro Morilla Fuentes', 'Flamengo', 'NBB')

insert INTO jogadores(nome_jogador, numero, posicao, altura, nome_time_fk, id_jogador_pk)
values('LeBron James', '06', 'ala', '2,06', 'Los Angeles Lakers', '230645'),
('Santiago Scala', '06', 'Armador', '1,85', 'SESI Franca', '068907')

INSERT INTO treinador(nome_treinador, id_treinador_pk, nome_time_fk)
values('Darvin Ham', '465345', 'Los Angeles Lakers'),
('Helinho', '378640', 'SESI Franca')

SELECT * FROM ligas
SELECT * FROM times_basquete
SELECT * FROM jogadores
SELECT * FROM treinador