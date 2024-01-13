#import "data.typ": *
#set page(margin: 2cm)
#set text(font: "New Computer Modern", size: 10pt)

= #name

Software engineer.
== Experience
#for job in experience [
  *#job.company* -- #job.role #h(1fr) #job.when
  #for b in job.bullets [
    - #b
  ]
]

== Education
#education.school -- #education.degree #h(1fr) #education.when

== Skills
#skills.join(", ")
