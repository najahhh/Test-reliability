function rod = Rod(adjacency, origin, destination)
  rod = 0;
  Paths = YenAlgo(adjacency, origin, destination,10); # K=10
  
  if size(Paths{1},2) > 0
    nPaths = size(Paths, 2);
    multPNotEkMin1 = 1;
    for k = 1:nPaths
      m = size(Paths{k}, 2) - 1;
      pEk = (1 - (1 / m)) ** m;
      pDk = multPNotEkMin1 * pEk;
      rod += pDk;
      multPNotEkMin1 *= (1 - pEk);
    endfor
  endif
    
endfunction