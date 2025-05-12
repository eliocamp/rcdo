## This file was created automatically, do not edit by hand.
#' Line graph plot
#'
#' This operator generates line graph plots. The data for the plot is read from infiles. The result is written to outfile. The default output file format is postscript, this can be changed with the device parameter.  Here is a list of all graph plot parameters:  Keyname    &amp; Type    &amp; Description device     &amp; STRING  &amp; Output device (ps, eps, pdf, png, gif, gif_animation, jpeg, svg, kml) ymin       &amp; FLOAT   &amp; Minimum value of the y-axis data ymax       &amp; FLOAT   &amp; Maximum value of the y-axis data linewidth  &amp; INT     &amp; Linewidth (default 8) stat       &amp; STRING  &amp; &quot;TRUE&quot; or &quot;FALSE to switch on the mean computation. Default is &quot;FALSE&quot;. &amp;         &amp; Will be overridden to &quot;FALSE if input files have unequal number of time &amp;         &amp; steps or different start/end times. sigma      &amp; FLOAT   &amp; Standard deviation value for generating shaded back ground around the mean value. &amp;         &amp; To be used in conjunction with 'stat=&quot;TRUE&quot;' obsv       &amp; STRING  &amp; To indicate if the input files have an observation data, by setting to &quot;TRUE&quot;. &amp;         &amp; Default value is &quot;FALSE&quot;. The observation data should be the first file in the &amp;         &amp; input file list. The observation data is always plotted in black colour. 
#'
#' 
#'
#' 
#'
#' @name maggraph
NULL
