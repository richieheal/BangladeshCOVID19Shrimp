###########################################################
#
# Get the symbol for significance to add to the graph
#
############################################################
getSignificanceSymbol <- function(pValue){
  # Check the input
  if (!is.numeric(pValue)){
    message("You must supply a numerical value to GetSignificanceSymbol")
    return(NULL)
  }
  
  if (pValue > 1 | pValue < 0){
    message("You must supply a probability value between 0 and 1")
    return(NULL)
  }
  
  if (pValue > 0.050){
    return("NS")
  } else if (pValue <= 0.001){
    return("***")
  } else if (pValue <= 0.01){
    return("**")
  } else if (pValue <= 0.05){
    return("*")
  }
  
}