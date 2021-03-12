function yen = YenAlgo(adjacency, source, sink, K)
  yen{1} = Dijkstra(adjacency, source, sink);
  AdjLocal = adjacency;
  k = 1;
  
  for k = 2:K
    idx = Inf;
    for i = 1:(size(yen{k-1},2)-1)
     currentNode = yen{k-1}(i);
     Ri = yen{k-1}(1:i);
     for j = 1:(k-1)
       nj = 0;
       while(nj < size(yen{j},2) && currentNode ~= yen{j}(++nj))
       endwhile
       Rj = yen{j}(1:nj);
       if size(Ri,2) == size(Rj,2) && sum(ne(Ri(1,:), Rj(1,:))) == 0
         AdjLocal(currentNode,yen{j}(i+1)) = 0;
         AdjLocal(:,currentNode) = zeros(size(adjacency,2), 1);
       endif
     endfor
     Si = Dijkstra(AdjLocal, currentNode, sink);
     B{i} = [Ri(1,1:end-1) Si];
     if size(B{i},2) > 1 && size(B{i},2) < idx
       idx = i;
     endif
    endfor
    if idx == Inf || size(B{idx},2) < size(yen{k-1},2)
      return
    endif
    yen{k} = B{idx};
    AdjLocal = adjacency;
  endfor

endfunction