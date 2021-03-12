function R_system =  Rsys (rodM,adjacency); 
  od_size =100;
  N=100;
  for SYS = 1:od_size
    SUMMATION_P_od (SYS,1) = sum(rodM (SYS,:));
endfor

    SUMMATION_P_od_ALL = sum(SUMMATION_P_od);
    R_system = ((1/(N*(N-1))) * (SUMMATION_P_od_ALL));
    
    endfunction