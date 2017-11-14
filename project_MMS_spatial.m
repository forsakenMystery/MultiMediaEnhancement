view=VideoReader('C:\Users\forsakenMystery\Desktop\project\kendo.avi');
frameRate=view.FrameRate;
video = read(view,[1 Inf]);
[x,y,z,frame]=size(video);
base_spatial=zeros(ceil(x/2),ceil(y/2),z,frame);
enh1_spatial=zeros(ceil(x/sqrt(2)),ceil(y/sqrt(2)),z,frame);

for(i=1:1:frame)
base_spatial(:,:,:,i)=imresize(video(:,:,:,i),0.5);
enh1_spatial(:,:,:,i)=imresize(video(:,:,:,i),sqrt(2)/2);
end
v=VideoWriter('C:\Users\forsakenMystery\Desktop\project\kendo_spatial_base.avi');
open(v);
base_spatial = uint8(base_spatial);
writeVideo(v,base_spatial);
close(v);
v=VideoWriter('C:\Users\forsakenMystery\Desktop\project\kendo_spatial_enh1.avi');
open(v);
enh1_spatial = uint8(enh1_spatial);
writeVideo(v,enh1_spatial);
close(v);
v=VideoWriter('C:\Users\forsakenMystery\Desktop\project\kendo_spatial_enh2.avi');
open(v);
writeVideo(v,video);
close(v);