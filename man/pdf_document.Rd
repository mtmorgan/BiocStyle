\name{pdf_document}
\alias{pdf_document}

\title{Use Bioconductor style to format R Markdown PDF output}

\description{
  This function sets the Bioconductor style in PDF documents rendered using R Markdown v2.
}

\usage{
pdf_document(toc = TRUE, number_sections = TRUE, fig_width = NA, fig_height = NA,
             includes = NULL, ...,
             use_unsrturl = TRUE, toc_newpage = FALSE, titlecaps = TRUE)
}

\arguments{

  \item{toc}{logical(1), \code{TRUE} to include a table of contents in the output}

  \item{number_sections}{logical(1), \code{TRUE} to number section headings}
    
  \item{fig_width}{numeric(1), default width (in inches) for figures}
  
  \item{fig_height}{numeric(1), default width (in inches) for figures}
  
  \item{includes}{Named list of additional content to include within the document (typically created using the \code{\link{includes}} function).}
  
  \item{\dots}{Additional arguments passed to \code{\link[rmarkdown]{pdf_document}}.}
  
  \item{use_unsrturl}{logical(1), indicating that the \sQuote{unsrturl}
    style will be used (\code{\\bibliographystyle} command \emph{not}
    required).}
  
  \item{toc_newpage}{logical(1), \code{TRUE} to start the table of contents on a new page.}
  
  \item{titlecaps}{logical(1), \code{TRUE} to use the emphasize the first sentence in figure and table captions as title}
  
}

\value{
R Markdown output format to pass to \code{\link[rmarkdown]{render}}.
}

\author{
  Andrzej Oleś <andrzej.oles@embl.de>, 2014-2017
}

\seealso{
  \code{\link[BiocStyle]{html_document}}, \code{\link[BiocStyle]{md_document}}
}

\examples{
\dontrun{

# simple invocation
render("input.Rmd", BiocStyle::pdf_document())

# specify an option for latex engine
render("input.Rmd", BiocStyle::pdf_document(toc = FALSE))
}
}

\keyword{ manip }
