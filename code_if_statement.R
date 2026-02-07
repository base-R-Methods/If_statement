# Basic if

crp <- 50  # mg/l
if ( crp > 10 ) {
  
  i_s <-"Significant inflammation"
  print(i_s)
}

# if with else

anti_ccp <- 50
cutoff <- 20

if ( anti_ccp >= cutoff ) {
  
  message("Anti-CCP positive")
  
 } else {
  
  message("Anti-CCP negative")

}

# if-else if-else

ferritin <- 200

if ( ferritin < 15 ) {
  
   message("IRON DEFICIENCY")
  
} else if (ferritin <=150) {
  
  message("Normal Range")
  
  } else {
  
  message("Possible overload or inflammation")
  
}


# Nested if

ana_positive <- TRUE # niveau 1
anti_DNA <- TRUE # niveau 2

# typeof(ana_positive)
# typeof(anti_DNA)

if ( ana_positive ) {
  
  if( anti_DNA ) {
    
    "SLE HIGH PROBABILITY"
    
  } else {
     
    "NON SPECIFIC ANA"
  }

}

# One-line if

platelet <- 950 

if (platelet > 800 ) message(" EXTREME THROMBOCYTOSIS ")
  
# if with logical operator (&,|,!)
# & == AND

vs <- 10
crp <- 2

if ( vs > 40 & crp > 10 ) {
  
  warning("Active systemic inflammation")
  
}

# | == OR

if ( vs > 40 | crp > 10 ) {
  
  warning("Active systemic inflammation")
  
}

# ! == NOT

if ( !(crp > 5) ) {
  
  warning("NO ACUTE PHASE RESPONSE")
  
}


# if with short-circuit operators(&&,||)

# &&
sample_ok <- TRUE
control_valid <- TRUE
if (  sample_ok && control_valid  ) {
  
  "RESULTS RELEASED"
  
}
  
# ||

crp <- 55
vs <- 20

if ( crp > 40 || vs > 10) {
  
  inflammation_flag <- "Inflammation flag"
  inflammation_flag
  
}

# Returning values from if

hla_mfi <- 6500

risk <- if (hla_mfi > 5000 ) "HIGH DSA RISK" else "LOW DSA RISK"
risk

# if inside a function()

classify_CD4 <- function( cd4 ) {
  
  if (cd4 < 200) {
    return("SEVERE IMMUNUSUPPRESSION")
  } else {
    return("NON SEVERE")
    
  }
  
} 

classify_CD4(300)


# if with stop()


serum_volume <- 80 # ul

if (serum_volume < 100 ){
  
  stop("INSUFFICIENT SAMPLE VOLUME")
  
}

# Vectorized alternative : ifelse

crp <- c(50,40,20,5,2)  # mg/l
crp
str(crp)

if ( crp > 10 ) {
  
  i_s <-"Significant inflammation" # Erreur
  print(i_s)
  
}

od_values <- c(0.2,0.7,1.3,0.4)

ifelse(od_values >= 0.5 , "POSITIVE", "NEGATIVE")
  
ifelse(od_values >= 1.2 ,"VERY POSITIVE",ifelse( od_values >= 0.9  ," POSITIVE","NEGATIVE"))

# if inside loops = Itération

wbc <- c(4500,12000,8000,15000)

for ( i in  wbc ) {
  
  if( i > 11000){
    print("LEUKOCYTOSIS ALERT")
  } else {
    print("NORMAL RANGE")
  }
}

# Common mistakes with if (Vectors,NA)

# Vectors = Vectorized alternative : ifelse
# NA :

crp <- c(10,20,50,60,80,NA)
crp

if (  any(crp > 10) ) {
  
  i_s <-"Significant inflammation" # Erreur
  print(i_s)
}

# End

