# -------------------------------
# generate_global_toc.R
# Auto-creates a TOC page for bookdown without bookdown.yml
# -------------------------------

library(stringr)

rmd_files <- list.files(pattern = "^[^_].*\\.Rmd$")
rmd_files <- sort(setdiff(rmd_files, "index.Rmd"))
rmd_files <- c("index.Rmd", rmd_files)


# 2. Slugify function to match bookdown-style anchors
slugify <- function(text) {
  text |>
    str_to_lower() |>
    str_replace_all("[^a-z0-9\\s-]", "") |>
    str_trim() |>
    str_replace_all("\\s+", "-")
}

# 3. Collect TOC lines
toc_lines <- c("# Table of Contents\n")

for (file in rmd_files) {
  lines <- readLines(file, warn = FALSE)
  chapter_slug <- str_replace(file, "\\.Rmd$", ".html")
  
  for (line in lines) {
    if (str_detect(line, "^#{1,3} ")) {
      level <- str_count(str_extract(line, "^#+"), "#")
      
      # Extract title and optional custom anchor
      matches <- str_match(line, "^#{1,3}\\s+(.*?)\\s*(\\{#([^}]+)\\})?$")
      if (!is.na(matches[1,1])) {
        title <- matches[1,2]
        anchor <- if (!is.na(matches[1,4])) matches[1,4] else slugify(title)
        
        indent <- str_dup("  ", level - 1)
        toc_lines <- c(toc_lines, sprintf("%s- [%s](%s#%s)", indent, title, chapter_slug, anchor))
      }
    }
  }
}


# 4. Write to 00-toc.Rmd
writeLines(toc_lines, "00-toc.Rmd")
cat("✅ Global TOC written to 00-toc.Rmd\n")
