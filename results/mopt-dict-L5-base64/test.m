fid = fopen('plot_data');
    %        ^^^^^^^^^^----- your filename
data = textscan(fid, '%d %d %d %d %d %d %f%% %d %d %d %f','Delimiter',',','CommentStyle','#');
fid = fclose(fid);

timestamp = data{:,1}; %timestamp in seconds
timestamp = timestamp - timestamp(1);
%size(timestamp) 
plot(timestamp, data{:,8})