#Trabalho 10: MVC e Postos de Combustíveis

##Objetivo

Neste trabalho, você terá como objetivo desenvolver um aplicativo com interface gráfica para desktop em Java, organizando o código segundo o padrão MVC (Model-View-Controller). O aplicativo visa manipular um cadastro de postos de combustíveis de Santa Maria e seus respectivos históricos de preços. 

##Requisitos

  1. O aplicativo deve permitir o cadastro de postos de combustíveis de Santa Maria, contendo no mínimo os seguintes dados para cada posto: CNPJ, Razão Social, Nome Fantasia, Bandeira (marca da distribuidora), Endereço, Bairro, CEP e Imagem (nome de arquivo com uma foto do posto).

  2. Também para cada posto, o aplicativo deve permitir o cadastro de preços de combustíveis, contendo no mínimo: Tipo de Combustível (p.ex. Gasolina, Etanol, Diesel), Data de Coleta do Preço e Preço de Venda.

  3. Por "cadastro", entende-se as operações de inclusão, leitura, alteração e exclusão (também conhecidas como CRUD - Create/Read/Update/Delete). Essas operações devem ser feitas em memória usando Collections do Java (como no exercício sobre revenda de veículos em uma das aulas práticas). As operações também devem ser "persistidas" em arquivo, de preferência nos formatos CSV ou JSON, para que os dados permaneçam disponíveis quando o aplicativo for fechado e reaberto. Dados de postos e de preços podem ficar em arquivos separados, para facilitar.

  4. O aplicativo deve permitir a busca de postos por bairro, isto é: dado o nome completo de um bairro, localizar todos os postos naquele bairro.

  5. A interface gráfica deve utilizar componentes variados e de alto nível da API Java (Swing ou FX). Trabalhos que utilizarem Dialogs como componente principal terão nota zerada.

  6. A interface gráfica deve permitir:
    - Visualizar todos os dados de um posto em uma mesma tela, incluindo uma tabela com o histórico de preços do posto. A imagem do posto, proveniente de um arquivo, deve ser exibida nessa tela.
    - Carregar dados e gravar dados.
    - Realizar a busca de postos por bairro. 

##Opcionais

Para quem quiser aprender e praticar mais, e ainda conseguir algum bônus em nota no segundo bimestre (e quem sabe até no primeiro), recomenda-se implementar uma ou mais das seguintes opções:
  - Persistência em banco de dados: essa opção consiste em implementar as operações CRUD e de busca usando banco de dados (de preferência um banco em Java como JavaDB ou HSQLDB), usando orientações disponíveis no material de apoio sobre JDBC e DAO. Essa opção pode substituir a persistência em arquivo CSV/JSON. 

  - Geração de gráfico com histórico de preços: para cada posto, gerar um ou mais gráficos a partir dos dados do histórico de preços, mostrando a evolução do preço de um ou mais tipos de combustíveis ao longo do tempo. Para os gráficos, recomenda-se usar <a href="http://www.jfree.org/jfreechart/" target="_blank">JFreeChart</a>.

  - Visualização do posto em mapa: para cada posto, você pode mostrar sua localização num mapa, usando por exemplo essas dicas sobre <a href="https://dzone.com/articles/google-maps-java-swing" target="_blank">Google Maps in Java Swing Application</a>.

  - Usar sua criatividade para definir e implementar outras funcionalidades para o aplicativo.

  - Implementar um ou mais requisitos do trabalho usando outra linguagem orientada a objetos. 

##Desenvolvimento

  - Atenção: Este trabalho deve ser desenvolvido incrementalmente, com commits e pushes frequentes no repositório (não é um trabalho para se fazer na véspera, a não ser que você (a) seja alguém que acha que vai se dar bem copiando trabalhos ou (b) seja alguém muito experiente e produtivo em Java). Trabalhos com poucos commits e/ou só com commits próximos à data da entrega terão nota reduzida ou até zerada. Se você no desespero optar pelo caminho (a), saiba que isso é detectável e sua reputação e credibilidade têm muito a perder.

  - Recomenda-se começar definindo classes do modelo ("Model"), que independem da interface gráfica. Você pode fazer um programa auxiliar que teste essas classes, fazendo inclusões, leituras, alterações, exclusões e buscas, sem interação com o usuário. Faça commit/push dessa parte!

  - Depois que o modelo estiver OK, trabalhe na interface gráfica e na organização do resto do código. Você pode começar com uma interface mais simples, com menos componentes, ou com uma interface com componentes inativos / não-tratados. Faça commit/push das diferentes versões dessa parte.

  - Para manipulação de arquivos, recomenda-se fazer testes de leitura/escrita separadamente, antes de integrar essa parte ao restante do código. Faça commit/push dos testes também! 

