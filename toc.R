# -------------------------------
# generate_global_toc.R
# Auto-creates a TOC page for bookdown without bookdown.yml
# -------------------------------

library(stringr)

# 1. Get all Rmd files (except _ prefix and exclude index and TOC)
rmd_files <- list.files(pattern = "^[^_].*\\.Rmd$")
rmd_files <- sort(setdiff(rmd_files, c("index.Rmd", "00-toc.Rmd", "_toc_content.Rmd")))
rmd_files <- c("index.Rmd", rmd_files)  # Make sure index is first

# 2. Slugify function to create anchors
slugify <- function(text) {
  text |>
    str_to_lower() |>
    str_replace_all("[^a-z0-9\\s-]", "") |>
    str_trim() |>
    str_replace_all("\\s+", "-")
}

# 3. Initialize TOC lines
chapter_counter <- 0
toc_lines <- c()

# 4. Collect TOC lines from each file
for (file in rmd_files) {
  lines <- readLines(file, warn = FALSE)
  chapter_slug <- str_replace(file, "\\.Rmd$", ".html")
  
  in_chunk <- FALSE
  
  for (line in lines) {
    # Detect code chunk boundaries
    if (str_detect(line, "^```")) {
      in_chunk <- !in_chunk
      next
    }
    
    if (in_chunk) next
    
    # Match markdown headers up to ### (level 3)
    if (str_detect(line, "^#{1,3} ")) {
      level <- str_count(str_extract(line, "^#+"), "#")
      
      matches <- str_match(line, "^#{1,3}\\s+(.*?)\\s*(\\{#([^}]+)\\})?$")
      if (!is.na(matches[1, 1])) {
        title <- matches[1, 2]
        anchor <- if (!is.na(matches[1, 4])) matches[1, 4] else slugify(title)
        
        indent <- str_dup("  ", level - 1)
        
        # Number only top-level chapters
        prefix <- if (level == 1) {
          chapter_counter <- chapter_counter + 1
          sprintf("%d. ", chapter_counter)
        } else {
          ""
        }
        
        toc_lines <- c(toc_lines, sprintf("%s- [%s%s](%s#%s)", indent, prefix, title, chapter_slug, anchor))
      }
    }
  }
}

# 5. Clean and write to _toc_content.Rmd
if (file.exists("_toc_content.Rmd")) file.remove("_toc_content.Rmd")
writeLines(toc_lines, "_toc_content.Rmd")

# 6. Print preview to console
cat("✅ Global TOC written to _toc_content.Rmd\n\n")
cat("Preview of TOC entries:\n")
cat(paste(toc_lines, collapse = "\n"))
cat("\n")
