#import "data.typ": *
#set page(margin: (x: 1.6cm, y: 1.4cm))
#set text(font: "New Computer Modern", size: 10pt)

#show heading: it => [
  #set text(size: 11pt)
  #upper(it.body)
  #line(length: 100%, stroke: 0.5pt)
]

= #name
#contact.email · #link("https://" + contact.github)[#contact.github] · #link("https://" + contact.site)[#contact.site]

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

== Projects
#for p in projects [
  - *#p.name* -- #p.text
]
