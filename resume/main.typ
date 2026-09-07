#import "@preview/fontawesome:0.5.0": *

// =============================================================================
// ICON MAPPING (Compatible with Typst 0.11 & 0.12, zero external files)
// =============================================================================

#let get-tech-icon(id) = {
  if id == "typescript"       { text(size: 0.82em, weight: "black")[TS] }
  else if id == "javascript"  { fa-js() }
  else if id == "react"       { fa-react() }
  else if id == "sql"         { fa-database() }
  else if id == "rust"        { fa-rust() }
  else if id == "rails"       { fa-gem() }
  else if id == "python"      { fa-python() }
  else if id == "android"     { fa-android() }
  else if id == "haskell"     { text(size: 1.05em, weight: "bold")[λ] }
  else if id == "lean4"       { text(size: 0.95em)[⚠️] }
  else if id == "postgraphile"{ fa-network-wired() }
  else if id == "hasura"      { fa-bolt() }
  else if id == "angular"     { fa-angular() }
  else if id == "purescript"  { text(size: 1.05em, weight: "bold")[λ] }
  else if id == "nix"         { text(size: 1.0em)[❄] }
  else if id == "blockchain"  { fa-ethereum() }
  else if id == "solidity"    { fa-cube() }
  else if id == "fp"          { fa-code-branch() }
  else if id == "bash"        { fa-terminal() }
  else if id == "git"         { fa-git-alt() }
  else if id == "docker"      { fa-docker() }
  else if id == "kubernetes"  { fa-dharmachakra() }
  else if id == "terraform"   { fa-layer-group() }
  else if id == "aws"         { fa-aws() }
  else if id == "gcp"         { fa-cloud() }
  else if id == "linux"       { fa-linux() }
  else if id == "nginx"       { fa-server() }
  else if id == "svelte"      { fa-fire() }
  else if id == "solidjs"     { fa-atom() }
  else if id == "vue"         { fa-vuejs() }
  else if id == "graphql"     { fa-diagram-project() }
  else                        { none }
}

// =============================================================================
// REUSABLE RESUME TEMPLATE FUNCTION
// =============================================================================

#let resume(data) = {
  // Tailwind Gray scale colors
  let c-heading  = rgb("#1f2937")  // gray-800
  let c-dark     = rgb("#374151")  // gray-700
  let c-muted    = rgb("#6b7280")  // gray-500
  let c-border   = rgb("#d1d5db")  // gray-300
  let c-badge-bg = rgb("#1f2937")  // gray-800

  set document(
    title: data.personal.name + " — Resume",
    author: data.personal.name,
  )

  set page(
    paper: "a4",
    margin: (x: 1.5cm, top: 1.3cm, bottom: 1.3cm),
  )

  // Standard cross-platform fonts (prevents "Unknown font family" warnings)
  set text(
    font: ("Liberation Sans", "DejaVu Sans"),
    size: 8.8pt,
    fill: c-dark,
    lang: "en",
  )
  set par(leading: 0.52em, justify: false)

  let section-divider() = {
    v(3pt)
    line(length: 100%, stroke: 2pt + c-border)
    v(5pt)
  }

  let item-divider() = {
    v(3pt)
    line(length: 100%, stroke: 0.8pt + c-border)
    v(3pt)
  }

  let section-title(title) = {
    text(
      fill: c-heading,
      weight: "bold",
      size: 10pt,
      tracking: 0.15em,
      upper(title)
    )
    v(2pt)
  }

  // Badge with Icon support
  let badge(item) = {
    let icon-elem = none
    let label = ""

    if type(item) == str {
      label = item
    } else if type(item) == dictionary {
      label = item.at("name", default: "")
      if "icon" in item and item.icon != none {
        if type(item.icon) == str {
          icon-elem = get-tech-icon(item.icon)
        } else {
          icon-elem = item.icon
        }
      }
    }

    box(
      fill: c-badge-bg,
      inset: (x: 5.5pt, y: 3.5pt),
      radius: 2pt,
      baseline: 0%,
      [
        #set text(fill: white, weight: "bold", size: 7.3pt)
        #if icon-elem != none [
          #box(baseline: 8%)[#icon-elem]
          #h(3.5pt)
        ]
        #label
      ]
    )
  }

  // ---------------------------------------------------------------------------
  // HEADER
  // ---------------------------------------------------------------------------
  grid(
    columns: (1fr, auto),
    gutter: 16pt,
    align: (left + top, right + top),
    [
      #text(size: 26pt, weight: "bold", fill: c-dark)[#data.personal.name] \
      #v(2pt)
      #text(size: 14pt, weight: "semibold", fill: c-dark)[#data.personal.title] \
      #v(2pt)
      #text(size: 11pt, weight: "semibold", fill: c-muted)[#data.personal.location]
    ],
    if data.personal.photo != none {
      block(
        width: 76pt,
        height: 76pt,
        radius: 100%,
        clip: true,
        stroke: 2pt + c-border,
        image(data.personal.photo, width: 100%, height: 100%, fit: "cover")
      )
    }
  )

  v(4pt)
  line(length: 100%, stroke: 2.5pt + c-border)
  v(6pt)

  // ---------------------------------------------------------------------------
  // TWO-COLUMN MAIN BODY
  // ---------------------------------------------------------------------------
  grid(
    columns: (1fr, 1.15fr),
    column-gutter: 20pt,

    // ================= LEFT COLUMN =================
    [
      // --- CONTACTS ---
      #if data.contacts != none and data.contacts.len() > 0 [
        #for item in data.contacts [
          #text(weight: "semibold", size: 9pt, fill: c-dark)[#item.label]
          #h(4pt)
          #item.content \
          #v(1.5pt)
        ]
        #section-divider()
      ]

      // --- SUMMARY ---
      #if data.summary != none [
        #section-title("Summary")
        #text(fill: c-dark, size: 8.8pt)[#data.summary]
        #section-divider()
      ]

      // --- EDUCATION ---
      #if data.education != none and data.education.len() > 0 [
        #section-title("Education")
        #for (i, edu) in data.education.enumerate() [
          #text(weight: "semibold", fill: c-dark, size: 9.2pt)[#edu.institution] \
          #text(fill: c-muted, size: 8.2pt)[#edu.period | #edu.degree]

          #if edu.details != none [
            #v(2pt)
            #list(
              marker: text(fill: c-dark, size: 7pt)[•],
              spacing: 3pt,
              ..edu.details
            )
          ]

          #if i < data.education.len() - 1 {
            item-divider()
          }
        ]
        #section-divider()
      ]

      // --- SKILLS (WITH ICONS) ---
      #if data.skills != none and data.skills.len() > 0 [
        #section-title("Skills")
        #block[
          #set par(leading: 5.5pt)
          #for skill in data.skills [
            #badge(skill)
            #h(1.5pt)
          ]
        ]
        #section-divider()
      ]

      // --- LANGUAGES ---
      #if data.languages != none and data.languages.len() > 0 [
        #section-title("Languages")
        #block[
          #set par(leading: 5.5pt)
          #for lang in data.languages [
            #badge(lang)
            #h(1.5pt)
          ]
        ]
        #section-divider()
      ]
    ],

    // ================= RIGHT COLUMN =================
    [
      // --- EXPERIENCE ---
      #if data.experience != none and data.experience.len() > 0 [
        #section-title("Experience")
        #for (i, job) in data.experience.enumerate() [
          #text(weight: "semibold", fill: c-heading, size: 9.3pt)[#job.role] \
          #text(fill: c-muted, size: 8.2pt)[#job.period | #job.company]

          #v(2pt)
          #list(
            marker: text(fill: c-muted, size: 9pt)[›],
            spacing: 3.5pt,
            body-indent: 4pt,
            ..job.highlights
          )

          #if i < data.experience.len() - 1 {
            item-divider()
          }
        ]
        #section-divider()
      ]

      // --- OUT OF WORK EXPERIENCE ---
      #if data.out_of_work != none and data.out_of_work.len() > 0 [
        #section-title("Out of Work Experience")
        #for item in data.out_of_work [
          #text(weight: "semibold", fill: c-heading, size: 9.2pt)[#item.title] \
          #v(2pt)
          #list(
            marker: text(fill: c-muted, size: 9pt)[›],
            spacing: 3.5pt,
            body-indent: 4pt,
            ..item.highlights
          )
        ]
        #section-divider()
      ]
    ]
  )
}

// =============================================================================
// RESUME DATA
// =============================================================================

#let arrow = text(fill: rgb("#6b7280"), size: 7.5pt)[ ↗]

#let resume-data = (
  personal: (
    name: "Serhii Khoma 🇺🇦",
    title: "Full Stack Developer",
    location: "Phnom Penh, Cambodia",
    photo: none, // Replace with "myface.jpg" if the image file is present
  ),

  contacts: (
    (
      label: "Portfolio:",
      content: link("https://srghma.github.io/")[srghma.github.io #arrow],
    ),
    (
      label: "Github:",
      content: link("https://github.com/srghma")[srghma #arrow],
    ),
    (
      label: "Email:",
      content: link("mailto:srghma@gmail.com")[srghma\@gmail.com #arrow],
    ),
    (
      label: "Phone:",
      content: [
        #link("tel:+380957367005")[+380957367005 #arrow] (#link("https://t.me/srghma")[tg #arrow]),
        #link("tel:+85586351227")[+85586351227 #arrow] (#link("https://wa.me/+85586351227")[wa #arrow], #link("https://t.me/srghma")[tg #arrow], #link("https://signal.me/#p/+85586351227")[signal #arrow])
      ],
    ),
    (
      label: "LinkedIn:",
      content: link("https://www.linkedin.com/in/srghma/")[linkedin.com/in/srghma #arrow],
    ),
    (
      label: "Stack Overflow:",
      content: link("https://stackoverflow.com/users/3574379/srghma")[srghma #arrow],
    ),
  ),

  summary: [
    Experienced full-stack developer with expertise in functional programming and blockchain development. Was a team lead in a small company (4 people). Proficient in multiple programming languages and frameworks including JavaScript, React, Purescript, and Ruby on Rails. Not open to relocation.
  ],

  education: (
    (
      institution: "Tallinn University of Technology",
      period: "2019 – 2020",
      degree: "PhD Student",
      details: (
        [#text(weight: "semibold")[Research:] Blockchain and Construction Engineering],
      ),
    ),
    (
      institution: "University of Customs and Finance",
      period: "2011 – 2017",
      degree: "Specialist Degree",
      details: (
        [#text(weight: "semibold")[Major:] Informatics],
      ),
    ),
  ),

  // All 31 technologies mapped with icons
  skills: (
    (name: "TypeScript",            icon: "typescript"),
    (name: "JavaScript",            icon: "javascript"),
    (name: "React",                 icon: "react"),
    (name: "SQL",                   icon: "sql"),
    (name: "Rust",                  icon: "rust"),
    (name: "Ruby on Rails",         icon: "rails"),
    (name: "Python",                icon: "python"),
    (name: "Android",               icon: "android"),
    (name: "Haskell",               icon: "haskell"),
    (name: "Lean4 ⚠️",               icon: "lean4"),
    (name: "Postgraphile",          icon: "postgraphile"),
    (name: "Hasura",                icon: "hasura"),
    (name: "Angular",               icon: "angular"),
    (name: "Purescript",            icon: "purescript"),
    (name: "Nix",                   icon: "nix"),
    (name: "Blockchain",            icon: "blockchain"),
    (name: "Solidity",              icon: "solidity"),
    (name: "Functional Programming", icon: "fp"),
    (name: "Bash",                  icon: "bash"),
    (name: "Git",                   icon: "git"),
    (name: "Docker",                icon: "docker"),
    (name: "Kubernetes",            icon: "kubernetes"),
    (name: "Terraform",             icon: "terraform"),
    (name: "AWS",                   icon: "aws"),
    (name: "GCP",                   icon: "gcp"),
    (name: "Linux",                 icon: "linux"),
    (name: "Nginx",                 icon: "nginx"),
    (name: "Svelte",                icon: "svelte"),
    (name: "SolidJS",               icon: "solidjs"),
    (name: "Vue",                   icon: "vue"),
    (name: "GraphQL",               icon: "graphql"),
  ),

  languages: (
    "Ukrainian (Native) 🇺🇦",
    "English (B2 in IELTS) 🇬🇧",
    "Spanish (B1) 🇪🇸",
    "Chinese (A1) 🇨🇳",
  ),

  experience: (
    (
      role: "RubyOnRails, Full-Stack developer, Team Lead",
      period: "Jan 2017 – Present",
      company: "\"Nortapartners\" and \"Nordicresults\", Tallinn, Estonia",
      highlights: (
        [Main developer, managed work of 3 different applications (Ruby on Rails, Nodejs, React, Angular)],
        [Research to improve company's tech stack.],
        [DeFi development (rust and solidity).],
        [Contact: Ben Schonle],
      ),
    ),
    (
      role: "Purescript Blockchain Developer",
      period: "May 2021 – Jul 2022",
      company: "FoamSpace, Boston (Remote)",
      highlights: (
        [Worked on blockchain Ethereum project.],
        [Used purescript-halogen framework (made hydration for halogen, gained deep knowledge of vdom frameworks' internals).],
        [Maintained large codebase using Solidity, Purescript, and JavaScript.],
      ),
    ),
    (
      role: "Full-Stack Developer",
      period: "Jan 2016 – Jan 2017",
      company: "DevelopsToday, Dnipro, Ukraine (on-site)",
      highlights: (
        [Developed with Angular, React, and Node.js for photogrammetry and drone mapping applications.],
        [Worked as Ruby on Rails developer and contributed to mobile development.],
        [Contact: Dmitriy Tkalich],
      ),
    ),
  ),

  out_of_work: (
    (
      title: "Computer Science Theory Research",
      highlights: (
        [Studied Category Theory],
        [Studied Homotopy Type Theory (HoTT)],
        [Studied Programming Language Foundations and Type Systems (how to create languages)],
      ),
    ),
  ),
)

// =============================================================================
// RENDER DOCUMENT
// =============================================================================
#resume(resume-data)
