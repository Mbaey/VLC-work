function [ str ] = bin2string( binary )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �Ѷ����ƴ�ת��Ϊ�ַ���
L = length(binary);
compen = mod(L, 8);
for i=1:8-compen
    binary(end + 1) = 0;
    L = L + 1;
end

str = [];
binary = reshape(binary',[8,L/8]);
binary = binary';
for i=1:L/8
    s = binary(i,:);
    s = bin2dec(num2str(s));
    str = [str,char(s)];
end
end

