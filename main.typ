#set page(
  margin: (x: 1.5cm, y: 2cm),
  numbering: "1 / 1",
)
#set text(font: "Times New Roman", size: 12pt)
#set par(justify: true)

// Accent colour for headings and lines
#let accent-colour = rgb("2B4C7E")

#show heading: set text(fill: accent-colour)

#let cv_header(name, title, contact) = {
  align(center)[
    #text(size: 24pt, weight: "bold", fill: rgb("1A365D"))[#name] \
    #v(5pt)
    #text(size: 14pt, style: "italic")[#title] \
    #v(5pt)
    #text(size: 10pt)[#contact]
  ]
  line(length: 100%, stroke: 1pt + accent-colour)
  v(10pt)
}

#let cv_section(title) = {
  v(10pt)
  heading(level: 2)[#title]
  v(5pt)
}

#let cv_entry(title, organization, date, location, main_tasks) = {
  grid(
    columns: (1fr, auto),
    row-gutter: 3pt,
    text(weight: "bold")[#title], align(right)[#date],
    text(style: "italic")[#organization], align(right)[#location],
  )
  v(3pt)

  text()[#main_tasks]
}

#cv_header(
  "Daniel Sávio",
  "Engenharia de Controle e Automação, Desenvolvimento de Sistemas, Tradução e Escrita de artigos",
  "Bragança Paulista, SP, Brasil | www.linkedin.com/in/daniel-sávio-pereira-da-silva-201500199 | github.com/Daniel-Savio",
)

#heading(level: 1)[Informação Geral:]
Comecei como estagiário em 2021 com as tarefas de tradução de documentação técnica. Com o desenvolvimento de algumas ferramentas internas, passei a trabalhar junto da equipe de monitoramento de ativos. Assim, o trabalho consiste em estudar, analisar, operar e predizer o estado de transformadores, reatores e demais ativos elétricos. Hoje, foco na implementação de soluções de monitoramento e em toda a parte de telemetria dos dados sensoreados dos ativos, atenuando o trabalho para o uso da norma IEC 61850. A entrega final, consiste disponibilizar a solução desde a coleta até a apresentação final das informações em relatórios, _dashboards_, artigos e outros.

#cv_section("Experiência profissional")

#cv_entry(
  "Projetista Pleno II",
  "Treetech Tecnologia LTDA -  SAM: Smart Asset Management",
  "2021 - Atualmente",
  "Atibaia",
  [
    #heading(level: 3)[*Principais tarefas:*]
    - Criação de ferramentas internas para fluxo, comunicação, visualização e análise de dados;
    - Análise de redes de comunicação como Modbus, DNP3 e modelagem segundo a IEC 61850;
    - Análise de diagramas elétricos e arquiteturas de comunicação;
    - Modelagem e criação de arquivos SCL segundo a norma IEC61850;
    - Gerir minimamente os servidores de comunicação;
    - Suporte técnico em nível de engenharia para clientes e interno;
    - Escrita e apresentação de artigos técnicos para publicação em revistas e conferências;
    - Criar e ministrar treinamentos a respeito dos sensores e modelos de análise das informações;
    - Criar e ministrar treinamentos a respeito dos protocolos de comunicação e redes de comunicação serial e _Ethernet_;
    - Revisar documentação.
  ],
)

#cv_section("Habilidades Técnicas:")
- *Idiomas:*
  - Português - Nativo
  - Inglês -  C1
- *Linguagens de progrmação e tecnologias:*
  - Rust - Em aprendizado;
  - TypeScript e Node.Js - Avançado;
  - ReactJs - Mediano;
  - C/C++ - Mediano;
  - Python - Básico;
  - Typst - Ferramenta de escrita similar o LaTeX;
- *Protocolos de comunicação:* Modbus (TCP/RTU), IEC61850 (MMS e GOOSE), DNP3, AMQP e MQTT;
- *Softwares conhecidos e utilizados:* Figma, Zed e VScode, Pacote Office completo, LibreOffice, Wireshark, utilização de contato via SSH e afins.

#cv_section("Principais projetos:")

#cv_entry(
  "Desenvolvimento do Aplicativo de leitura e Parametrização",
  "Treetech Tecnologia LTDA",
  "2026 - Em diante",
  "Atibaia - Brasil",
  [Desenvolvimento completo de um aplicativo responsável por parametrizar os equipamentos da Treetech Tecnologia LTDA tanto via serial quanto TCP/IP. O aplicativo também permite salvar a parametrização do IED em questão: #text(fill: blue, style: "italic")[https://sac.treetech.com.br/pt-BR/support/solutions/articles/69000874048-software-de-leitura-e-parametrizac%C3%A3o]
  ],
)

#cv_entry(
  "Desenvolvimento do Centro de Monitoramento - CMA",
  "Treetech Tecnologia LTDA",
  "2025 - Atualmente",
  "Atibaia - Brasil",
  [Desing, estruturação e programação do centro de monitoramento da empresa. O projeto segue em constante desenvolvimento e melhoria. Para saber mais: #text(fill: blue, style: "italic")[https://www.linkedin.com/posts/treetech-tecnologia_engenhariaelaeztrica-energia-manutenaexaeto-activity-7480270750692732930-kQn-?utm_source=share&utm_medium=member_desktop&rcm=ACoAAC6GzSEB8i513kVqN2b7ARHsCb14_yDGERs]
  ],
)

#cv_entry(
  "Escrita e apresentação de artigo técnico",
  "XX-Eriac",
  "2025",
  "Ciudad del Este - Paraguai",
  [Escrita e apresentação de artigo técnico no evento Eriac feito pelo Cigré.
    - Sistemas embarcados no gerenciamento de arquiteturas de rede para monitoramento de ativos elétricos - Autor e Apresentador.
  ],
)

#cv_entry(
  "Escrita e apresentação de artigo acadêmico",
  "Consistec",
  "2024",
  "IFSP - Bragança Paulista - Brasil",
  [Escrita e apresentação de artigo acadêmico no evento feito pelo Instituto Federal de Ciência e Tecnologia de São Paulo.
    - Revisão Bibliográfica sobre métodos de análise de dados de cromatografia do óleo de transformadores de alta e média potência - Autor e Apresentador.
  ],
)

#cv_entry(
  "Desenvolvimento de sistema de monitoramento do óleo de um Reator",
  "E4A",
  "2023",
  "Texas - EUA",
  [Construção de um sistema capaz de coletar os dados de um sensor de umidade no óleo previamente instalado no reator e apresentar um gráfico desses dados e gerar um pequeno relatório.
  ],
)

#cv_entry(
  "Escrita e publicação de artigo acadêmico",
  "Consistec",
  "2022",
  "IFSP - Bragança Paulista - Brasil",
  [Escrita e publicação de artigo acadêmico no livro: Educação, Ciência, Tecnologia & Sociedade.
    - A Importância da Gestão Estratégica na Pandemia de Covid-19: Estudo de Caso no Magazine Luiza.
  ],
)

#cv_section("Ensino")
#cv_entry(
  "Curso: Norma IEC61850  - Teoria e Prática",
  "Universidade SEL",
  "2025",
  "Campinas - Brasil",
  [
    Curso de 40 horas de formação a respeito da norma IEC 61850
  ],
)
#cv_entry(
  "Graduação: Engenharia de controle e automação",
  "IFSP - Bragança Paulista - Brasil",
  "2020 - 2026",
  "Bragança Paulista - Brasil",
  [
  ],
)
#cv_entry(
  "Técnico: Mecânica Industrial",
  "IFSP - Bragança Paulista - Brasil",
  "2017 - 2019",
  "Bragança Paulista - Brasil",
  [
    Técnico integrado ao Ensino Médio
  ],
)

#cv_entry(
  "Ensino Médio",
  "IFSP - Bragança Paulista - Brasil",
  "2017 - 2019",
  "Bragança Paulista - Brasil",
  [
    Técnico integrado ao Ensino Médio
  ],
)
