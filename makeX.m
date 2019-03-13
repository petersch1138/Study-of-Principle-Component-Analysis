function X = makeX(cam1,cam2,cam3)
% This function constructs the X matrix containing the x and y position
% data from each camera for the given case.
n=min([size(cam1,4),size(cam2,4),size(cam3,4)]);

[xa,ya]=extract(cam1,n,1);
[xb,yb]=extract(cam2,n,2);
[xc,yc]=extract(cam3,n,3);

X = [xa; ya; xb; yb; xc; yc];