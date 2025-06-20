
# A Computational Ecosystem {#computational-ecosystem}



``` r
# NB: knitr::include_app !!!
```

To investigate computational questions related to playing by ear, an appropriate computational architecture is required. Whilst many musicological and psychological tools exist, as far as I am aware, there is no open source academic framework that provides an end-to-end solution for recording produced musical data, transcribing audio into useful symbolic representations, and assessing these representations within a scientific statistical modelling framework - all in real-time. 

However, it would be far beyond the scope of any individual to produce all the required components, each themselves requiring considerable research. Indeed, we stand on the shoulders of giants. In that respect, my work here has mainly been to find ways to combine the already existing tools into a framework - to get them to interact with one another - and create useful data structures to store relevant information and make it readily usable in web applications.

To not detract from the theoretical questions in this manuscript, I will only give a brief tour of this architecture here. However, please see the documentation for a more thorough treatment.

I will start with the low-level packages and work my way up to the higher level ones.

## Transcription of Melodic Production Data: pyin

To be able to assess music production data, it is first necessary to transcribe

# pYIN R package

*pyin* is an R package which wraps the [pYIN](https://code.soundsoftware.ac.uk/projects/pyin) algorithm (Mauch & Dixon, 2014) for fundamental frequency estimation via [Sonic Annotator](https://vamp-plugins.org/sonic-annotator/) (Cannam, Jewell, Rhodes, Sandler & d’Invernoand, 2010) for use in the R environment.

## Installation

```r
install.packages("devtools")
devtools::install_github("sebsilas/pyin")
```

## Usage


``` r
library(pyin)

# First test using our test function:

test <- test_pyin()

# If the pyin setup was successful on your system, 'test' should contain a 10x5 data with the transcribed note events of a demo audio file we have distributed with the package.

# Try your own audio file:

my_audio_transcription <- pyin('/my/file/path/audio.wav')

# If you install the itembankr package, you can compute extra melodic features on this:

devtools::install_github('sebsilas/itembankr')

library(dplyr)
library(itembankr)


my_audio_transcription %>% produce_extra_melodic_features()

# where my_audio_transcription contains a pYIN result.
```

## Notes

See https://vamp-plugins.org/sonic-annotator/ for information about allowed file types etc.

It is possible to also supply transform files, as described there, via the R package version of pYIN (see the `transform_file` argument)

### Compatability

This R package currently only supports Windows and Mac 64-bit. If you require support for other systems, please get in touch.

## References

Cannam, C., Jewell, M. O., Rhodes, C., Sandler, M., & d’Inverno, M. (2010). Linked Data And You: Bringing music research software into the Semantic Web. Journal of New Music Research, 39(4), 313–325.

Mauch, M., & Dixon, S. (2014). PYIN: a fundamental frequency estimator using probabilistic threshold distributions. Proceedings of the IEEE International Conference on Acoustics, Speech, and Signal Processing (ICASSP 2014).


## Assessment of Melodic Similarity: melsim



``` r
# TODO: Also on repo
```

## Psychologically Meaningful Musical Item Banks: itembankr 

In my literature review, I noted that pattern books and melodic repositories have emerged to support jazz improvisation and acquiring inner melodic representations. Such books present itemised melodic patterns to stimulate compositional ideas or so that training musicians can practise acquiring cognitive representations of new melodic material  (Lateef, 2015; Weiskopf, 2015; Slonimsky, 1947; Ricker, 1999). Such books are essentially *corpora* or *item banks* of melodic grammar and possibilities. As well as improving one’s melodic "vocabulary", such books can be used to develop technical prowess, by challenging the player to acquire new action patterns to perform the items. 

However, often these volumes are just repositories of melodies and lack a systematic structure, or if they do, the structure is not built upon robust cognitive psychological principles tha can advance the objective of efficient learning. This is also a technological issue: moreover, books are static and not able to break down items into smaller pieces and consider the relationship between items.

By not being structured in a way that makes them optimised for memorisation, such books are limited. Typically, contents will be structured into discrete items where each item represents a particular melodic sequence. However, each of these items can be broken into smaller contiguous subsets known as N-grams (Damashek, 1995) or "chunks". Such componentisation makes items more readily memorable since sequence length is a major predictor of how memorable an item is (Cowan, 2010; Miller, 1956). The implication is that, by first learning smaller chunks and then increasing the size of chunks, one can optimise the learning process (Lehmann & Kopiez, 2011). To undertake such a task manually is more or less impossible as it would require an individual to comprehend a combinatorial explosion of relationships between the items in a given corpus (intra-corpus). Moreover, different corpora will also share identical and similar chunks, so learning one chunk may support learning other chunks inter-corpuses too. It would be redundant to treat these as separate chunks (except to count chunks by frequency, another potential indicator of its usefulness) and would instead be more efficient to have a centralised system which can consider information inter-corpora. 


`itembankr` is an *R* package for creating useful item banks from raw, relatively unstructured data. These item banks are intended mainly to be used in psychological testing but can also be used for corpus analyses. The package is currently focused on musical, and particularly monophonic, melodic stimuli.

For convenience, we refer to a "corpus" as some raw input data, not in itself particularly useful in psychological testing, and an "item bank" as the useful output, which is typically a set of dataframes with the stimuli from the corpus organised in a useful way (and some new computed melodic representations).

Hence, the main function in `itembankr` is `create_item_bank`:


``` r
# Create an item bank from MIDI and/or musicxml files

create_item_bank(name = 'Berkowitz',
                 midi_file_dir = 'berkowitz_midi_rhythmic_100bpm',
                 musicxml_file_dir = 'berkowitz_musicxml')
```

You can also create an item bank simply by inputting MIDI notes and durations directly to the `input_df` argument via an *R* tibble/dataframe. Minimally, you need `abs_melody` and `durations` columns, e.g,:



``` r
test_item_bank <- tibble::tribble(
  ~abs_melody,              ~durations,
  "61,62,63,64,65,66",      "1,2,3,4,5,6",
  "72, 73, 75, 78",         "1, 1, 1, 1"
)


create_item_bank(name = "Test", input_df = test_item_bank)
```

The output of `create_item_bank` is one or more `.rda` files, depending on what you requested as `output`.

You can read these into R like this:


``` r
# A fairly limited item bank consisting of just file references:

load('Berkowitz_file.rda')


Berkowitz_file <- item_bank

# (we rename the object from "item_bank")

rm(item_bank)


# A database of the melodic items split up into ngrams (perhaps most useful for arrhythmic usage)

load('Berkowitz_ngram.rda')

Berkowitz_ngram <- item_bank

rm(item_bank)


# Rather than splitting up the corpus into ngrams, split it up based on (a rather crude approximation of) phrase boundaries. This is perhaps more useful for rhythmic usage.

Berkowitz_phrase <- item_bank

rm(item_bank)

# Everything combined

load('Berkowitz_combined.rda')

Berkowitz_combined <- item_bank

rm(item_bank)
```


These various item banks can be used as inputs to tests created with the [musicassessr](https://github.com/syntheso/musicassessr) package.

Please note, these functions can take a long time to run.

By default, `create_item_bank` produces all item bank types as output. You can request only some of the database types to be created using the `output` argument.

You can also use the underlying functions directly, e.g., see: 

- `create_item_bank_from_files`
- `split_item_bank_into_ngrams`
- `count_freqs`
- `get_melody_features`
- `create_phrases_db`


## References

Beaty, R. E., Frieler, K., Norgaard, M., Merseal, H. M., MacDonald, M. C., & Weiss, D. J. (2021). Expert musical improvisations contain sequencing biases seen in language production. Journal of Experimental Psychology. https://doi.org/10.1037/xge0001107

Berkowitz, S., Fontrier, G., Goldstein, P., & Smaldone, E. (2017). A new approach to sight singing (Sixth edition). W. W. Norton & Company

Crayencour, H.-C., Velichkina, O., Frieler, K., Höger, F., Pfleiderer, M., Henry, L., Solis, G., Wolff, D., Weyde, T., Peeters, G., Basaran, D., Smith, J., & Proutskova, P. (2021)

The DTL1000 Jazz Solo Dataset (in prep.). Journal on Computing and Cultural Heritage

Müllensiefen, D. (2009). FANTASTIC: Feature ANalysis Technology Accessing STatistics (In a Corpus; Technical report). 37.

Pfleiderer, M., Frieler, K., Abeßer, J., Zaddach, W.-G., & Burkhart, B. (Hrsg.). (2017). Inside the Jazzomat—New perspectives for jazz research. Schott Campus.

Slonimsky, N. (1947). Thesaurus of scales and melodic patterns. Literary Licensing, LLC.



``` r
library(itembankr)

library(WJD)
library(Berkowitz)
#library(Slonimsky)
```


## musicassessrdb

## Datasets (created with itembankr)


### WJD


A pre-made *itembankr* item bank of the [Weimar Jazz Database](https://jazzomat.hfm-weimar.de/dbformat/dboverview.html)


## References

Pfleiderer, M., Frieler, K., Abeßer, J., Zaddach, W.-G., & Burkhart, B. (Hrsg.). (2017). Inside the Jazzomat—New Perspectives for Jazz Research. Schott Campus.

The command used to create the item bank was:


``` r
WJD <- corpus_to_item_bank(corpus_name = "WJD", 
                           corpus_df = phrases_dbs2,
                           output_type = "ngram", 
                           phrases_db = phrases_dbs2, 
                           launch_app = FALSE)
```

The properties of the item bank are:


``` r
WJD::WJD
```



``` r
itembankr::hist_item_bank(WJD::WJD)
```


### Berkowitz



A pre-made *itembankr* item bank of the Baker (2021) / Berkowitz (2017) sight-singing corpus.


## References

Baker, D. (2021). MeloSol Corpus. Empirical Musicology Review, 16, 106–113. https://doi.org/10.18061/emr.v16i1.7645

Berkowitz, S., Fontrier, G., Goldstein, P., & Smaldone, E. (2017). A new approach to sight singing (Sixth edition). W. W. Norton & Company.


``` r
head(Berkowitz::Berkowitz)
```




``` r
itembankr::hist_item_bank(Berkowitz::Berkowitz)
```


### Slonimsky


``` r
head(Slonimsky::Slonimsky)
```


``` r
itembankr::hist_item_bank(Slonimsky::Slonimsky)
```

## Other useful functions


``` r
itembankr::subset_item_bank()

itembankexplorer::item_bank_explorer(Berkowitz::Berkowitz)
```


Much of the architecture is grouped under the `musicassessr` package and ecosystem [@silasMusicassessrEcosystemRecord2023]. `musicassessr` is, in essence, a giant wrapper, bringing already developed psychological and musicological into the same software environment, backed by a statistical modelling framework in R [@rcoreteamLanguageEnvironmentStatistical2020]. 



### Assessing musical behaviours: musicassessr


# musicassessr

`musicassessr` is an R package for facilitating the deployment of (particularly, musical) stimuli in psychological tests as well as recording and scoring data. It provides convenience functions to deploy stimuli via [`psychTestR`](https://pmcharrison.github.io/psychTestR/), advanced [`psychTestR`](https://pmcharrison.github.io/psychTestR/) page types to collect new types of data, and utilities to process and score this data, among other things.

## The musicassessr ecosystem

`musicassessr` is part of a network of packages. See also:

- [`pyin`](https://github.com/sebsilas/pyin): transcribe monophonic audio in the *R* environment using the pYIN algorithm
- [`itembankr`](https://github.com/sebsilas/itembankr): produce musicassessr-compatible item banks with useful melodic features
- [`Berkowitz`](https://github.com/sebsilas/Berkowitz): a pre-made *itembankr* item bank of the Baker (2021) / Berkowitz (2017) sight-singing corpus.
- [`WJD`](https://github.com/sebsilas/WJD): a pre-made *itembankr* item bank of the [Weimar Jazz Database](https://jazzomat.hfm-weimar.de/dbformat/dboverview.html).

### Musical ability tests

*musicassessr* currently facilitates the following music ability tests:

- [`SAA`](https://saa.musicassessr.com) (*Singing Ability Assessment*; Silas, Müllensiefen, & Kopiez, 2023)
- [`PBET`](https://github.com/sebsilas/PBET)  (*Playing By Ear Test*)
- [`PDT`](https://github.com/sebsilas/PDT) (*Pitch Discrimination Test*; our re-implementation of Soranzo & Grassi, 2014)

### Cheat Sheet

<a href="https://musicassessr.com/assets/musicassessr_cheat_sheet.pdf"><img src="https://musicassessr.com/assets/musicassessr_cheatsheet.png" width="630" height="495"/></a>



### Analysis pipeline

![Analysis pipeline](https://musicassessr.com/assets/analysis_pipeline.jpg)

### Research and Documentation

You can find several articles and tutorials [here](https://sebsilas.github.io/musicassessr/articles/), which include summarised results of research utilising this software (see: white papers). For in-depth reading, follow the results to the actual publications.

# Setup

- If you are running *musicassessr* on Linux, you will need to install [*SoX*](https://sox.sourceforge.net) manually. 

- You will also need to install *NodeJS*.

## References

Baker, D. (2021). MeloSol Corpus. Empirical Musicology Review, 16, 106–113. https://doi.org/10.18061/emr.v16i1.7645

Beaty, R. E., Frieler, K., Norgaard, M., Merseal, H. M., MacDonald, M. C., & Weiss, D. J. (2021). Expert musical improvisations contain sequencing biases seen in language production. Journal of Experimental Psychology. https://doi.org/10.1037/xge0001107

Berkowitz, S., Fontrier, G., Goldstein, P., & Smaldone, E. (2017). A new approach to sight singing (Sixth edition). W. W. Norton & Company.

Cannam, C., Jewell, M. O., Rhodes, C., Sandler, M., & d’Inverno, M. (2010). Linked Data And You: Bringing music research software into the Semantic Web. Journal of New Music Research, 39(4), 313–325.

Crayencour, H.-C., Velichkina, O., Frieler, K., Höger, F., Pfleiderer, M., Henry, L., Solis, G., Wolff, D., Weyde, T., Peeters, G., Basaran, D., Smith, J., & Proutskova, P. (2021). The DTL1000 Jazz Solo Dataset (in prep.). Journal on Computing and Cultural Heritage

Harrison, P. M. C. (2020). psychTestR: An R package for designing and conducting behavioural psychological experiments. Journal of Open Source Software, 5(49), 2088. https://doi.org/10.21105/joss.02088

Mauch, M., & Dixon, S. (2014). PYIN: a fundamental frequency estimator using probabilistic threshold distributions. Proceedings of the IEEE International Conference on Acoustics, Speech, and Signal Processing (ICASSP 2014).

Müllensiefen, D., & Frieler, K. (2007). Modelling experts’ notions of melodic similarity. Musicae Scientiae, 11(1_suppl), 183–210. https://doi.org/10.1177/102986490701100108

Silas, S., & Frieler, K. (2023). The musicassessr ecosystem: Record, measure, score and present feedback about musical production behaviour in real-time, supported by psychometric models. Deutsche Gesellschaft für Musikpsychologie, Hanover.

Silas, S., Müllensiefen, D., & Kopiez, R. (2023). Singing Ability Assessment: Development and validation of a singing test based on item response theory and a general open-source software environment for singing data. Behaviour Research Methods.


Silas, S., Müllensiefen, D., & Kopiez, R. (2023). Utilising a new generation of musical production tests to understand musical learning: Singing ability assessment, melodic recall and playing by ear. Deutsche Gesellschaft für Musikpsychologie, Hanover.

Silas, S., Kopiez, R., & Müllensiefen, D. (2021). What makes playing by ear difficult? SEMPRE conference.

Soranzo, A., & Grassi, M. (2014). Psychoacoustics: A comprehensive Matlab toolbox for auditory testing. Frontiers in Psychology, 5. https://doi.org/10.3389/fpsyg.2014.00712



``` r
library(musicassessr)
library(htmltools)

htmltools::tagList(
    lapply(musicassessr::musicassessr_js(visual_notation = TRUE), function(x) {
      if(base::startsWith(x, "http")) {
        htmltools::tags$script(src = x)
      } else {
        htmltools::includeScript(x)
      }
    })
)
```


``` r
musicassessr::present_stimuli(
  stimuli = c(60, 62, 64, 65), 
  stimuli_type = "midi_notes", 
  display_modality = "visual"
)
```


<!-- ```{r warning=FALSE} -->

<!-- musicassessr::present_stimuli( -->
<!--   stimuli = c(60, 62, 64, 65),  -->
<!--   stimuli_type = "midi_notes",  -->
<!--   display_modality = "audio" -->
<!-- ) -->

<!-- # bookdown::render_book("04-musicassessr.Rmd", "bookdown::gitbook") -->
<!-- ``` -->




## Ability tests



### Play By Ear Test (PBET)

# Play By Ear Test (PBET)

The `PBET` is a test of playing by ear ability which can be launched in R/Shiny via the [`psychTestR`](https://github.com/pmcharrison/psychTestR) package.

## Author

Seb Silas, [sebsilas@gmail.com](mailto:sebsilas@gmail.com)

## Demos

Short `PBET` with feedback: https://musicassessr.com/PBET-demo

<!-- Prototype adaptive-`PBET`(*aPBET*) with feedback: https://adaptiveeartraining.com/aPBET -->

## Installation

1. Install *nodeJS*: https://nodejs.org/en/download/

2. Install *R*: https://cloud.r-project.org/

3. Install *RStudio*: https://posit.co/downloads/

4. Launch *RStudio*

5. Install the `devtools` *R* package by pasting the following command into the *RStudio* terminal:

`install.packages('devtools')`

6. Install the `PBET` package:

`devtools::install_github('sebsilas/PBET')`


## Usage

Once you have completed the above steps, you can run the `PBET` test by doing the following:

1. Create a folder which will contain your app. The name of this folder will become the `app_name` argument when you run the `PBET` or `PBET_standalone` functions later.

2. In the folder, create an *R* file called `app.R`. In this file, paste your code to run the `PBET` there, like below:


``` r

# Load the PBET package

library(PBET)

# Run a short test with feedback:

PBET_standalone(app_name = 'my_PBET_app',
               skip_setup = TRUE,
               absolute_url = "https://adaptiveeartraining.com",
               num_items = list("interval_perception" = 0L,
                                 "find_this_note" = 0L,
                                 "arrhythmic" = list("key_easy" = 1L,
                                                     "key_hard" = 1L),
                                 "rhythmic" = list("key_easy" = 1L,
                                                   "key_hard" = 1L),
                                 "wjd_audio" = list("key_easy" = 0L,
                                                    "key_hard" = 0L)),
               examples = list(
                 "find_this_note" = 0L,
                 "interval_perception" = 0L,
                 "arrhythmic" = list("easy" = 0L, "hard" = 0L),
                 "rhythmic" = list("easy" = 0L, "hard" = 0L), # because it's effectively the same task as arrhythmic
                 "wjd_audio" = list("easy" = 0L, "hard" = 0L)
               ),
               feedback = TRUE)

```

Remember that the `app_name` argument should match the name of your folder.

3. Make sure that your current directory is the app folder you created. You can check the current directory by using `getwd()`. You may need to set the app directory by placing `setwd('/Users/musicassessr/my_project/my_PBET_app')` at the beginning of your app file. 

4. Run the app. To do this in *RStudio*, use the shortcut `Command + Shift + Enter` on Mac (`Ctrl + Shift + Enter` on Windows).


5. If the above steps were successful, the `PBET` test should load in your web browser, and as you progress through the test, you should receive feedback after each trial. Recorded audio should appear in the */app_name/www/audio/* directory.

If not, go to our [Troubleshooting]() page or [raise an issue on Github](https://github.com/sebsilas/PBET/issues).

## Usage notes

- This has not yet been tested on Windows. We will be doing this very soon.

- The test requires internet connectivity. 

- The *PBET* runs in your web browser. It is only recommended to run the test in [Google Chrome](https://www.google.com/chrome/) or [Opera](https://www.opera.com/download). You will need to set one of these to be your default browser for *RStudio* to launch the test there (restart *RStudio* after doing this).



## Citation

We advise mentioning the software versions you used,
in particular the versions of the `PBET`, `musicassessr`, `psychTestR`, and `psychTestRCAT` packages.
You can find these version numbers from R by running the following commands:

```r
library(PBET)
library(psychTestR)
library(psychTestRCAT)
if (!require(devtools)) install.packages("devtools")
x <- devtools::session_info()
x$packages[x$packages$package %in% c("PBET", "psychTestR", "psychTestRCAT"), ]
```

## References
 
 
Silas, S., Müllensiefen, D., & Kopiez, R. (2023). Play By Ear Test: Development and validation of an open-source playing by ear test. In prep.

### Singing Ability Assessment (SAA)

The *Singing Ability Assessment* (`SAA`; Silas, Müllensiefen, & Kopiez, 2023) is a test of singing ability which can be launched in R/Shiny via the [`psychTestR`](https://github.com/pmcharrison/psychTestR) package.

## Author

Seb Silas, [sebsilas@gmail.com](mailto:sebsilas@gmail.com)

## Demos

Short `SAA` with feedback: https://adaptiveeartraining.com/SAA-demo

Prototype adaptive-`SAA`(*aSAA*) with feedback: https://adaptiveeartraining.com/aSAA

## Installation

1. Install *nodeJS*: https://nodejs.org/en/download/

2. Install *R*: https://cloud.r-project.org/

3. Install *RStudio*: https://posit.co/downloads/

4. Launch *RStudio*

5. Install the `devtools` *R* package by pasting the following command into the *RStudio* terminal:

`install.packages('devtools')`

6. Install the `SAA` package:

`devtools::install_github('sebsilas/SAA')`


## Usage

Once you have completed the above steps, you can run the `SAA` test by doing the following:

1. Create a folder which will contain your app. The name of this folder will become the `app_name` argument when you run the `SAA` or `SAA_standalone` functions later.

2. In the folder, create an *R* file called `app.R`. In this file, paste your code to run the `SAA` there, like below:


``` r

# Load the SAA package

library(SAA)

# Run a short test with feedback:

SAA_standalone(app_name = "my_SAA_app",
               num_items = list(long_tones = 2L, arrhythmic = 2L, rhythmic = 2L),
               feedback = TRUE,
               SNR_test = FALSE,
               get_range = FALSE,
               examples = 0)

```

Remember that the `app_name` argument should match the name of your folder.

3. Make sure that your current directory is the app folder you created. You can check the current directory by using `getwd()`. You may need to set the app directory by placing `setwd('/Users/musicassessr/my_project/my_SAA_app')` at the beginning of your app file. 

4. Run the app. To do this in *RStudio*, use the shortcut `Command + Shift + Enter` on Mac (`Ctrl + Shift + Enter` on Windows).


5. If the above steps were successful, the `SAA` test should load in your web browser, and as you progress through the test, you should receive feedback after each trial. Recorded audio should appear in the */app_name/www/audio/* directory.

If not, go to our [Troubleshooting]() page or [raise an issue on Github](https://github.com/sebsilas/SAA/issues).

## Usage notes

- This has not yet been comprehensively tested on Windows. Please get in touch if you have any issues.

- The test requires internet connectivity.

- The *SAA* runs in your web browser. It is only recommended to run the test in [Google Chrome](https://www.google.com/chrome/) or [Opera](https://www.opera.com/download). You will need to set one of these to be your default browser for *RStudio* to launch the test there (restart *RStudio* after doing this).



## Citation

We advise mentioning the software versions you used,
in particular the versions of the `SAA`, `musicassessr`, `psychTestR`, and `psychTestRCAT` packages.
You can find these version numbers from R by running the following commands:

```r
library(SAA)
library(psychTestR)
library(psychTestRCAT)
if (!require(devtools)) install.packages("devtools")
x <- devtools::session_info()
x$packages[x$packages$package %in% c("SAA", "psychTestR", "psychTestRCAT"), ]
```

## References
 
 
Silas, S., Müllensiefen, D., & Kopiez, R. (2023). Singing Ability Assessment: Development and validation of a singing test based on item response theory and a general open-source software environment for singing data. Behaviour Research Methods. https://doi.org/10.3758/s13428-023-02188-0




## Conclusion

Thus, a primary outcome of this dissertation was the development of a computational ecosystem to record and assess music production data in real-time.

