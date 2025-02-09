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

#let parseSection(sections, theme) = {
  stack(
    dir: ttb,
    spacing: 1em,
    ..sections.map(m => {
      if m.title == "" {
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
