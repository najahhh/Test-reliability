function    R_NODE_RNG = Rrange (rodM, origin); 
 od_size=100;


  R_NODE_RNG = Inf;
  maxRod = 0;
  minRod = Inf;
  od_size = size(rodM,2);
 
 for destination = 1:od_size
    if destination ~= origin
      rod = rodM(origin, destination);
      if rod ~= 0
        if rod > maxRod
          maxRod = rod;
        endif        
        if rod < minRod
          minRod = rod;
        endif
      endif
    endif
  endfor

  
  if maxRod > minRod
 R_NODE_RNG = maxRod - minRod;
endif

  
  
  
  
  endfunction