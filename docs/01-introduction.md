
# Introduction {#introduction}



## The Problem Domain and Approach

- Computational modelling


### Computational modelling

## Motivations

The main problems this thesis attempts to solve is:

i) *A Computational Model of Playing By Ear Abilities*: Given an aurally presented melody as input and a reproduction of that melody by a performer as output, what are the cognitive processes underlying performance? This problem is one of developing a *cognitive model* of *playing by ear* skills. I will specifically seek to develop a *computational* model of playing by ear skills.

ii) *A Computational Model of Playing By Ear Learning and Skill Acquisition*: Extending such a model, how do people learn to play by ear? How can people learn to play by ear *effectively*?

iii) *item generation curation*

iv) *item selection*: that of selecting new melodic material to learn to improve playing by ear skills.

### Generalising beyond jazz 

Whilst I motivate this problem historically and pedagogically in terms of those learning jazz materials, I note, that I expect many of the outcomes to be relevant to playing by ear to very similar - if not virtually identical - for other types of music too, and at least very similar for *singing by ear* too which is far more ubiqutuous. Since virtually everyone can sing (CITE) but far fewer people have access to an instrument beyond the voice (CITE), I will often discuss singing by ear too and borrow from this literature. In general, much of the cognitive processes behind singing and playing by ear should be very similar. I thus suggest that, the outcomes of this dissertation are not only relevant to jazz musicians, but have a much larger impact, for musicians and musics of all kinds - at least in principle. In practice, model specifics may need adapting for utmost relevance to other domains.


There are two (related) principal problems that this thesis aims to tackle. First, since, as of yet, there exists no comprehensive computational model of playing by ear skills (in terms of both acquisition and utilisation), I intend to first propose a theoretical model based on a synthesis of related literature. Once described, I seek to investigate and validate parts of this proposed model in light of empirical data. The second principal problem is to, given such a computational model, design a computer application which helps playing by ear learners more efficiently improve their skills. This part of the thesis has a practical deliverable component that is intended to be used in real-life learning situations, whilst being situated in a scientific framework - both theoretical and statistical. Such an application would be proposed in an open source framework that can be extended by future developers to add new features and improve existing components of the application. The main problem the application intends to solve is one of *item selection* i.e., finding "optimum" playing by ear items to learn for a given learner, at a given timepoint.




# What is playing by ear?

In this dissertation, I define playing by ear as the ability to reproduce an aurally presented melody on and instrument (including the voice). To play well by ear means to reproduce the musical properties of the heard melody accurately across relevant domains, such as pitch, interval and rhythmic structures. I note, that, precisely what these important musical structures to assess accuracy by are consist of is non-trivial, and something partly explored on this thesis. I thus leave the definition relatively general at this point. To play badly by ear means to struggle to reproduce the musical structures contained in the melody.

Note, that my definition separates playing by ear from "improvisation", which is about spontaneously generating (new) ideas, not a faithful replication of that heard before.

## Learning to play by ear

I separate the general process of "playing by ear" from "learning to play by ear", even though the two are intrinsically linked. "Playing by ear" presumes that the melody is sufficiently "prelearned" to be recalled almost perfectly. Conversely, learning to play by ear is a separate process, whereby the melody to be recalled is not yet stable enough in memory to be reproduced faithfully. It will take specifically at least more than one attempt to be recalled accurately - potentially "revised" - or may not be recallable in a given session. Thus, learning requires multiple attempts. Learning also requires that improvements are made over attempts, in the relative short term [@silasLearningRecallingMelodies2023], but also over longer time periods.




# Thesis Statement






## Research Objectives and Scope

PRQ1: How can one effectively learn to play by ear?

The thesis aims to answer this question in psychological, musicological, computational, and pedagogical terms.

SRQ1: What makes PBE difficult? (psychological, musicological)
SRQ2: Can a computer app (with computational item selection) help learn more quickly? (computational)
SRQ3: What does such a computational model need to take into account? (DASH?) (computational, psychological)
SRQ4: Does presentation mode (visual vs. auditory) make a difference to learning? (pedagogical)
SRQ5: Does singing a melody first help? (pedagogical)
SRQ6: to what degree is playing by ear based on absolute vs. relative pitch?
SRQ7: to what degree is playing by ear based on general working memory vs. acquired training?

What is the relationship between sight-reading and PBE skills (we have this data, right?)

PRQ2: Intervention: Does a program which implements these effectively work? (psychological, musicological, computational, pedagogical)

### The Coltrane-Slonimsky Problem

Solve the "Coltrane-Slonimsky Problem"

-	Given a wealth of melodic possibilities to learn from, to select something to learn which is sufficiently challenging and interesting to the ear.


Two key deliverables: front-facing apps:
Slonimsky.app
Songbird.training


