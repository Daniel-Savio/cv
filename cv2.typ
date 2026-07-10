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
  "Daniel Savio",
  "Atendimento ao Público, Recepcionista, Garçom, Suporte Operacional",
  figure(
    [Bragança Paulista, SP | (11) 94784-4341 | daniel.starzewski.137\@gmail.com | Nascido em 2002],
  ),
)

#heading(level: 1)[Resumo Profissional]
Profissional proativo e comunicativo, com excelente capacidade de relacionamento interpessoal e facilidade para o atendimento direto ao público. Aliando um perfil prático, organizado e pontual a uma forte fluência na língua inglesa, procuro contribuir com a excelência no atendimento em ambientes dinâmicos, garantindo uma recepção acolhedora e eficiente, inclusive para clientes estrangeiros.

#cv_section("Objetivo e Disponibilidade")
- *Objetivo:* Atuar no atendimento ao público em restaurantes, hotéis e estabelecimentos afins.
- *Disponibilidade:* Sábados, domingos e feriados.

#cv_section("Qualificações")
- Excelente comunicação e facilidade para lidar com o público em geral;
- *Idiomas:* Inglês fluente, com foco especial em conversação e atendimento a estrangeiros;
- *Informática:* Proficiência no Pacote Office e conhecimentos avançados em informática geral, como programação de aplicativos e desenvolvimento de software;
- Perfil altamente prático, organizado e rigoroso com a pontualidade.

#cv_section("Formação Acadêmica")

#cv_entry(
  "Graduação em Engenharia de Controle e Automação",
  "IFSP - Instituto Federal de São Paulo",
  "Conclusão prevista para 2026",
  "Bragança Paulista - SP",
  [],
)

#cv_entry(
  "Técnico: Mecânica Industrial",
  "IFSP - Instituto Federal de São Paulo",
  "2017 - 2019",
  "Bragança Paulista - Brasil",
  [
    Técnico integrado ao Ensino Médio
  ],
)

#cv_entry(
  "Ensino Médio",
  "IFSP - Instituto Federal de São Paulo",
  "2017 - 2019",
  "Bragança Paulista - Brasil",
  [
    Técnico integrado ao Ensino Médio
  ],
)
