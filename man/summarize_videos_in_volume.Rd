% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarize_videos_in_volume.R
\name{summarize_videos_in_volume}
\alias{summarize_videos_in_volume}
\title{Summarize the number and hours of videos in a volume.}
\usage{
summarize_videos_in_volume(vol_id = 4, vb = FALSE)
}
\arguments{
\item{vol_id}{Selected volume number.}

\item{vb}{A Boolean value. If TRUE provides verbose output.}
}
\value{
Data frame with the vol_id, number of videos, and total hours.
}
\description{
Summarize the number and hours of videos in a volume.
}
\examples{
summarize_videos_in_volume()
}
