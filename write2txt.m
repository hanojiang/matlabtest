function write2txt( data,filename )
%���з���ʮ��������ʮ��������ʽ����д�뵽�ı���ȥ�����㸴�����������ÿ���������һ�����ţ��Ը���
%   �˴���ʾ��ϸ˵��

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

