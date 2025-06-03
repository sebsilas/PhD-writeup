
# Introduction {#introduction}


> "I don’t read music. I just need to hear it once and then I can play it."  
> — *Derek Paravicini* [@ockelford2007music]



> "You learned to speak before you could read. Why shouldn't music be the same?"  
> — *Victor Wooten* [@wooten2008music]


In 1920s Ohio, a partially blind boy named Art Tatum sat at a player piano and listened to a roll of stride piano music. Without reading a single note of sheet music, and with vision so limited that he could barely see the keys, he listened - just once or twice - then placed his fingers on the keyboard and reproduced the piece note for note. Then, with a mischievous glint, he added flourishes and harmonic substitutions that surpassed what the original composer had written. This self-taught musical prodigy would go on to become one of the most revered jazz pianists of the 20th century—universally recognised for his astonishing ear, rapid improvisation, and harmonic imagination [@lester1995tatum].

However, Tatum’s genius was not rooted in formal conservatoire training. Instead, he learned almost exclusively by ear: from radio broadcasts, piano rolls, records, and live performances. This mode of learning - aural, intuitive, improvisational - stands in stark contrast to the notation-based pedagogy that dominates Western classical music education today. Yet, it is not unique to Tatum. From 19th-century savants like Blind Tom Wiggins, who reportedly memorised and reproduced full-length concert works by ear at the age of five [@southall2009blindtom], to contemporary musicians such as Derek Paravicini and Leslie Lemke—who, despite profound disabilities, are able to play complex pieces after a single hearing — playing by ear continues to reveal deep, and often mysterious, dimensions of musical cognition [@ockelford2007music; @treffert2009islands].

What does it mean to play by ear? How do musicians mentally encode and reproduce sound without the aid of notation? How can this skill be enhanced effectively and efficiently? These questions bridge disciplines - encompassing general music education, jazz pedagogy, cognitive psychology, systematic musicology, and cultural history. While accounts of prodigies and savants capture the public imagination, they also illuminate fundamental cognitive skills: auditory memory, pattern recognition, improvisational logic, and emotional sensitivity. Moreover, many "ordinary" musicians - particularly in jazz and popular music - also learn and create by ear, suggesting that this way of engaging with music is not rare, but rather underappreciated within formal discourse, despite the fact that playing by ear skills also supports other musical skills, (e.g., sight-reading) because they help create useful representations which generalise to other musical skills [@mcphersonPathAnalysisTheoretical1997] and the suggestion in the pedagogical literature that the paradigm of teaching music notation first, should be reversed and instead music should be taught from *"sound to sign"* [@inbook].


## What Is Playing By Ear?

In this dissertation, I define playing by ear as the ability to reproduce an aurally presented melody on and instrument (including the voice). To play well by ear means to reproduce the musical properties of the heard melody accurately across relevant domains, such as pitch, interval and rhythmic structures. I note, that, precisely what these important musical structures to assess accuracy by are consist of is non-trivial, and something partly explored on this thesis in Chapter 7. I thus leave the definition relatively general at this point. To play badly by ear means to struggle to (accurately) reproduce the musical structures contained in the melody. Note that my definition separates playing by ear from "improvisation", which is about spontaneously *generating* (new) ideas; not a faithful replication of that heard before.

## Learning to Play By Ear

I separate the general process of "playing by ear" from "learning to play by ear", even though the two are intrinsically linked. "Playing by ear" presumes that the melody is sufficiently "pre-learned" to be recalled almost perfectly. Conversely, learning to play by ear is a separate process, whereby the melody to be recalled is not yet stable enough in memory to be reproduced faithfully. It will take specifically at least more than one attempt to be recalled accurately (i.e., potentially "revised" on each subsequent attempt) or may not be recallable in a given session. Thus, learning requires multiple attempts. Learning also requires that improvements are made over attempts, in the relative short term [@silasLearningRecallingMelodies2023], but also over longer time periods.


## The Problem Domain and Approach

> "Data are profoundly dumb." 
> — *Judea Pearl and Dana Mackenzie* [@pearlBookWhyNew2018]

This research focuses on how musicians - particularly those learning in traditions like jazz - acquire the ability to play melodies by ear. At the heart of this ability lies a complex set of cognitive, perceptual, and motor processes that transform a heard melody into a performed one, without reliance on written notation. While musicians have long developed this skill through immersion and repetition, this project asks: can we systematise and support this learning process through adaptive, computer-assisted methods?

The central problem addressed here is how to select and deliver the most useful melodic material for learners to practise at any given time. More concretely, how can we build a system that responds to individual learning needs—tracking what a musician finds easy or difficult, what they are likely to forget, and what would help them progress? Instead of relying on fixed curricula or static pattern books, this research explores the potential of computational models to make such decisions in a dynamic, data-driven way, whilst also shedding light on the cognitive processes underpinning playing by ear abilities.

The proposed solution adopts a practical approach: rather than solely relying on a fixed theory of musical difficulty or melodic structure, the system is designed to learn from new data—specifically, from how real learners interact with musical material. This reflects a broader empiricist tradition in music cognition and psychology, where the goal is to observe patterns and build models based on actual behaviour. Drawing from psychometric frameworks like item response theory to model what musical features make certain melodies easier or harder to play by ear and synthesising this with models of learning trajectories inspired by broader cognitive psychology, information is leveraged to tailor learning for each user.

In contrast to more abstract approaches, this project is grounded in musical practice. The models are trained not on idealised musical forms but on melodies more likely to be used by real learners—such as transcribed jazz solos or pedagogical patterns from exercise books. The system is built with a strong focus on usability and feedback, aiming to be both a research tool and a practical aid for musicians.

Lastly, as the title suggests, a "computational" approach is taken to tackle this question. In general, this refers to using computational methods to solve problem. But it also has the more specific meaning in cognitive science - to describe methods and models in a sufficiently precise way that someone else could reproduce it.

Ultimately, this research brings together insights from music education, music psychology, cognitive science, and computer-assisted learning. It uses these to ask both empirical and applied questions, such as: What makes a melody hard to reproduce by ear - or learn to reproduce by ear? How does the mode of learning (by sight or sound) affect retention and performance? And how can we use this knowledge to build better learning environments for contemporary musicians?


## Motivations

Learning to play melodies by ear is often described as an essential musicianship skill (CITE) because it touches almost every domain of music-making: improvisation, memory, listening, interpretation, and expression. Despite its importance, however, playing by ear remains poorly understood in terms of the specific processes involved, and it is still largely taught through informal or experience-based methods. This project is motivated by a desire to bring clarity, structure, and modern learning tools to a domain that has traditionally relied on tacit knowledge.

At the same time, we live in a moment where computational tools have become central to how we study music. Musicologists, psychologists, and educators alike are increasingly turning to data-driven approaches to understand how musical knowledge is formed, transmitted, and used. This project aligns with that shift. It explores how methods from psychometrics and computational learning can help unpack what’s happening when someone learns to play a melody by ear—and how we might support that learning more effectively.

From a cognitive science perspective, playing by ear is a fascinating - and sophisticated - domain to study. It requires the integration of auditory perception, short- and long-term memory, motor control, and pattern recognition, all operating in a feedback loop (CITE PFORDRESHER). The ability to take a heard melody, internalise its structure, and translate it into action on an instrument is not only musically rich—it’s cognitively complex. Understanding this process gives us insights into broader questions about how musicians represent, store, and retrieve musical information.

From a computational standpoint, the project draws inspiration from language learning technologies that personalise the delivery of vocabulary items to match the learner's memory and skill state. Melodies, like words, can be seen as structured sequences with varying complexity, familiarity, and usefulness. This opens the door to modelling musical learning in ways that are already well-established in educational psychology but have rarely been less often applied to music.

Finally, this work is motivated by a practical and pedagogical concern: many musicians—especially those in jazz and oral traditions—struggle to find tools that support their aural learning processes which are based on robust scientific principles. Existing "ear training" apps tend to focus on recognition rather than production, and they often lack adaptivity, theoretical grounding, or openness for academic use. This project aims to fill that gap by building an open-source system that is not only informed by theory but is also flexible, responsive, and grounded in real musical materials.

In short, the motivation for this research lies at the intersection of four fields: cognitive psychology, systematic musicology, computational modelling, and educational practice. It is driven by both theoretical questions about how we learn music and practical concerns about how we can learn it better.

The two main problems this thesis attempts to solve is:

I) **A Computational Model of Playing By Ear Abilities**: Given an aurally presented melody as input and a reproduction of that melody by a performer as output, what are the cognitive processes underlying performance? Can input characteristics about a given performer and the melody to be performed predict subsequent output accurately? This problem is one of developing a) a *cognitive, computational model* of *playing by ear* skills. Extending such a model, how do b) people *learn* to play by ear? Based on such knowledge, how can people learn to play by ear more *effectively*?

II) **Selecting melodic material for people to effectively enhance their playing by ear skills**: Based on the computational model devised above, the second problem is that of selecting new melodic material to learn to improve playing by ear skills. How can we *curate* melodic material, *select* from it, and potentially *generate* new optimum material for learners to enhance their playing by ear skills more effectively than the use of manual methods alone.

### Generalising Beyond Jazz and Playing By Ear

Whilst this thesis is initially motivated historically and pedagogically in terms of jazz education, it is assumed that many of the outcomes will be relevant to the playing by ear of melodies in general. In other words, it assumed that, whilst there will be domain-specific findings, much of the work should shed light on the cognitive processes underlying melodic memory and learning in general. In this way, much of the approach and findings should logically extend to the realm of *singing* (by ear) too, which is far more ubiquitous. Since virtually everyone can sing (CITE) but far fewer people have access to an instrument beyond the voice (CITE), I will often discuss singing by ear and borrow from this literature. In general, much of the cognitive processes behind singing and playing by ear should be very similar. 

I thus suggest that the outcomes of this dissertation are not only relevant to jazz musicians, but can have a much larger impact, for musicians and musics of all kinds - at least in principle. In practice, model specifics may need adapting for utmost relevance to other domains.


## Thesis Statement

The thesis proposed in this dissertation is that computer-assisted learning systems - designed in alignment with cognitive psychology, psychometric modelling, and computational music analysis - can substantially improve the acquisition of melodic playing by ear skills in music learners. This research is grounded in the belief that automated, adaptive systems informed by statistical and psychological principles can serve as effective tools for developing musicianship skills that traditionally rely on subjective teaching and rote learning.

Specifically, the present research investigates the following key questions:

- What psychometric and computational features of melodic stimuli best predict difficulty in playing by ear tasks?

- How can a computerised adaptive system deliver melodies in a way that maximally supports durable learning and personalised progression?

- What are the empirical effects of such a system compared to traditional, non-adaptive methods for learning melodies?

To answer these questions, the research adopts a multi-part approach involving the development of new psychometrically valid tests, statistical modelling of melodic corpora, and the design and evaluation of an adaptive training system. The methodologies draw on the fields of music psychology, psychometrics and statistical modelling/machine learning and the system is developed using open-source technologies to ensure accessibility and reproducibility. This research also leverages insights from language learning and item response theory to address the cognitive dimensions of musical learning and proposes novel mechanisms for real-time assessment and personalised item delivery.

## Original Contributions

This dissertation makes several original contributions across the domains of music psychology, psychometrics, computational music analysis, and music education technology.

1. **Development of an Automated Playing by Ear Test**
A key contribution is the creation of a fully automated, computer-scored playing by ear ability test. Unlike previous assessments, this test allows for real-time behavioural scoring, enabling scalable and objective evaluation of melodic ear-to-hand coordination. This test lays the empirical foundation for later adaptive training applications and contributes a novel psychometric tool for music research and education.

2. **Psychometric Modelling of Melodic Item Difficulty**
Through item response theory and explanatory modelling, this research identifies and quantifies the features (e.g., tonality, melodic contour, interval structure) that make melodic items more or less difficult for learners. These findings enhance theoretical understanding of melodic cognition and provide empirical guidelines for designing effective learning materials.

3. **Creation of an Adaptive Training System for Melodic Learning**
The dissertation proposes and implements an adaptive computer-assisted learning (CAL) system that dynamically selects and delivers melodic stimuli based on real-time learner performance. By incorporating spaced repetition and similarity-based item delivery algorithms, the system optimises both the efficiency and longevity of learning.

4. **Digitisation and Optimisation of Melodic Corpora**
This research includes the development of software tools (e.g., itembankr, musicassessr) that process and structure melodic corpora (e.g., jazz transcriptions, pedagogical pattern books) into statistically characterisable item banks. This facilitates both learning and research, enabling a data-driven approach to musical skill acquisition.

5. **Empirical Evaluation through Controlled Interventions**
The final component of the project involves a controlled intervention study that compares the adaptive CAL system against traditional learning methods. The study evaluates long-term retention, learning efficiency, and user satisfaction, offering concrete evidence for the effectiveness of the proposed system.

Together, these contributions represent a significant advancement in how musical skills—particularly those related to improvisation and aural learning—can be taught and understood through technology. The research also delivers openly available software and data, providing a platform for future studies and educational applications.


## Research Questions

At its core, this dissertation seeks to answer the primary question:

> **PRQ1: How can one effectively learn to play by ear (PBE)?**

This is explored through four intersecting lenses—**psychological**, **musicological**, **computational**, and **pedagogical**—each of which shapes how the skill of playing by ear can be understood, modelled, and improved.

To address this overarching problem, several more specific research questions are posed:

- **SRQ1: What makes playing by ear difficult?**  
  *(Exploring psychological and music-theoretical factors such as memory, melodic complexity, and contour.)*

- **SRQ2: Can a computer application that dynamically selects practice material help learners improve faster?**  
  *(Assessing the role of computational adaptivity in musical skill acquisition.)*

- **SRQ3: What needs to be taken into account by such a model of adaptive learning?**  
  *(Investigating features like difficulty, adaptivity, spacing, and history—the DASH model—as key inputs.)*

- **SRQ4: Does the mode of presentation (visual notation vs. auditory listening) influence how well a melody is learned?**  
  *(Examining modality effects on encoding, retention, and recall.)*

- **SRQ5: Does singing a melody before playing it aid the learning process?**  
  *(Exploring embodied cognition and internal audiation as pedagogical tools.)*

- **SRQ6: To what extent is PBE driven by absolute pitch abilities versus relative pitch strategies?**

- **SRQ7: What is the relationship between general cognitive capacities—like working memory—and PBE, and how do they interact with musical training?**

In addition, the project explores the connection between **sight-reading** and **PBE** skills, asking whether the two are complementary, independent, or perhaps grounded in shared underlying mechanisms.

A second overarching question guides the later stages of the project:

> **PRQ2: Can an intervention—specifically, an adaptive, computational learning system—lead to measurable improvements in PBE performance?**

This question shifts from theory to application, testing whether a system built on the insights above actually works in practice. The broader aim is not only to build such a system but also to evaluate its effectiveness in real learning contexts through controlled experimental studies.

Finally, the project engages with what might be called the **“Coltrane-Slonimsky Problem”**:

> *Given a vast landscape of melodic material, how can one select items that are both suitably challenging and musically engaging for the learner?*

Solving this requires balancing **psychological difficulty** with **artistic relevance**—a challenge that lies at the intersection of **computation** and **musicianship**.

## Objectives and Scope

In response to the research questions above, the dissertation pursues the following concrete objectives:

- To empirically examine what makes melodies difficult to learn by ear, using **item response theory** and performance data to model melodic difficulty based on psychological and structural features.

- To develop and validate a **computerised PBE ability test**, capable of recording, scoring, and tracking melodic performance in real time, forming the foundation for adaptive learning.

- To design and implement an **adaptive learning system**—the `Songbird` platform—that delivers personalised melodic training based on individual user profiles, learning history, and cognitive principles.

- To digitise, analyse, and optimise **melodic corpora** from both real jazz transcriptions and pedagogical pattern books—converting them into structured item banks for learning (`slonimsky.app`).

- To investigate **pedagogical strategies**, including the impact of presentation modality (visual vs. auditory) and the use of **singing** as a preparatory step in melodic reproduction.

- To run an **interventional study** evaluating the system’s effectiveness, measuring whether the adaptive system leads to improved learning outcomes compared to traditional or non-adaptive methods.

- To make all **tools and datasets** freely available as open-source software, supporting further research and application in music cognition, education, and human-computer interaction.

### Scope

The scope of this research is intentionally delimited in several ways:

- **Musical focus:** The primary context is jazz and related genres where playing by ear is central. However, the underlying cognitive and computational models may generalise to other traditions.

- **Task type:** The project focuses specifically on **melodic ear-to-hand coordination**—reproducing heard melodies on an instrument without notation—rather than broader definitions of improvisation or harmonic ear training.

- **User level:** While designed with **advanced students and self-directed learners** in mind, the systems developed may also support novices or be used in classroom settings as a pedagogical supplement.

- **Musical representation:** Melodies are treated **symbolically** as discrete event sequences (pitches, intervals), allowing for clean computational modelling. Audio processing is not the focus, though real-world audio is considered in some experiments.

- **Methodological scope:** The project blends **controlled experiments**, **computational modelling**, and **tool development**. It does not aim to exhaustively model all aspects of musical improvisation or ear training but rather to provide a focused and rigorous foundation for future research.


## Front-Facing Tools

### Slonimsky.app

**Slonimsky.app** is a digital interface and training tool aimed at advanced learners, particularly within jazz and improvisation-rich traditions. Named in homage to Nicolas Slonimsky's *Thesaurus of Scales and Melodic Patterns*, this application converts melodic content from jazz solos, pattern books, and pedagogical sources into a searchable, adaptive item bank. The goal is to solve the “Coltrane-Slonimsky Problem”: given a wide field of musical possibilities, how can we find the next melody that’s optimally challenging and musically rewarding?

Slonimsky.app incorporates models of difficulty and melodic similarity, allowing learners to explore and practice material personalised to their evolving skill level. It supports improvisers and ear-trained musicians in expanding their vocabulary in a structured yet musically sensitive way.

### Songbird

**Songbird** (*songbird.training*) is designed as a psychometrically informed tool to support the development of singing and melodic memory in younger learners and educational settings. It provides a streamlined, browser-based interface that presents melodic stimuli, records vocal reproductions, and assesses performance in real time.

Built to function both as a research platform and educational tool, *Songbird* tracks individual progress and adapts the difficulty of stimuli over time. It also includes pedagogical modules that integrate singing as a foundational step in melodic learning—supporting the hypothesis that vocal practice aids both memory and instrumental imitation. It is particularly well-suited for use in schools, choirs, and youth music programmes.


## Dissertation Outline


First, I will motivate my discussion of learning to play by ear with some historical context around the traditional methods that have been used, particularly with in the context of learning to play jazz music in the 20th and then 21st century. Then, I will largely leave this historical context behind and motivate the question from systematic musicological and cognitive psychological points of view, where the remainder of this manuscript will largely remain.

As discussed, there are two (related) principal problems that this thesis aims to tackle. First, since, as of yet, there exists no comprehensive computational model of playing by ear skills (in terms of both acquisition and utilisation), I intend to first propose a theoretical model based on a synthesis of related literature. Once described, I seek to investigate and validate parts of this proposed model in light of empirical data. The second principal problem is to, given such a computational model, design a computer application which helps playing by ear learners more efficiently improve their skills. This part of the thesis has a practical deliverable component that is intended to be used in real-life learning situations, whilst being situated in a scientific framework - both theoretical and statistical. Such an application would be proposed in an open source framework that can be extended by future developers to add new features and improve existing components of the application. The main problem the application intends to solve is one of *item selection* i.e., finding "optimum" playing by ear items to learn for a given learner, at a given timepoint.


