#let backgroundTitle(theme, content) = heading(
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

#let secondaryTitle(content) = {
  text(weight: "bold", size: 1.125em, content)
}

#let italicColorTitle(theme, content) = {
  text(style: "italic", size: 1.125em, theme, content)
}
