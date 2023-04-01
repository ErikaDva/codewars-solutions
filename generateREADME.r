## ---------------------------
##
## Script name: generateREADME.r
##
## Purpose of script: generates README file for each language with a list of completed katas
##
## Author: Erika Dvarionaite
##
## Date: 2023-03-11
##
## ---------------------------

# LOADING LIBRARY ---------------------------------------------------------

library(dplyr)

# GETTING KATA ------------------------------------------------------------

katas_languages <- c("Julia", "Python", "R", "Shell", "SQL")
katas_levels <- c("8kyu", "7kyu")

all_katas <- list()

for (language in katas_languages){
  
  levels_list <- list()
  
  for (level in katas_levels) {
    katas <- list.files(file.path(language, level))
    
    df <- data.frame(raw_kata = katas) %>% 
      tidyr::separate(raw_kata, c("Level", "Kata"), paste0(level, "-")) %>% 
      dplyr::mutate(Kata = stringr::str_to_title(Kata)) %>% 
      tidyr::drop_na()
    
    # Check that dataframe is not empty
    if (nrow(df) > 0){ 
    # Add columns
    df$Level <- level
    df$Language <- language
    
    # Fix kata names
    df$Kata = gsub("\\.[^.]+$", "", df$Kata)
    df$Kata = gsub("-", " ", df$Kata)
    
    # Add to a list
    levels_list[[level]] <- df
    }
  }
  all_katas[[language]] <- levels_list
}

all_katas_df <- purrr::map_dfr(all_katas, bind_rows)


# GENERATE .MD FILES ------------------------------------------------------

for (language in katas_languages){
  
  df <- all_katas_df %>% dplyr::filter(Language == language)
  
  for (level in katas_levels) {
    kata_titles <- df %>% dplyr::filter(Level == level) %>% dplyr::pull(Kata)
    
      if (length(kata_titles) != 0){
      heading <- paste("# List of codewars", level, language, "available solutions")
      text <- paste(language, level, "codewars solution", kata_titles)
      readme_text <- c(heading, text)
      writeLines(text = readme_text, sep = "\n\n", paste0(language, "/", level, "/", "README.md"))
      }
    }
  }

# --------------------------------- END --------------------------------- #