#import "./template.typ": project, contact, subSection

#set page(
  margin: (
    left: 10mm, 
    right: 10mm, 
    top: 15mm, 
    bottom: 15mm
  ),
)

#set text(font: "mulish")

#show: project.with(
  theme: rgb("#4B2885"),
  first_name: "Pornmanut",
  last_name: "Hormsgasorn",
  job_title: "Software Engineer",
  contact: (
    contact(
      text: "manut.dev",
      link: "https://manut.dev/",
      type: "website",
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
    contact(
      text: "(+66)897049622",
      type: "phone",
    ),
  ),
  summary: [
    With over three years of experience in software development, I have collaborated closely with cross-functional teams and data research teams to streamline their processes. My expertise includes gathering requirements, designing and developing scalable software solutions within an agile framework, as well as architecting robust ETL pipelines, microservices, and clean architecture patterns. Additionally, I have built high-throughput APIs leveraging AWS technologies. I am a passionate team player who loves learning new technologies
  ],
  work_experience: (
    subSection(
      title: "Software Engineer",
      titleEnd: "Wisesight",
      subTitle: "May 2022 - Present",
      subTitleEnd: "Bangkok, Thailand",
      content: list(
        [Designed and developed an application to aggregate data from multiple social media platforms. The application performs data processing, analysis, and integrates with Looker Studio for visualization. Built using Python on AWS Lambda, and Event Bridge.],
        [Developed a labeling system platform that enables the research team to assign contractors to tasks. Contractors can label messages with complex, configurable labels. Built using Fastify, TypeScript, React, AWS EC2 Container Registry (ECR), AWS Lambda, Amazon SQS, AWS Amplify, and MongoDB.],
        [Created an ETL application to calculate metrics for the research team. Utilized Python on AWS Lambda, AWS Step Functions, and SQS queues to handle large datasets and store metrics in PostgreSQL.],
        [Designed and developed an internal tool to optimize processes for the research team. Ensured efficient handling of large data and fast export into Excel files. Built using Python with a microservices architecture and integrated with a frontend interface.],
        [Developed a web application that visualizes social media data based on input keywords. Built using TypeScript, AWS Amplify, AWS Lambda, Elasticsearch, and PostgreSQL.],
        [Developed and support internal tools to assist the research team. Primarily built using Python and Amazon SNS for event-driven communication with other internal tools.],
        [Collaborated with teams as part of a guild to create guidelines and boilerplates for Golang and centralized logging in Python.],
        [Designed and developed a high-throughput API that receives jobs, filters messages from other products, and sends notifications. Built using Python, DynamoDB, AWS API Gateway, Lambda, and queues to ensure availability with forward and backward pipelines.],
      ),
    ),
    subSection(
      title: "General Administration Officer",
      titleEnd: "Phetchbun Internal Audit",
      subTitle: "Sep 2021 - May 2022",
      subTitleEnd: "Phetchabun, Thailand",
      content: list(
        [Designed and developed an order management feature for the 'ELECTRONIC SARABUN' website. This feature allows users to distribute order shares among departments within the organization.],
        [Designed and developed a single-page application to verify the authenticity of lottery resellers by validating their national identification numbers.],
        [Designed and developed a new official government website for Phetchabun province, enhancing online services for residents and improving public access to government information.],
      ),
    ),
  ),
  skills: (
    subSection(
      title: "Programming",
      content: (
        "Python",
        "TypeScript",
        "Golang",
        "JavaScript",
      ).join(" • "),
    ),
    subSection(
      title: "Technologies",
      content: list(
        "AWS (Lambda, API Gateway, DynamoDB, ECR, Amplify)",
        "Message Queues (Amazon SQS, SNS)",
        "Databases (PostgreSQL, MongoDB, Elasticsearch)",
        "Backend (Fastify)",
        "Frontend (React, HTML/CSS)",
        "CI/CD (GitHub Actions, Docker, AWS SAM)",
        "Version Control (Git, GitHub)",
        "RESTful APIs & Microservices",
        "ETL & Data Processing",
      )
    ),
    subSection(
      title: "Interests",
      content: list(
        "Distributed Systems",
        "Cloud Architecture",
        "Data Engineering",
        "Design Patterns",
        "High Performance Computing",
        "3D Printing",
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
  education: (
    subSection(
      title: "B.Eng. Computer Engineering",
      titleEnd: "Kasetsart University",
      subTitle: "Jun 2016 - May 2020",
      subTitleEnd: "Bangkok, Thailand",
    ),
  ),
  projects: (
    subSection(
      title: "Typst Resume",
      titleEnd: "github.com/pornmanut/resume",
      link: "https://github.com//pornmanut/resume",
      content: list(
        [Developed a resume generator using the Typst language, with automated build and release processes implemented through GitHub Actions, enhancing efficiency and streamlining the development workflow.],
      ),
    ),
  ),
)
