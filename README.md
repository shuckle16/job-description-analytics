# job-description-analytics
text analysis on job descriptions. job keywords, similar jobs, etc

fun exploration on job data.

## To do
* find more job descriptions
* R projects, etc
* shiny app?

## Resources
* This code makes heavy use of the [text2vec][1] package. It's really cool!
* Occupation Data.txt is from the ONET job description database. I downloaded it [here][2]
* For ranking document specific words, the [tidylo][3] package can be used as an alternative to tf-idf.

## Session Info

    R version 3.6.1 (2019-07-05)
    Platform: x86_64-apple-darwin15.6.0 (64-bit)
    Running under: macOS High Sierra 10.13.6
    
    Matrix products: default
    BLAS:   /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib
    LAPACK: /Library/Frameworks/R.framework/Versions/3.6/Resources/lib/libRlapack.dylib
    
    locale:
    [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
    
    attached base packages:
    [1] stats     graphics  grDevices utils     datasets  methods   base     
    
    other attached packages:
     [1] tidylo_0.1.0.900 tidytext_0.2.2   text2vec_0.5.1   forcats_0.4.0    stringr_1.4.0    dplyr_0.8.3     
     [7] purrr_0.3.3      readr_1.3.1      tidyr_1.0.0      tibble_2.1.3     ggplot2_3.2.1    tidyverse_1.2.1 
    
    loaded via a namespace (and not attached):
     [1] Rcpp_1.0.3           lubridate_1.7.4      lattice_0.20-38      prettyunits_1.0.2    ps_1.3.0            
     [6] utf8_1.1.4           assertthat_0.2.1     zeallot_0.1.0        rprojroot_1.3-2      digest_0.6.23       
    [11] foreach_1.4.7        R6_2.4.1             cellranger_1.1.0     futile.options_1.0.1 backports_1.1.5     
    [16] httr_1.4.1           pillar_1.4.3         rlang_0.4.2          lazyeval_0.2.2       curl_4.0            
    [21] readxl_1.3.1         rstudioapi_0.10      data.table_1.12.2    callr_3.3.1          Matrix_1.2-17       
    [26] munsell_0.5.0        broom_0.5.2          compiler_3.6.1       janeaustenr_0.1.5    modelr_0.1.5        
    [31] pkgconfig_2.0.3      pkgbuild_1.0.5       clipr_0.7.0          tidyselect_0.2.5     codetools_0.2-16    
    [36] fansi_0.4.0          crayon_1.3.4         withr_2.1.2          SnowballC_0.6.0      grid_3.6.1          
    [41] nlme_3.1-140         jsonlite_1.6         gtable_0.3.0         lifecycle_0.1.0      magrittr_1.5        
    [46] formatR_1.7          tokenizers_0.2.1     scales_1.0.0         RcppParallel_4.4.4   cli_2.0.0           
    [51] stringi_1.4.3        remotes_2.1.0        xml2_1.2.2           futile.logger_1.4.3  generics_0.0.2      
    [56] vctrs_0.2.1          lambda.r_1.2.4       iterators_1.0.12     tools_3.6.1          glue_1.3.1          
    [61] mlapi_0.1.0          hms_0.5.1            processx_3.4.1       yaml_2.2.0           colorspace_1.4-1    
    [66] rvest_0.3.4          haven_2.1.1   

[1]: http://text2vec.org/index.html
[2]: https://www.onetcenter.org/dl_files/database/db_21_0_text/Occupation%20Data.txt
[3]: https://github.com/juliasilge/tidylo
