
# A computational ecosystem {#computational-ecosystem}


To investigate computational questions related to playing by ear, an appropriate computational architecture is required. Whilst many musicological and psychological tools exist, as far as I am aware, there is no open source academic framework that provides an end-to-end solution for recording produced musical data, transcribing audio into useful symbolic representations, and assessing these representations within a scientific statistical modelling framework - all in real-time. 

However, it would be far beyond the scope of any individual to produce all the required components, themselves requiring considerable research. Indeed, we stand on the shoulders of giants. In that respect, my work here has mainly been to find ways to combine the already existing tools into a framework - to get them to interact with one another - and create useful data structures to store relevant information and make it readily usable in web applications.

To not detract from the theoretical questions in this manuscript, I will only give a brief tour of this architecture here. However, please see the documentation for a more thorough treatment.

I will start with the low-level packages and work my way up to the higher level ones.

## pyin: 

To be able to assess music production data, it is first necessary to 


`melsim`



## Psychologically meaningful musical item banks: itembankr 

In my literature review, I noted that pattern books and melodic repositories have emerged to support jazz improvisation and acquiring inner melodic representations. Such books present itemised melodic patterns to stimulate compositional ideas or so that training musicians can practise acquiring cognitive representations of new melodic material  (Lateef, 2015; Weiskopf, 2015; Slonimsky, 1947; Ricker, 1999). Such books are essentially *corpora* or *item banks* of melodic grammar and possibilities. As well as improving one’s melodic "vocabulary", such books can be used to develop technical prowess, by challenging the player to acquire new action patterns to perform the items. 

However, often these volumes are just repositories of melodies and lack a systematic structure, or if they do, the structure is not built upon robust cognitive psychological principles tha can advance the objective of efficient learning. This is also a technological issue: moreover, books are static and not able to break down items into smaller pieces and consider the relationship between items.

By not being structured in a way that makes them optimised for memorisation, such books are limited. Typically, contents will be structured into discrete items where each item represents a particular melodic sequence. However, each of these items can be broken into smaller contiguous subsets known as N-grams (Damashek, 1995) or "chunks". Such componentisation makes items more readily memorable since sequence length is a major predictor of how memorable an item is (Cowan, 2010; Miller, 1956). The implication is that, by first learning smaller chunks and then increasing the size of chunks, one can optimise the learning process (Lehmann & Kopiez, 2011). To undertake such a task manually is more or less impossible as it would require an individual to comprehend a combinatorial explosion of relationships between the items in a given corpus (intra-corpus). Moreover, different corpora will also share identical and similar chunks, so learning one chunk may support learning other chunks inter-corpuses too. It would be redundant to treat these as separate chunks (except to count chunks by frequency, another potential indicator of its usefulness) and would instead be more efficient to have a centralised system which can consider information inter-corpora. 


The purpose of `itembankr` is to..


The present paper details a new set of scripts which allow a user to process a corpus programmatically to solve some of the problems above. Consequentially, it is able to: a) provide useful insights into that particular corpus b) process the corpus into more readily memorable structures c) facilitate the ability to relate items to one another intra-corpus and inter-corpus . In doing so, the application should be able to improve the amount of time a user requires to learn melodic information from repositories of patterns.

`itembankr` gives a more useful representation to such melodic representations.




``` r
library(itembankr)

library(WJD)
library(Berkowitz)
#library(Slonimsky)
```


## Datasets


### WJD

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










## Conclusion

Thus, a primary outcome of this dissertation was the development of a computational ecosystem to record and assess music production data in real-time.

