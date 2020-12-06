function letter=read_letter(imagn,num_letras)
% Computes the correlation between template and input image
% and its output is a string containing the letter.
% Size of 'imagn' must be 42 x 24 pixels
% Example:
% imagn=imread('D.bmp');
% letter=read_letter(imagn)
zero= hex2dec('09E6'); one=hex2dec('09E7'); two=hex2dec('09E8');
three=hex2dec('09E9'); four=hex2dec('09EA'); five=hex2dec('09EB');
six=hex2dec('09EC'); seven=hex2dec('09ED'); eight=hex2dec('09EE');
nine=hex2dec('09EF');
shunno=give_unicode(zero); ek=give_unicode(one); dui=give_unicode(two);
tin=give_unicode(three); char=give_unicode(four); pach=give_unicode(five);
choy=give_unicode(six); saath=give_unicode(seven); att=give_unicode(eight);
noy=give_unicode(nine);

global templates
comp=[ ];
for n=1:num_letras
    sem=corr2(templates{1,n},imagn);
    comp=[comp sem];
end
vd=find(comp==max(comp));
%*-*-*-*-*-*-*-*-*-*-*-*-*-
if vd==1
    letter='A';
elseif vd==2
    letter='B';
elseif vd==3
    letter='C';
elseif vd==4
    letter='D';
elseif vd==5
    letter='E';
elseif vd==6
    letter='F';
elseif vd==7
    letter='G';
elseif vd==8
    letter='H';
elseif vd==9
    letter='I';
elseif vd==10
    letter='J';
elseif vd==11
    letter='K';
elseif vd==12
    letter='L';
elseif vd==13
    letter='M';
elseif vd==14
    letter='N';
elseif vd==15
    letter='O';
elseif vd==16
    letter='P';
elseif vd==17
    letter='Q';
elseif vd==18
    letter='R';
elseif vd==19
    letter='S';
elseif vd==20
    letter='T';
elseif vd==21
    letter='U';
elseif vd==22
    letter='V';
elseif vd==23
    letter='W';
elseif vd==24
    letter='X';
elseif vd==25
    letter='Y';
elseif vd==26
    letter='Z';
    %*-*-*-*-*
elseif vd==27
    letter=ek;
elseif vd==28
    letter=dui;
elseif vd==29
    letter=tin;
elseif vd==30
    letter=char;
elseif vd==31
    letter=pach;
elseif vd==32
    letter=choy;
elseif vd==33
    letter=saath;
elseif vd==34
    letter=att;
elseif vd==35
    letter=noy;
else
    letter=shunno;
end

