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
  job_title: "",
  contact: ((text: [], link: "")),
  summary: "",
  work_experience: (),
  education: (),
  skills: (),
  projects: (),
  body) = {

  let headerSection = header(first_name, last_name, job_title, theme, contact)
  
  set par(justify: true)

  [#stack(
      dir: ttb,
      spacing: 1.5em,
      headerSection,
      summary,
      
      // Work Experience
      parseSection((
        section(
          title: "Work Experience",
          content: work_experience,
        ),
      ), theme),

      // Education
      parseSection((
        section(
          title: "Education",
          content: education,
        ),
      ), theme),
      
      // Force page break before Skills section
      colbreak(),
      
      // Skills section with Programming and Technologies
      parseSection((
        section(
          title: "Skills",
          content: skills,
        ),
      ), theme),

      // Interests and Language as separate section
      parseSection((
        section(
          title: "Interests & Languages",
          content: skills,
        ),
      ), theme),

      // Projects Section (if provided)
      if projects != () {
        parseSection((
          section(
            title: "Personal Projects",
            content: projects,
          ),
        ), theme)
      }
    )]
}
