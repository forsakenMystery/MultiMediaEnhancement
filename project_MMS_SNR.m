view=VideoReader('C:\Users\forsakenMystery\Desktop\project\kendo.avi');
frameRate=view.FrameRate;

video = read(view,[1 Inf]);
[x,y,z,frame]=size(video);


v=VideoWriter('C:\Users\forsakenMystery\Desktop\project\kendo_snr_base.avi');
v.Quality=50;
open(v);
writeVideo(v,video);
close(v);
v=VideoWriter('C:\Users\forsakenMystery\Desktop\project\kendo_snr_enh1.avi');
v.Quality=75;
open(v);
writeVideo(v,video);
close(v);
v=VideoWriter('C:\Users\forsakenMystery\Desktop\project\kendo_snr_enh2.avi');
v.Quality=100;
open(v);
writeVideo(v,video);
close(v);