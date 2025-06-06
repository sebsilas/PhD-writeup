

# Experiment 5: A Similarity-Based Approach to Item Selection {#similarity_study}


## Collaborative Filtering




``` r
# library(recommenderlab) 
library(magrittr)
```








``` r
#' recommend_n_melodies
#'
#' @param p_id A valid p_id to recommend top n melodies for
#' @param n number of melodies to recommend
#'
#' @return A json with the top n recommended melodies
#' @export
recommend_n_melodies <- function(p_id, n){
  # extract and clean user-item interactions
  logging::loginfo("Generating %s survey recommendations for User %s",n,p_id)
  logging::loginfo("Parsing relevant data from database")

  logging::loginfo("%s Survey-User interactions parsed", nrow(dat))
  dat <- dat %>%
    dplyr::select(abs_melody,p_id, opti3) %>%
    dplyr::mutate(mel_p_id = paste(abs_melody, p_id, sep="-")) %>%
    # This gets rid of duplicates and ensures that if there
    # are entries for a user both 'opti3' and not 'opti3'
    # a survey, the 'opti3' entry is retained
    dplyr::arrange(desc(opti3)) %>%
    dplyr::distinct(mel_p_id, .keep_all=T) %>%
    dplyr::select(-mel_p_id) %>%
    tidyr::pivot_wider(names_from=abs_melody, values_from=opti3,
                       values_fill = NA)
  # Transform into binarized matrix
  user_id <- dat$p_id
  dat$p_id <- NULL
  mel_mat <- as.matrix(dat)
  rownames(mel_mat) <- user_id
  r <- as(mel_mat,"realRatingMatrix")
  r_b <- binarize(r, minRating=1)
  # Build the hybrid predictor
  logging::loginfo("Training recommenders")
  popular_recommender <- Recommender(data=r_b, method="POPULAR")
  my_recommender <- popular_recommender
  # if the user isn't in dat, we recommend based on popularity,
  # in which case any index will do (but the recommender stil requires one)
  user_idx <- 1
  if (p_id %in% user_id){
  # If the user has attempted at least one survey before, use
  # a mixture of user-based any hybrid recommendations
  user_recommender <- Recommender(data = r_b, method="UBCF", param=list(nn=50))
  hybrid <- HybridRecommender(user_recommender, popular_recommender,
                              weights=c(0.50, 0.50))
  # get the index of the p_id
  user_idx <- match(p_id, user_id )
  my_recommender <- hybrid
  }
  logging::loginfo("Generating recommendations")
  output <- predict(object = my_recommender, newdata = user_idx, n = n, data = r_b)
  recs <- unlist(output@items)
  itemIds <- colnames(mel_mat)
  recommended_items <- itemIds[recs]
  logging::loginfo("Recommendations generated, returning to client")
  recommended_items
}
```


``` r
t <- recommend_n_melodies(p_id = sample(unique(dat$p_id), size = 1),
                    n = 10)

t
```




## Approaches to Similarity for Large-Scale Corpora







## Melodic corpora as networks 




### Approach #1: Similarity of Features as a Proxy for Melodic Similarity

Conclusion: similarity of features =! melodic (opti3/[perceptual?!]) similarity
- this is important, because similar features will produce similar difficulty scores (need to test this formally though).. which shows that similarity as a separate item selector to difficulty is warranted/important (potentially)


### Approach #2: Generative Similarity

- bringing in desimilarize et al. app


### Approach #3: Parent Melody Representation

- On breaking up items into N-grams, store representations/similarity.
- By definition N-grams will be similarity to the overall melody they come from

