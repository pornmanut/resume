#let contact(text: "", link: none, type: "") = {
  (text: text, link: link, type: type)
}

#let subSection(title: "", titleEnd: none, subTitle: none, subTitleEnd: none, content: []) = {
  (title: title, titleEnd: titleEnd, subTitle: subTitle, subTitleEnd: subTitleEnd, content: content)
}

#let section(title: "", content: subSection()) = {
  (title: title, content: content)
}

#let project(
  theme: rgb("#4273B0"),
  first_name: "",
  last_name: "",
  title: none,
  profile_img: "",
  contact: ((text: [], link: "")),
  skills: (
    languages: ()
  ),
  main: (
    (title: "", content: [])
  ),
  sidebar: (),
  body) = {

  let backgroundTitle(content) = heading(
    level: 1,
    numbering: none,
  text(
      fill: theme,
      size: 1.25em,
      weight: "bold",
    [
      #{content}
      #v(-0.75em)
      #line(length: 100%, stroke: 1pt + theme)
    ]
  )
  )

  let secondaryTitle(content) = {
    text(weight: "bold", size: 1.125em, content)
  }

  let italicColorTitle(content) = {
    text(style: "italic", size: 1.125em, theme, content)
  }


  let formattedName = stack(
        dir: ltr,
        spacing: 1em,
        text(strong[#first_name], weight: 100, 3.0em),
        text(strong[#last_name], weight: 100, 3.0em, fill: theme),
      )

  let formattedTitle = text(strong[#title], weight: 100, 1.5em)

  let titleColumn = align(center)[
    #stack(
        dir: ttb,
        spacing: 1.5em,
        formattedName,
        formattedTitle,
    )
  ]
  let icon(name, shift: 1.5pt) = {  box(
    baseline: shift,
    height: 10pt,
    image("assets/icons/" + name + ".svg")
  )
  }

  let contactColumn = align(left)[#stack(
        dir: ltr,
        spacing: 0.5em,
        ..contact.map(c => {
    if c.link == none [
      #icon(c.type)
      #c.text
    ] else [
      #icon(c.type)
      #underline(link(c.link, text(c.text)))
    ]
  })
      )]

  let titleAndContactColumn = align(center)[#stack(
    dir: ttb,
    spacing: 1.5em,
    titleColumn,
    contactColumn
)]

  let profileImageSection = align(center)[
    #box(
      image(profile_img, height: 135pt, alt: "Profile")
    , clip: true)
    
  ]

  let parseSubSections(subSections) = {
    stack(
        dir: ttb,
        spacing: 1em,
    ..subSections.map(s => {
      [
        #box([
          #secondaryTitle(s.title)#h(1fr)#italicColorTitle(s.titleEnd)
          ] )
        #if (s.subTitle != "" and s.subTitle != none) or (s.subTitleEnd != "" and s.subTitleEnd != none) { 
        box[
          #text(9pt)[
            #if (s.subTitle != "" and s.subTitle != none) {
            [#icon("calendar") #s.subTitle]
            }
            #h(1fr)#icon("location") #s.subTitleEnd]
        ]
        }
        #s.content
      ]
    })
    )
  }

  let parseSection(section) = {
    stack(
        dir: ttb,
        spacing: 1em,
    ..section.map(m => {
      if m.title == "" {
        [

          #m.content
        ]

      } else {

      [
        #backgroundTitle(m.title)
        #parseSubSections(m.content)
      ]
      }
    }))
  }


  let mainSection = [#stack(
      dir: ttb,
      spacing: 1.5em,
      titleAndContactColumn,
      parseSection(main)
  )]

  let sidebarSection = [#stack(
      dir: ttb,
      spacing: 1.5em,
      profileImageSection,
      parseSection(sidebar)
  )]
  
  // line(length: 100%, stroke: 1pt + theme)

  set par(justify: true)

  grid(
    columns: (2fr, 1fr),
    column-gutter: 1em,
    mainSection,
    sidebarSection,
  )

  // Main body.
  // set par(justify: true)
  // show: columns.with(3, gutter: 1.3em)

  // body
}
