* Data
 * Vectors: 
    * Download vectors folder to the locally cloned repo
    * Note: our top performing vector file is vectors.bin.wiki.skip.12 or 18
 * Training/Validation sets: 
    * Download data to the repository
    * Note: after downloading all training sets and putting them inside the repository folder, set the training_set path in distance.c to training_set_tfidf.csv for our top performing model

* Run commands
    * Word2Vec training sets
      * Word vector aggregation method
      * Top performing similarity method
      * Note: to run this code vectors and data must be correctly downloaded and paths to vectors.bin and training_set.csv must be fixed here and here.
    * Word2Vec TF-IDF word removal
      * Note: threshold can be set here. Alternately, you can uncomment the above lines to enable a dynamic threshold.
      * Note: enable an alternative IDF function such as BM25 here.
    * Wor2Vec alternative similarity methods
    * Ferret (not submitted to Kaggle)
      * Index all wikipedia articles
      * Answer questions with ferret
