function [ischema] = reconstruct(c,Num)
    
    Period=floor(length(c)/Num);
    
    d=c(1:Period:length(c));

    descriptors=fft(d);

    ischema=ifft(descriptors);
end

