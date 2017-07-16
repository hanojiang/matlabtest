function write2txt( data,filename )
%将有符号十进制数或十六进制形式的数写入到文本中去，方便复制黏贴，并在每个数后添加一个逗号，以隔开
%   此处显示详细说明

if ~ischar(data(1))
    data=num2str(data');
else
    data=strcat('0x',data);
end
data=strcat(data,',');

fid=fopen(strcat(filename,'.txt'),'w');
for i=1:size(data,1)
    fprintf(fid,'%s',data(i,:));
end
fclose(fid);
end

