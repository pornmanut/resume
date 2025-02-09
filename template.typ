#import "./components/header.typ": header
#import "./components/section.typ": parseSection

#let contact(text: "", link: none, type: "") = {
  (text: text, link: link, type: type)
}

#let subSection(title: "", titleEnd: none, subTitle: none, subTitleEnd: none, link: none, content: []) = {
  (
    title: title, 
    titleEnd: titleEnd, 
    subTitle: subTitle, 
    subTitleEnd: subTitleEnd, 
    link: link,
    content: content
  )
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
  main: (
    (title: "", content: [])
  ),
  sidebar: (),
  bottom: (),
  body) = {

  let headerSection = header(first_name, last_name, title, theme, contact)
  
  let profileImageSection = align(center)[
    #box(
      image(profile_img, height: 135pt, alt: "Profile")
    , clip: true)
  ]

  let mainSection = [
    #stack(
      dir: ttb,
      spacing: 1.5em,
      headerSection,
      parseSection(main, theme)
    )
  ]

  let sidebarSection = [
    #stack(
      dir: ttb,
      spacing: 1.5em,
      parseSection(sidebar, theme)
    )
  ]

  set par(justify: true)

  mainSection
  sidebarSection
  
  parseSection(bottom, theme)
}
