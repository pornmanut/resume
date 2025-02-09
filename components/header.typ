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
  align(left)[
    #stack(
      dir: ltr,
      spacing: 0.5em,
      ..contacts.map(c => {
        if c.link == none [
          #icon(c.type)
          #c.text
        ] else [
          #icon(c.type)
          #underline(link(c.link, text(c.text)))
        ]
      })
    )
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
