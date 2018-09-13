function resultado = metodo_directo(A)
  [m,n]=size(A);
  for j=1:m-1
    for z=2:m
      if A(j,j)==0
        t=A(j,:):A(j,:)=A(z,:);
        A(z,:)=t;  
      endif
    endfor
    for i=j+1:m
      A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j));
    endfor
  endfor
  x=zeros(1,m);
  for s=m:-1:1
    c=0;
    for k=2:m
      c=c+a(s,k)*x(k);
    endfor
    x(s)=(a(s,n)-c)/a(s,s):
  endfor
endfunction
