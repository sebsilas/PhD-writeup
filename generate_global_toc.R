# -------------------------------
# generate_global_toc.R
# Auto-creates a TOC page for bookdown without bookdown.yml
# -------------------------------

library(stringr)

# 1. Get all .Rmd files (excluding hidden or helper files)
rmd_files <- list.files(pattern = "^[^_].*\\.Rmd$")  # skips _main.Rmd, _output.Rmd, etc.
rmd_files <- sort(rmd_files)  # ensure predictable order

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
      title <- str_trim(str_remove(line, "^#{1,3} "))
      anchor <- slugify(title)
      
      indent <- str_dup("  ", level - 1)
      toc_lines <- c(toc_lines, sprintf("%s- [%s](%s#%s)", indent, title, chapter_slug, anchor))
    }
  }
}

# 4. Write to 00-toc.Rmd
writeLines(toc_lines, "00-toc.Rmd")
cat("✅ Global TOC written to 00-toc.Rmd\n")
