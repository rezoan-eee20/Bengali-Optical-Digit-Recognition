function alphabet=give_unicode(input)
str = char(input);
alphabet= unicode2native(str, 'UTF-8');
%fwrite(fid, encoded_str, 'uint8');