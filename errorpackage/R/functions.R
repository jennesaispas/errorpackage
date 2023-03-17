
sqrt.2 = function(x){
  if (x<0){rlang::abort(message = "negative input, NA introduced!")}
  else {
    return(sqrt(x))
  }
}


log.2 = function(x){
  if (x<=0){rlang::abort(message = "negative input, NA introduced!")}
  else {
    return(log(x))
  }
}

f_operator = function(f){
  force(f)
  function(a){
    if (a>0){
      f(a)
    } else {
      cnd1=catch_cnd(rlang::abort(.subclass = "invalid_input",
                           message = "negative input, NA introduced!",
                           invalid_input=a))
    }
  }
}
