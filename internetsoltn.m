clc;
close all;
clear all;
zero= hex2dec('09E6'); one=hex2dec('09E7'); two=hex2dec('09E8');
three=hex2dec('09E9'); four=hex2dec('09EA'); five=hex2dec('09EB');
six=hex2dec('09EC'); seven=hex2dec('09ED'); eight=hex2dec('09EE');
nine=hex2dec('09EF');
fid = fopen('bengali.txt', 'w');
str = char([zero one two three four five six seven eight nine]);
encoded_str = unicode2native(str, 'UTF-8');
fwrite(fid, encoded_str, 'uint8');
fclose(fid);

winopen('bengali.txt');
clear all;