## This file was created automatically, do not edit by hand.
#' Lat/Lon plot
#'
#' The operators in this module generates 2D Lon/Lat plots. The data for the plot is read from infile. Only data on rectilinear Lon/Lat grids are supported. The output file will be named &lt;obase&gt;_&lt;param&gt;.&lt;device&gt; where param is the parameter name and device is the device name. The default output file format is postscript, this can be changed with the device parameter. The type of the plot depends on the choosen operator.  Here is a list of all common plot parameters:  Keyname     &amp; Type    &amp; Description device      &amp; STRING  &amp; Output device (ps, eps, pdf, png, gif, gif_animation, jpeg, svg, kml) projection  &amp; STRING  &amp; Projection (cylindrical, polar_stereographic, robinson, mercator) style       &amp; STRING  &amp; Contour line style (solid, dash, dot, chain_dash, chain_dot) min         &amp; FLOAT   &amp; Minimum value max         &amp; FLOAT   &amp; Maximum value lon_max     &amp; FLOAT   &amp; Maximum longitude of the image lon_min     &amp; FLOAT   &amp; Minimum longitude of the image lat_max     &amp; FLOAT   &amp; Maximum latitude of the image lat_min     &amp; FLOAT   &amp; Minimum latitude of the image count       &amp; INTEGER &amp; Number of Contour levels / Colour bands interval    &amp; FLOAT   &amp; Interval in data units between two bands lines list        &amp; INTEGER &amp; List of levels to be plotted RGB         &amp; STRING  &amp; TRUE or FALSE, to  indicate, if the input colour is in RGB format step_freq   &amp; INTEGER &amp; Frequency of time steps to be considered for making the animation &amp;         &amp; (device=gif_animation). Default value is &quot;1&quot; (all time steps). &amp;         &amp; Will be ignored if input file has multiple variables. file_split  &amp; STRING  &amp; TRUE or FALSE, to split the output file for each variable, if input has &amp;         &amp; multiple variables. Default value is &quot;FALSE&quot;. Valid only for &quot;PS&quot; format. 
#'
#' @details
#'     contour  Contour plot
#'              The operator contour generates the discrete contour lines of the input field values.
#'              The following additional parameters are valid for contour operator,
#'              module in addition to the common plot parameters:
#'              
#'               Keyname      &amp; Type    &amp; Description      
#'               colour       &amp; STRING  &amp; Colour for drawing the contours
#'               thickness    &amp; FLOAT   &amp; Thickness of the contour line
#'               style        &amp; STRING  &amp; Line Style can be \&quot;SOLID\ \&quot;DASH\ \&quot;DOT\ \&quot;CHAIN_DASH\
#'                            &amp;         &amp; \&quot;CHAIN_DOT\&quot;
#'     shaded   Shaded contour plot
#'              The operator shaded generates the filled contours of the given input field values.
#'              The following additional parameters are valid for shaded contour and gridfill operator,
#'              in addition to the common plot parameters.
#'              
#'               Keyname      &amp; Type    &amp; Description      
#'               colour_min   &amp; STRING  &amp; Colour for the Minimum colour band
#'               colour_max   &amp; STRING  &amp; Colour for the Minimum colour band
#'               colour_triad &amp; STRING  &amp; Direction of colour sequencing for shading \&quot;CW\&quot; or \&quot;ACW\
#'                            &amp;         &amp; to denote \&quot;clockwise\&quot; and \&quot;anticlockwise\&quot; respectively.
#'                            &amp;         &amp; To be used in conjunction with \&quot;colour_min\ \&quot;colour_max\&quot;
#'                            &amp;         &amp; options. Default is \&quot;ACW\&quot;
#'               colour_table &amp; STRING  &amp; File with user specified colours with the format as
#'              
#'              Example file for 6 colours in RGB format:
#'              	6
#'              	RGB(0.0;0.0;1.0)
#'              	RGB(0.0;0.0;0.5)
#'              	RGB(0.0;0.5;0.5)
#'              	RGB(0.0;1.0;0.0)
#'              	RGB(0.5;0.5;0.0)
#'              	RGB(1.0;0.0;0.0)
#'              
#'     grfill   Shaded gridfill plot
#'              The operator grfill is similar to satellite imaging and shades each cell (pixel) according
#'              to the value of the field at that cell.
#' 
#'
#' @section Note: 
#' All colour parameter can be either standard name or in RGB format. The valid standard name strings for \&quot;colour\&quot; are:  \&quot;red\ \&quot;green\ \&quot;blue\ \&quot;yellow\ \&quot;cyan\ \&quot;magenta\ \&quot;black\ \&quot;avocado\ \&quot;beige\ \&quot;brick\ \&quot;brown\ \&quot;burgundy\ \&quot;charcoal\ \&quot;chestnut\ \&quot;coral\ \&quot;cream\ \&quot;evergreen\ \&quot;gold\ \&quot;grey\ \&quot;khaki\ \&quot;kellygreen\ \&quot;lavender\ \&quot;mustard\ \&quot;navy\ \&quot;ochre\ \&quot;olive\ \&quot;peach\ \&quot;pink\ \&quot;rose\ \&quot;rust\ \&quot;sky\ \&quot;tan\ \&quot;tangerine\ \&quot;turquoise\ \&quot;violet\ \&quot;reddishpurple\ \&quot;purplered\ \&quot;purplishred\ \&quot;orangishred\ \&quot;redorange\ \&quot;reddishorange\ \&quot;orange\ \&quot;yellowishorange\ \&quot;orangeyellow\ \&quot;orangishyellow\ \&quot;greenishyellow\ \&quot;yellowgreen\ \&quot;yellowishgreen\ \&quot;bluishgreen\ \&quot;bluegreen\ \&quot;greenishblue\ \&quot;purplishblue\ \&quot;bluepurple\ \&quot;bluishpurple\ \&quot;purple\ \&quot;white\&quot;
#'
#' @returns
#' Operators that output one or more files return a character vector to the
#' output files.
#'
#' Operators that output an indefinite number of files return a string with the
#' basename of the files.
#'
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name magplot
NULL
