#import "./text.typ": *
#import "./icon.typ": icon

#let parseSubSections(subSections, theme) = {
  stack(
    dir: ttb,
    spacing: 1em,
    ..subSections.map(s => {
      [
        #box([
          #secondaryTitle(s.title)#h(1fr)
          #if s.link == none [
            #italicColorTitle(theme, s.titleEnd)
          ] else [
            #italicColorTitle(theme, link(s.link, text(s.titleEnd)))
          ]
        ])
        #if (s.subTitle != "" and s.subTitle != none) or (s.subTitleEnd != "" and s.subTitleEnd != none) { 
          box[
            #text(9pt)[
              #if (s.subTitle != "" and s.subTitle != none) {
                [#icon("calendar") #s.subTitle]
              }
              #h(1fr)#icon("location") #s.subTitleEnd
            ]
          ]
        }
        #s.content
      ]
    })
  )
}

#let skillsLayout(items) = {
  grid(
    columns: (1fr, 1fr),
    gutter: 1.5em,
    [
      #strong[Programming]
      #v(3pt)
      #list(..items.at(0).content.split("•").map(item => [#item.trim()]))
    ],
    [
      #strong[Technologies]
      #v(3pt)
      #items.at(1).content
    ],
  )
}

#let interestsLanguagesLayout(items) = {
  grid(
    columns: (1fr, 1fr),
    gutter: 1.5em,
    [
      #strong[Interests]
      #v(3pt)
      #items.at(2).content
    ],
    [
      #strong[Language]
      #v(3pt)
      #items.at(3).content
    ],
  )
}

#let parseSection(sections, theme) = {
  stack(
    dir: ttb,
    spacing: 1em,
    ..sections.map(m => {
      if m.title == "Skills" {
        [
          #backgroundTitle(theme, m.title)
          #skillsLayout(m.content)
        ]
      } else if m.title == "Interests & Languages" {
        [
          #backgroundTitle(theme, m.title)
          #interestsLanguagesLayout(m.content)
        ]
      } else if m.title == "" {
        [#m.content]
      } else {
        [
          #backgroundTitle(theme, m.title)
          #parseSubSections(m.content, theme)
        ]
      }
    })
  )
}
