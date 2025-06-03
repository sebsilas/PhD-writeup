
# Experiment 2: An Explanatory Model Of Playing By Ear {#pbet_lab_study}


## Methods

### Participants and Preliminary Questionnaire

Prior to participating in the in-lab component of the study, all participants completed an  online pre-screening questionnaire. This battery included the Goldsmiths Musical Sophistication Index (GMS), which assessed participants’ self-reported musical training, singing ability, absolute pitch, and the age at which they began musical instruction. Participants also completed the DEG questionnaire to gather demographic information and musical background, as well as a custom set of items tailored to the aims of the present study. These custom questions asked about participants’ musician identity (e.g., professional, student, amateur), primary musical genre, experience and comfort with memorisation, highest graded performance level (e.g., UK ABRSM/Trinity levels), and self-assessed absolute pitch ability. Participants also selected their primary instrument (including voice) from a dropdown menu. Upon completion of this battery, participants received a unique participant ID and were invited to attend an in-person testing session.

### Apparatus and General Procedure
The in-lab portion of the study was conducted using the musicassessr platform, implemented in R using the psychTestR framework. All testing took place on lab computers, with participants using either a MIDI keyboard or a microphone as their input device, depending on the specific requirements of each task. The experiment was administered via a custom-built web application with real-time audio and MIDI processing capabilities. Participants completed seven musical tasks in total, each designed to probe different aspects of musical memory, perception, and performance.

To ensure consistency across participants, the Singing Ability Assessment (SAA) was always presented first. The remaining tasks were presented in a pseudo-randomised order unique to each participant, with the exception of the JAJ visuospatial working memory test, which was always administered last. This structure was chosen to control for potential order effects while preserving the integrity of the singing-first manipulations later in the battery.

#### Experimental Tasks
##### Singing Ability Assessment (SAA).

The first task evaluated participants’ capacity to vocally reproduce short melodic sequences from memory. Each trial consisted of a brief melody, either rhythmic or arrhythmic in nature, played once over headphones. Participants were then required to sing the melody back using a microphone, without the aid of visual notation. The test consisted of 16 melodies in total—eight rhythmic and eight arrhythmic—randomly drawn from a subset of the Berkowitz melodic dictation corpus. If enabled in the experiment configuration, the task began with a brief voice range calibration procedure to adjust playback range to the participant’s vocal register. Each melody was attempted once.

##### Playing by Ear Test (Standard PBET).
This task assessed participants’ ability to reproduce melodies they had heard by playing them back on a MIDI keyboard or singing them. Each trial presented a novel melody ranging in length from 5 to 15 notes, which participants were required to reproduce from memory. Both rhythmic and arrhythmic items were included, sampled using an adaptive n-tile procedure to ensure an even distribution of difficulty. Participants were allowed up to three attempts per melody. To support pitch anchoring, the first note of each melody was always provided. No visual cues were given, and participants did not receive feedback on their performance.

##### Learn-Test Paradigm (Audio-Visual PBET).
In this condition, participants first learned a set of melodies through either auditory or visual exposure. Melodies in the auditory condition were played over headphones, whereas melodies in the visual condition were presented as standard musical notation. Following the learning phase, all melodies were tested aurally, requiring participants to reproduce them without any visual aid. This paradigm allowed for the comparison of performance based on the modality through which melodies were encoded. Presentation order of melody type (visual vs. auditory) was randomised within each participant.

##### PBET with Singing First.
This variant of the standard PBET introduced an intermediate vocal rehearsal phase. For each melody, participants first attempted to sing the sequence aloud, and then reproduced the same melody using their instrument. This task included a total of 10 melodies—five rhythmic and five arrhythmic—randomly sampled from the same item bank as the standard PBET. Singing was always the first response attempt, with up to two additional instrumental attempts allowed if needed. This condition was designed to investigate whether vocal rehearsal enhanced subsequent instrumental reproduction.

##### Find This Note + Pitch Imagery Assessment (PIAT).
Participants next completed an interleaved task involving auditory pitch localisation and internal auditory imagery. In the "Find This Note" component, participants heard a single target pitch and attempted to reproduce it on their instrument. This was alternated with the Pitch Imagery Auditory Task (PIAT), a cognitive test that required participants to internally manipulate and recall pitch sequences. Input modality (MIDI or audio) was determined based on participant preference and hardware availability and remained consistent throughout the task. No feedback was provided.

##### Interval Perception Task.
In this purely perceptual task, participants listened to pairs of notes and identified the musical interval between them. Intervals varied in type and direction (ascending or descending), and no reproduction was required. The task was designed to assess baseline interval discrimination skills.

##### JAJ Task.

The final task in the battery was a visuospatial working memory assessment. Participants viewed sequences of spatial positions on a grid and were later required to reproduce the sequence in the correct order. This task was included to provide a cognitive control measure and was always administered last to prevent interference with the musical tasks.

##### Trial Structure and Randomisation

All melodic stimuli were drawn from a subset of the Berkowitz melodic dictation exercises and categorised as either rhythmic or arrhythmic. Stimuli were sampled using adaptive n-tile procedures to ensure balanced difficulty across participants and across conditions. Within each test, trials were presented in a randomised order, and melody length was randomly sampled between 5 and 15 notes where applicable. Input modality (MIDI keyboard or microphone) was either fixed per task or determined dynamically based on participant setup.

Where applicable, participants were given practice examples before beginning formal test trials. All responses were captured using either audio recording or MIDI data and were scored in real-time using custom asynchronous scoring functions embedded in the testing platform. After each task, participants were asked to provide brief written reflections on their experience and strategies used.
