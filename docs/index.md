
---
title: "Playing By Ear: A Computational Approach"
author: "Seb Silas"
date: "2025-06-06"
site: bookdown::bookdown_site
output:
  bookdown::gitbook: default
bibliography: references.bib
documentclass: book
---


# Front Matter

> "I love science, and it pains me to think that so many are terrified of the subject or feel that choosing science means you cannot also choose compassion, or the arts, or be awed by nature. Science is not meant to cure us of mystery, but to reinvent and reinvigorate it."  
> — *Robert Sapolsky* [@sapolskyWhyZebrasDont2004]


## Foreword


The topic of this dissertation is "playing by ear" and whilst I generalise the results, I motivate this mainly in terms of jazz education.


Jazz is an oral tradition.


Cognitive psychological tool

If you want to learn the tradition, transcribe the solos, go and play with new solos.

Less a means of learning the tradition orally (best go straight to the source, transcribe real solos) - more about developing personal vocabulary based on your current knowledge. Exploring new spaces


The computer as the "heavy-lifter" so the musician can focus more on the sounds themselves; unburdening the musician



## Acknowledgements


For Soraya.


Sylvia,


Daniel Müllensiefen, Reinhard Kopiez.

Klaus Frieler, 

Mohamed Etteyeb

Peter Harrison, Kilian Sander, 

Antoine Sachet, James Petticrew, 

Annabel Cohen


<!-- for graphics -->

<!--

<a href="https://www.flaticon.com/free-icons/saxophone" title="saxophone icons">Saxophone icons created by Nsit - Flaticon</a>

-->

## Table of Contents {#toc}


- [1. Front Matter](index.html#front-matter)
  - [Foreword](index.html#foreword)
  - [Acknowledgements](index.html#acknowledgements)
  - [Table of Contents](index.html#toc)
- [2. Introduction](01-introduction.html#introduction)
  - [The Problem Domain and Approach: A Computational Approach](01-introduction.html#the-problem-domain-and-approach-a-computational-approach)
  - [Motivations](01-introduction.html#motivations)
    - [Generalising beyond jazz and playing by ear](01-introduction.html#generalising-beyond-jazz-and-playing-by-ear)
  - [Thesis Statement](01-introduction.html#thesis-statement)
  - [Original Contributions](01-introduction.html#original-contributions)
  - [Research Questions](01-introduction.html#research-questions)
  - [Objectives and Scope](01-introduction.html#objectives-and-scope)
    - [Scope](01-introduction.html#scope)
  - [Front-Facing Tools](01-introduction.html#front-facing-tools)
    - [Slonimsky.app](01-introduction.html#slonimskyapp)
    - [Songbird](01-introduction.html#songbird)
  - [Dissertation Outline](01-introduction.html#dissertation-outline)
- [3. Foundations](02-foundations.html#foundations)
  - [What is playing by ear?](02-foundations.html#what-is-playing-by-ear)
  - [Learning to play by ear](02-foundations.html#learning-to-play-by-ear)
- [4. Historical Background: Approaches to Improving Playing by Ear in Jazz Pedagogy](03-historical_background.html#historical_background)
  - [The Aural Origins of Jazz Education](03-historical_background.html#the-aural-origins-of-jazz-education)
  - [Record Players as Pedagogical Tools](03-historical_background.html#record-players-as-pedagogical-tools)
  - [Codification of Jazz Education](03-historical_background.html#codification-of-jazz-education)
  - [The Chord-Scale Approach, Pattern Books, and Melodic Vocabulary Acquisition](03-historical_background.html#the-chord-scale-approach-pattern-books-and-melodic-vocabulary-acquisition)
  - [John Coltrane and Slonimsky's Thesaurus: Aspirational Melodic Vocabulary Acquisition](03-historical_background.html#john-coltrane-and-slonimskys-thesaurus-aspirational-melodic-vocabulary-acquisition)
  - [Summary](03-historical_background.html#summary)
  - [Modern Technological Approaches to Ear Training](03-historical_background.html#modern-technological-approaches-to-ear-training)
    - [Historical Development of Ear-Training Technology](03-historical_background.html#historical-development-of-ear-training-technology)
    - [Commercial Ear-Training and Transcription Tools](03-historical_background.html#commercial-ear-training-and-transcription-tools)
    - [Chord/Harmonic Recognition Tools.](03-historical_background.html#chordharmonic-recognition-tools)
    - [Rhythm Training Tools.](03-historical_background.html#rhythm-training-tools)
    - [Non-Commercial and Research Initiatives](03-historical_background.html#non-commercial-and-research-initiatives)
    - [Pedagogical Strategies and Practical Use](03-historical_background.html#pedagogical-strategies-and-practical-use)
    - [Benefits and Limitations](03-historical_background.html#benefits-and-limitations)
    - [Conclusion](03-historical_background.html#conclusion)
- [5. Empirical Backgrounds: Systematic Musicological and Cognitive Psychological](04-empirical_backgrounds.html#empirical_backgrounds)
  - [Playing by Ear: Cognitive Foundations, Developmental Trajectories, and Practical Strategies in Musical Ear-Playing](04-empirical_backgrounds.html#playing-by-ear-cognitive-foundations-developmental-trajectories-and-practical-strategies-in-musical-ear-playing)
    - [Introduction](04-empirical_backgrounds.html#introduction)
  - [Cognitive and Neural Mechanisms Underlying Playing by Ear](04-empirical_backgrounds.html#cognitive-and-neural-mechanisms-underlying-playing-by-ear)
  - [Developmental and Pedagogical Aspects of Playing By Ear Skill Acquisition](04-empirical_backgrounds.html#developmental-and-pedagogical-aspects-of-playing-by-ear-skill-acquisition)
  - [Practical Strategies and Individual Differences in Playing By Ear](04-empirical_backgrounds.html#practical-strategies-and-individual-differences-in-playing-by-ear)
  - [Conclusion](04-empirical_backgrounds.html#conclusion)
  - [Musicological Perspectives](04-empirical_backgrounds.html#musicological-perspectives)
    - [Music and combinatorics](04-empirical_backgrounds.html#music-and-combinatorics)
    - [Melody as Cognitive Psychology / Melodic represention](04-empirical_backgrounds.html#melody-as-cognitive-psychology-melodic-represention)
    - [Computed melodic features as a solution to selecting items](04-empirical_backgrounds.html#computed-melodic-features-as-a-solution-to-selecting-items)
    - [Pattern books as item banks](04-empirical_backgrounds.html#pattern-books-as-item-banks)
  - [Music Psychology/Music Education](04-empirical_backgrounds.html#music-psychologymusic-education)
  - [Cognitive Psychology](04-empirical_backgrounds.html#cognitive-psychology)
  - [General Principles of Learning and Memory: A Cognitive Psychology Perspective](04-empirical_backgrounds.html#general-principles-of-learning-and-memory-a-cognitive-psychology-perspective)
    - [Introduction](04-empirical_backgrounds.html#introduction)
  - [Theoretical Background](04-empirical_backgrounds.html#theoretical-background)
  - [Key Findings from Cognitive Psychology](04-empirical_backgrounds.html#key-findings-from-cognitive-psychology)
    - [Applications in Language Learning](04-empirical_backgrounds.html#applications-in-language-learning)
  - [Conclusion](04-empirical_backgrounds.html#conclusion)
  - [Statistical Modelling Frameworks](04-empirical_backgrounds.html#statistical-modelling-frameworks)
    - [Item Response Theory](04-empirical_backgrounds.html#item-response-theory)
- [6. Playing By Ear: A Theoretical Model](05-playing-by-ear-a-theoretical-model.html#theoretical-model)
  - [Pfordresher's H-PAC model](05-playing-by-ear-a-theoretical-model.html#pfordreshers-h-pac-model)
  - [Pfordresher's cognitive model of singing accuracy](05-playing-by-ear-a-theoretical-model.html#pfordreshers-cognitive-model-of-singing-accuracy)
  - [Baker's computational model of melodic dictation](05-playing-by-ear-a-theoretical-model.html#bakers-computational-model-of-melodic-dictation)
  - [Models of sung recall](05-playing-by-ear-a-theoretical-model.html#models-of-sung-recall)
  - [Non-musical models of serial recall](05-playing-by-ear-a-theoretical-model.html#non-musical-models-of-serial-recall)
  - [WM bits](05-playing-by-ear-a-theoretical-model.html#wm-bits)
  - [Bringing it together](05-playing-by-ear-a-theoretical-model.html#bringing-it-together)
  - [Moving from Theoretical to Computational](05-playing-by-ear-a-theoretical-model.html#moving-from-theoretical-to-computational)
    - [Inputs](05-playing-by-ear-a-theoretical-model.html#inputs)
    - [Sequential Construction](05-playing-by-ear-a-theoretical-model.html#sequential-construction)
    - [Function Application](05-playing-by-ear-a-theoretical-model.html#function-application)
  - [Mathematical Representation](05-playing-by-ear-a-theoretical-model.html#mathematical-representation)
  - [Algorithm Flow](05-playing-by-ear-a-theoretical-model.html#algorithm-flow)
  - [Final Equation](05-playing-by-ear-a-theoretical-model.html#final-equation)
  - [Strategies](05-playing-by-ear-a-theoretical-model.html#strategies)
  - [Learning, forgetting](05-playing-by-ear-a-theoretical-model.html#learning-forgetting)
  - [The Melodic Mind As Item Bank](05-playing-by-ear-a-theoretical-model.html#the-melodic-mind-as-item-bank)
  - [Predictions:](05-playing-by-ear-a-theoretical-model.html#predictions)
- [7. A computational ecosystem](06-computational-ecosystem.html#computational-ecosystem)
  - [pyin:](06-computational-ecosystem.html#pyin)
  - [Psychologically meaningful musical item banks: itembankr](06-computational-ecosystem.html#psychologically-meaningful-musical-item-banks-itembankr)
  - [Datasets](06-computational-ecosystem.html#datasets)
    - [WJD](06-computational-ecosystem.html#wjd)
    - [Berkowitz](06-computational-ecosystem.html#berkowitz)
    - [Slonimsky](06-computational-ecosystem.html#slonimsky)
  - [Other useful functions](06-computational-ecosystem.html#other-useful-functions)
    - [Assessing musical behaviours: musicassessr](06-computational-ecosystem.html#assessing-musical-behaviours-musicassessr)
  - [Ability tests](06-computational-ecosystem.html#ability-tests)
  - [Conclusion](06-computational-ecosystem.html#conclusion)
- [8. Experiment 1: Development of a melodic similarity algorithm for short recalled melodies](07-development-of-melodic-similarity-algorithm-for-short-melodies.html#melsim_development)
- [9. Experiment 2: An Explanatory Model Of Playing By Ear](08-main_pbe_study_lab.html#pbet_lab_study)
  - [Methods](08-main_pbe_study_lab.html#methods)
    - [Participants and Preliminary Questionnaire](08-main_pbe_study_lab.html#participants-and-preliminary-questionnaire)
    - [Apparatus and General Procedure](08-main_pbe_study_lab.html#apparatus-and-general-procedure)
- [10. Experiment 3: Modelling Melodic Difficulty in Playing by Ear: An Item Response Analysis of Online Performance Data](09-main_pbe_study_online.html#pbet_online_study)
- [11. Experiment 4: A Longitudinal Study of Playing By Ear Skills](10_study_history_study.html#study_history_study)
  - [Production perception paradigm](10_study_history_study.html#production-perception-paradigm)
- [12. Experiment 5: A similarity-based approach to item selection](11-similarity_modelling_study.html#similarity_study)
  - [Collaborative filtering](11-similarity_modelling_study.html#collaborative-filtering)
  - [Approaches to similarity for large scale corpora](11-similarity_modelling_study.html#approaches-to-similarity-for-large-scale-corpora)
  - [Melodic corpora as networks](11-similarity_modelling_study.html#melodic-corpora-as-networks)
    - [Approach #1: similarity of features as proxy for melodic similarity](11-similarity_modelling_study.html#approach-1-similarity-of-features-as-proxy-for-melodic-similarity)
    - [Approach #2: Generative similarity](11-similarity_modelling_study.html#approach-2-generative-similarity)
    - [Approach #3: on breaking up items into ngrams, store representations/similarity.](11-similarity_modelling_study.html#approach-3-on-breaking-up-items-into-ngrams-store-representationssimilarity)
- [13. Experiment 6: Model synthesis: Development of a musical DASH+SIM model](12-DASH_model.html#experiment-6-model-synthesis-development-of-a-musical-dashsim-model)
- [14. Additional Learning Paradigms](13-learning_paradigms.html#additional-learning-paradigms)
  - [Generative similarity](13-learning_paradigms.html#generative-similarity)
  - [identify correct vs incorrect ngrams in a recall: add incorrect ngrams to beginning of session buffer](13-learning_paradigms.html#identify-correct-vs-incorrect-ngrams-in-a-recall-add-incorrect-ngrams-to-beginning-of-session-buffer)
- [15. Experiment 7: An Interventional Study](14-an_interventional_study.html#interventional_Study)

