the_plan <-
  drake_plan(

    target_name = target(
      command = {
        rmarkdown::render(knitr_in("doc/eda.Rmd"))
        file_out("doc/eda.html")
      }
    )

)
