function rodM = RodMatrix(adjacency)
  numberNodes = size(adjacency,2);
  rodM = zeros(numberNodes,numberNodes);
  for origin = 1:numberNodes
    for destination = 1:numberNodes
      [origin destination] #in order to display the advancement
      if destination ~= origin
        rodM(origin, destination) = Rod(adjacency, origin, destination);        
      endif
    endfor
  endfor
  save ("data/RodMatrix.mat", "rodM");
endfunction