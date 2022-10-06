function [j] = binornd3204(N,P)
p=(1-P)^N;
if p==0
    j=round(N*P+sqrt(N*P*(1-P))*randn);
else
    U=rand();j=0;R=P/(1-P);F=p;
    while U>F
        p=p*R*(N-j)/(j+1); F=F+p; j=j+1;
    end
    
end
end