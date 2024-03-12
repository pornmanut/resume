
#import "template.typ": *

#set page(
  margin: (
    left: 10mm, 
    right: 10mm, 
    top: 15mm, 
    bottom: 15mm
  ),
)

#set text(font: "Mulish")

#show: project.with(
  theme: rgb("#4B2885"),
  first_name: "Pornmanut",
  last_name: "Hormsgasorn",
  title: "Software Engineer",
  profile_img: "assets/portrait/profile.png",
  contact: (
    contact(
      text: "(+66)897049622",
      type: "phone",
    ),
    contact(
      text: "Pornmanut", 
      link: "https://www.linkedin.com/in/pornmanut-hormgasorn-435b85192/",
      type: "linkedin",
    ),
    contact(
      text: "pornmanut", 
      link: "https://github.com/pornmanut",
      type: "github",
    ),
    contact(
      text: "pornmanuty@gmail.com", 
      link: "mailto:pornmanuty@gmail.com",
      type: "email",
    ),
  ),
  main: (
    section(
        content: (
          "As a Software Engineer with over two years of experience, I have been directly involved in developing internal software to enhance quality and streamline the development process for internal users. I have experience in agile process, leading planning ceremony, developing and designing microservices applications. I have interests in software architecture, ETL processes, and developing applications with LLM."
        )
    ),
    section(
      title: "Work Experience",
      content: (
        subSection(
          title: "Software Engineer",
          titleEnd: "Wisesight",
          subTitle: "May 2022 - Present",
          subTitleEnd: "Bangkok, Thailand",
          content: list(
            [Design and develop an application that aggregates data from various social media platforms, performs data processing and analysis, and integrates with Looker Studio for data visualization.],
            [Develop an contractor managment system platform, allowing the research team to assign contractor to each task, contractor will labeling messages with configurable labels.],
            [Develop an ETL application that routinely calculates well-known research metrics for the research team.],
            [Design and develop internal micoservice bot that conditionally synchronize data from data warehouse to application.],
            [Refactor and develop a new iteration of the web application that visualizes data from various social media platforms based on input keywords. Support both internal and external users, providing a visualization interface and an API.],
            [Design, develop and maintain internal tools to assist the research team.],
            [Collaborate with other teams to develop a boilerplate template in Golang.]
          ),
        ),
        subSection(
          title: "General Administration Officer",
          titleEnd: "Phetchbun Internal Audit",
          subTitle: "Sep 2021 - May 2022",
          subTitleEnd: "Phetchabun, Thailand",
          content: list(
            [Design and develop a order-book feature for the 'ELECTRONIC SARABUN' website. This feature enables users to distribute order-book shares among departments within the organization. The feature],
            [Design and develop a single page application for verifying the authenticity of lottery resellers using their personal identification.],
            [Design and develop a new Phetchabun goverment website.],
          ),
        ),
      ),
    ),
  ),
  bottom: (
    section(
      title: "Personal Project",
      content: (
        subSection(
          title: "Task Manager Spring",
          titleEnd: "github.com/pornmanut/task-manager-spring",
          link: "https://github.com//pornmanut/task-manager-spring",
          content: list(
            [Task management website for tracking to-do list tasks. The application was built using Java, Spring Boot, and React. It was deployed on AWS using AWS Serverless Application Model (SAM), with Java Spring Boot running on AWS Lambda and React hosted on S3 via CloudFront. DynamoDB as the database. CI/CD were implemented using GitHub Actions.],
          ),
        ),
        subSection(
          title: "Resume Generator",
          titleEnd: "github.com/pornmanut/resume",
          link: "https://github.com//pornmanut/resume",
          content: list(
            [Developed a resume generator using the Typst language, with automated build and release processes implemented through GitHub Actions..],
          ),
        ),
      ),
    ),
  ),
  sidebar: (
    section(
      title: "Skills",
      content: (
        subSection(
          title: "Programing",
          content: (
            "Python",
            "Golang",
            "Typescript",
            "Java"
          ).join(" • "),
        ),
          subSection(
          title: "Technologies",
          content: list(
            "AWS",
            "Docker",
            "SQL (PostgreSQL, MySQL)",
            "NoSQL (MongoDB)",
            "Git",
            "GitHub Actions",
            "AWS SAM",
            "HTML / CSS",
            "React",
            "Spring Boot",
          )
        ),
          subSection(
          title: "Interests",
          content: list(
            "Microservices",
            "Software Architecture",
            "Stable diffusion",
            "LLM",
          )
        ),
        subSection(
          title: "Language",
          content: list(
            "Thai (Native)",
            "English (Intermediate)",
          )
        ),
        
      ),

    ),
    section(
        title: "Education",
        content: (
          subSection(
            title: "B.Eng. Computer Engineering",
            titleEnd: "Kasetsart University",
            subTitle: "Jun 2016 - May 2020",
            subTitleEnd: "Bangkok, Thailand",
        ),
        ),
    ),
  ),
)
