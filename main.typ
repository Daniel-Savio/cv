#set page(
  margin: (x: 1.5cm, y: 2cm),
)
#set text(font: "Linux Libertine", size: 11pt)

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

#let cv_entry(title, organization, date, location, description) = {
  grid(
    columns: (1fr, auto),
    row-gutter: 3pt,
    text(weight: "bold")[#title],
    align(right)[#date],
    text(style: "italic")[#organization],
    align(right)[#location]
  )
  v(5pt)
  description
  v(10pt)
}

// --- CV CONTENT STARTS HERE ---

#cv_header(
  "Daniel Savio",
  "Electrical and Automation Engineer",
  "Bragança Paulista, SP, Brazil | linkedin.com/in/danielsavio | github.com/danielsavio"
)

#cv_section("Professional Experience")

#cv_entry(
  "Committee Member",
  "IEEE PES Transformers Committee",
  "April 2026",
  "Fort Worth, TX",
  [
    - Participated in strategic discussions regarding the US energy sector and transformer asset management.
    - Analysed methodologies for Dissolved Gas Analysis (DGA) and monitoring centres.
  ]
)

#cv_entry(
  "Systems Engineer",
  "CMA Project",
  "2025 – Present",
  "Bragança Paulista, Brazil",
  [
    - Developed the CMA API and web interface for advanced monitoring and analysis.
    - Configured Linux-based development environments and continuous integration pipelines.
  ]
)

#cv_section("Technical Skills")

- *Programming Languages:* Rust, TypeScript, Node.js, C/C++, MATLAB
- *Industrial Protocols:* Modbus (TCP/RTU), IEC61850
- *Systems & Tools:* FreeRTOS, Linux (Ubuntu/Zorin OS), Docker, Smart Device Gateways

#cv_section("Education")

#cv_entry(
  "BEng Electrical Engineering",
  "University Name",
  "Graduation Year",
  "Location",
  [
    - Focused on electrical networks, industrial communication protocols, and automation.
  ]
)