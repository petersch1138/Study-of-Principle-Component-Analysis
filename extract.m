function [x,y]= extract(cam,n,view)
% This function extracts the x and y position of the mass system at each
% frame.
cambw = zeros(480,640,n);
x=zeros(1,n);
y=zeros(1,n);
% figure(1)
for j=1:n
    cambw(:,:,j)=(cam(:,:,1,j)+cam(:,:,2,j)+cam(:,:,3,j))/3;
    frame=flipud(cambw(:,:,j));
    
    if view==1
        frame(:,1:200)=0;
        frame(330:size(frame,1),:)=0;
        frame(:,500:size(frame,2))=0;

    elseif view==3
        frame(350:size(frame,2),:)=0;
        frame(:,1:200)=0;
    end
    
    [val, i]=max(frame(:));
    [ycoord,xcoord]=ind2sub(size(frame),i);
    x(j)=xcoord;
    y(j)=ycoord;
    
%     pcolor(frame); colormap gray; shading interp
%     pause(0.001)
end