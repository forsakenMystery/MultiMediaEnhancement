view=VideoReader('C:\Users\forsakenMystery\Desktop\project\kendo.avi');
frameRate=view.FrameRate;
video = read(view,[1 Inf]);
[x,y,z,frame]=size(video);
base_temporal=zeros(x,y,z,ceil(frame/3));
enh1_temporal=zeros(x,y,z,ceil(frame/2));
enh2=zeros(x,y,z,frame);
j=1;
k=1;
for(i=1:1:frame)
if(mod(i,3)==1)
base_temporal(:,:,:,j)=video(:,:,:,i);
j=j+1;
end
if(mod(i,2)==1)
enh1_temporal(:,:,:,k)=video(:,:,:,i);
k=k+1;
end
enh2(:,:,:,i)=video(:,:,:,i);
end
v=VideoWriter('C:\Users\forsakenMystery\Desktop\project\kendo_temporal_base.avi');
v.FrameRate=ceil(frameRate/3);
open(v);
base_temporal = uint8(base_temporal);
writeVideo(v,base_temporal);
close(v);
v=VideoWriter('C:\Users\forsakenMystery\Desktop\project\kendo_temporal_enh1.avi');
v.FrameRate=ceil(frameRate/2);
open(v);
enh1_temporal = uint8(enh1_temporal);
writeVideo(v,enh1_temporal);
close(v);
v=VideoWriter('C:\Users\forsakenMystery\Desktop\project\kendo_temporal_enh2.avi');
v.FrameRate=frameRate;
open(v);
enh2 = uint8(enh2);
writeVideo(v,enh2);
close(v);