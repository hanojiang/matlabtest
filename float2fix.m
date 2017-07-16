function [ fixdata ] = float2fix( floatdata,qformat,fixformat )
%该函数将浮点小数转换为定点形式，提供两种形式 十进制有符号和十六进制形式的输出
%   此处显示详细说明
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

