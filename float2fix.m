function [ fixdata ] = float2fix( floatdata,qformat,fixformat )
%�ú���������С��ת��Ϊ������ʽ���ṩ������ʽ ʮ�����з��ź�ʮ��������ʽ�����
%   �˴���ʾ��ϸ˵��
if(nargin<2) 
    qformat=15;
    fixformat='dec';
end

decdata=round(floatdata.*(2^qformat));
decdata(decdata==2^qformat)=2^qformat-1;
switch fixformat
    case 'dec'
        fixdata=decdata;
    case 'hex'
        decdata(decdata<0)=decdata(decdata<0)+2^(1+qformat);
        fixdata=dec2hex(decdata);
end

end

