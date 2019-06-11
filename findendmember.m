function [e1,e2]=findendmember(H)
h1=H(1,:)';h2=H(2,:);
k=2;
while (h1(k)-h1(k-1))*(h1(k)-h1(k+1))<0
    k=k+1;
end
e1=k;
k=k+2;
while (h1(k)-h1(k-1))*(h1(k)-h1(k+1))<0
    k=k+1;
end
e2=k;
end