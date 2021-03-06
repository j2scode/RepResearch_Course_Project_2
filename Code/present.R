# Coursera Data Science Specialization
# Reproducible Research
# Course Project 2
# Author: John James
# Date: March 7, 2016
# present.R


#############################################################################
##                          PRESENTATION FUNCTIONS                         ##
#############################################################################

## ---- barPlotFuncs
barPlotFatalities <- function(x) {
    b <- ggplot(x,aes(x=reorder(EVTYPE, -FATALITIES), y=FATALITIES)) + 
      geom_bar(stat="identity", fill = "blue") +
      labs(title = "Fatalities by Event Type") +
      labs(x = "Event Type") +
      labs(y = "Fatalities") +
      theme_bw()
    return(b)
}


barPlotInjuries <- function(x) {
    b <- ggplot(x,aes(x=reorder(EVTYPE, -INJURIES), y=INJURIES)) + 
      geom_bar(stat="identity", fill = "blue") +
      labs(title = "Injuries by Event Type") +
      labs(x = "Event Type") +
      labs(y = "Injuries") +
      theme_bw(base_family = "Sans")
    return(b)
}

barPlotHealthIncidents <- function(x) {
    b <- ggplot(x,aes(x=reorder(EVTYPE, -TOTALHEALTH), y=TOTALHEALTH)) + 
      geom_bar(stat="identity", fill = "red") +
      labs(title = "Health Incidents by Event Type") +
      labs(x = "Event Type") +
      labs(y = "Health Incidents") +
      theme_bw()
    return(b)
}

barPlotPropertyDamage <- function(x) {
    b <- ggplot(x,aes(x=reorder(EVTYPE, -PROPDMG), y=(PROPDMG/1000))) + 
      geom_bar(stat="identity", fill = "blue") +
      labs(title = "Property Damage by Event Type ($000s)") +
      labs(x = "Event Type") +
      labs(y = "Property Damage") +
      theme_bw()
    return(b)
}


barPlotCropDamage <- function(x) {
    b <- ggplot(x,aes(x=reorder(EVTYPE, -CROPDMG), y=(CROPDMG/1000))) + 
      geom_bar(stat="identity", fill = "blue") +
      labs(title = "Crop Damage by Event Type ($000s)") +
      labs(x = "Event Type") +
      labs(y = "Crop Damage") +
      theme_bw()
    return(b)
}


barPlotTotalDamage <- function(x) {
    b <- ggplot(x,aes(x=reorder(EVTYPE, -TOTALDMG), y=(TOTALDMG/1000))) + 
      geom_bar(stat="identity", fill = "red") +
      labs(title = "Total Damage by Event Type ($000s)") +
      labs(x = "Event Type") +
      labs(y = "Total Damage") +
      theme_bw()
    return(b)
}
## ---- end


## ---- trendLineFuncs
trendFatalities <- function(x) {
    t <- ggplot(data=x, aes(x=as.numeric(x$YEAR), y=FATALITIES, group=EVTYPE, colour=EVTYPE)) +
    geom_line() +
    labs(title = "Fatalities by Event Type") +
    labs(x = "Event Type") +
    labs(y = "Fatalities") +
    scale_colour_discrete(name="Event Type") +
    theme_bw()      
    
    return(t)
}

trendInjuries <- function(x) {
  t <- ggplot(data=x, aes(x=as.numeric(x$YEAR), y=INJURIES, group=EVTYPE, colour=EVTYPE)) +
    geom_line() +
    labs(title = "Injuries by Event Type") +
    labs(x = "Event Type") +
    labs(y = "Injuries") +
    scale_colour_discrete(name="Event Type") +
    theme_bw()      
  
  return(t)
}



trendHealth <- function(x) {
  t <- ggplot(data=x, aes(x=as.numeric(x$YEAR), y=TOTALHEALTH, group=EVTYPE, colour=EVTYPE)) +
    geom_line() +
    labs(title = "Health Incidents by Event Type") +
    labs(x = "Event Type") +
    labs(y = "Health Incidents") +
    scale_colour_discrete(name="Event Type") +
    theme_bw()      
  
  return(t)
}


trendPropDmg <- function(x) {
  t <- ggplot(data=x, aes(x=as.numeric(x$YEAR), y=(PROPDMG/1000), group=EVTYPE, colour=EVTYPE)) +
    geom_line() +
    labs(title = "Property Damage by Event Type ($000s)") +
    labs(x = "Event Type") +
    labs(y = "Property Damage") +
    scale_colour_discrete(name="Event Type") +
    theme_bw()      
  
  return(t)
}


trendCropDmg <- function(x) {
  t <- ggplot(data=x, aes(x=as.numeric(x$YEAR), y=(CROPDMG/1000), group=EVTYPE, colour=EVTYPE)) +
    geom_line() +
    labs(title = "Crop Damage by Event Type ($000s)") +
    labs(x = "Event Type") +
    labs(y = "Crop Damage") +
    scale_colour_discrete(name="Event Type") +
    theme_bw()      
  
  return(t)
}


trendTotalDmg <- function(x) {
  t <- ggplot(data=x, aes(x=as.numeric(x$YEAR), y=(TOTALDMG/1000), group=EVTYPE, colour=EVTYPE)) +
    geom_line() +
    labs(title = "Total Damage by Event Type ($000s)") +
    labs(x = "Event Type") +
    labs(y = "Total Damage") +
    scale_colour_discrete(name="Event Type") +
    theme_bw()      
  
  return(t)
}
## ---- end