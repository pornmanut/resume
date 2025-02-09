#import "icon.typ": icon

#let formatName(first_name, last_name, theme) = {
  stack(
    dir: ltr,
    spacing: 1em,
    text(strong[#first_name], weight: 100, 3.0em),
    text(strong[#last_name], weight: 100, 3.0em, fill: theme),
  )
}

#let formatTitle(title) = {
  text(strong[#title], weight: 100, 1.5em)
}

#let contactInfo(contacts) = {
  let items = contacts.map(c => {
    if c.link == none [
      #icon(c.type)
      #h(3pt)
      #c.text
    ] else [
      #icon(c.type)
      #h(3pt)
      #underline(link(c.link, text(c.text)))
    ]
  })

  align(center)[
    #box(width: 100%)[
      #grid(
        columns: (1fr),
        rows: (auto),
        align(center)[
          #stack(
            dir: ltr,
            spacing: 2em,
            ..items
          )
        ]
      )
    ]
  ]
}

#let header(first_name, last_name, title, theme, contacts) = {
  align(center)[
    #stack(
      dir: ttb,
      spacing: 1.5em,
      stack(
        dir: ttb,
        spacing: 1.5em,
        formatName(first_name, last_name, theme),
        formatTitle(title)
      ),
      contactInfo(contacts)
    )
  ]
}
