# Approaches to similarity for large scale corpora {#item_banks_and_similarity}

opti3 etc.

## Problem:


``` r
# WJD_no_items <- nrow(WJD::WJD('phrases'))
```


``` r
# factorial(WJD_no_items)
```


## Approach #1: similarity of features as proxy for melodic similarity

Conclusion: similarity of features =! melodic (opti3/[perceptual?!]) similarity
- this is important, because similar features will produce similar difficulty scores (need to test this formally though).. which shows that similarity as a separate item selector to difficulty is warranted/important (potentially)


## Approach #2: Generative similarity

- bringing in desimilarize et al. app


## Approach #3: on breaking up items into ngrams, store representations/similarity.
- by definition ngrams will be similarity to the overall melody they come from




