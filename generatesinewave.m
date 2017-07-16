%%
%产生指定频率的正弦波表q15格式,并写入文件中sinewavetable
fs=44100;
f=1.378*10^3;
n=0:(fs/f+1);
y=sin(2*pi*f/fs*n);
[~,~,zerocross]=extr(y,n);
last=zerocross(end);
if abs(y(last))<0.01
    last=last-1;
end
y=y(1:last);

% q15y=round(y*32767);
% q15y(q15y<0)=q15y(q15y<0)+65536;
% q15hex=dec2hex(q15y);

fixdata=float2fix(y,15,'hex')
fixdecdata=float2fix(y)

write2txt(fixdecdata,'sinewave');