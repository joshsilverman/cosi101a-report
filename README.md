* Data
 * Vectors: 
    * Download vectors folder to the locally cloned repo: https://www.dropbox.com/sh/dnhibvbbeuoiwo5/AACQ2wEKQ6oW6tOqhl5HeDRja?dl=0
    * Note: our top performing vector file is vectors.bin.wiki.skip.12 or 18
 * Training/Validation sets: 
    * Download data to the repository: https://www.dropbox.com/sh/pvl8bu0we919pd8/AACflcFz_brgRJ6y4ht72WBta?dl=0
    * Note: after downloading all training sets and putting them inside the repository folder, set the training_set path in distance.c to training_set_tfidf.csv for our top performing model

* Run commands
    * Word2Vec training sets
      * Word vector aggregation method: https://github.com/joshsilverman/cosi101a-report/blob/master/w2v/distance.c#L32
      * Top performing similarity method: https://github.com/joshsilverman/cosi101a-report/blob/master/w2v/distance.c#L91
      * Note: to run this code vectors and data must be correctly downloaded and paths to vectors.bin and training_set.csv must be fixed here (https://github.com/joshsilverman/cosi101a-report/blob/master/w2v/distance.c#L125) and here (https://github.com/joshsilverman/cosi101a-report/blob/master/w2v/distance.c#L162).
    * Word2Vec TF-IDF word removal: https://github.com/joshsilverman/cosi101a-report/blob/master/tfidf/tfidf_questions.rb
      * Note: threshold can be set here (https://github.com/joshsilverman/cosi101a-report/blob/master/tfidf/tfidf_questions.rb#L60). Alternately, you can uncomment the above lines (https://github.com/joshsilverman/cosi101a-report/blob/master/tfidf/tfidf_questions.rb#L57) to enable a dynamic threshold.
      * Note: enable an alternative IDF function such as BM25 here (https://github.com/joshsilverman/cosi101a-report/blob/master/tfidf/tfidf_questions.rb#L33).
    * Wor2Vec alternative similarity methods (https://raw.githubusercontent.com/joshsilverman/cosi101aw2v/master/cosi101a/distance.c)
    * Ferret (not submitted to Kaggle)
      * Index all wikipedia articles: https://github.com/joshsilverman/cosi101a-report/blob/master/ferret/build_ferret.rb
      * Answer questions with ferret: https://github.com/joshsilverman/cosi101a-report/blob/master/ferret/ferret_questions.rb
