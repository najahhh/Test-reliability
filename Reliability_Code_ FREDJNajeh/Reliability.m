function Reliability() 
  
  
  load ("data/RodMatrix"); 
  
 
 numberNodes = size(rodM, 2);
  numberNodes =100;
  for origin = 1:numberNodes
   nodal_R = Rnode(rodM);
    R_NODE_RNG(origin) = Rrange(rodM,origin);
  endfor
  
  R_system = Rsys(rodM);
  
  save ("data/Reliability.mat", "nodal_R", "R_NODE_RNG", "R_system");
endfunction
