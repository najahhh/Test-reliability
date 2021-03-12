function nodal_R = Rnode(rodM); 
N=100;
 nodal_R=[];
for EST=1:N
%       Origin = EST;
%       Destination = (1:od_size);
    % N = od_size;
     nodal_R (EST,1) = ((1/(N-1)) * (sum(rodM (EST,:))));  
end
  
 endfunction