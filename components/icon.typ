#let icon(name, shift: 1.5pt) = {
  box(
    baseline: shift,
    height: 10pt,
    image("../assets/icons/" + name + ".svg")
  )
}
