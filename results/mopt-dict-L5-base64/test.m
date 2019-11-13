fid_mopt = fopen('plot_data');
fid_afl = fopen('plot_data_afl');
    %        ^^^^^^^^^^----- your filename
data_mopt = textscan(fid_mopt, '%d %d %d %d %d %d %f%% %d %d %d %f','Delimiter',',','CommentStyle','#');
data_afl = textscan(fid_afl, '%d %d %d %d %d %d %f%% %d %d %d %f','Delimiter',',','CommentStyle','#');
fid_mopt = fclose(fid_mopt);
fid_afl = fclose(fid_afl);

timestamp1 = data_mopt{:,1}; %timestamp in seconds
timestamp1 = (timestamp1 - timestamp1(1))/60; %timestamp in minute
size(timestamp1) 
timestamp2 = data_afl{:,1}; %timestamp in seconds
timestamp2 = (timestamp2 - timestamp2(1))/60; %timestamp in minute
size(timestamp2) 

figure(1)
plot(timestamp1, data_mopt{:,8})
hold on
plot(timestamp2, data_afl{:,8})
title('Unique bugs found - base64 with non empty seeds')
xlabel('minutes')
ylabel('unique bugs found')
legend('MOpt', 'AFL')