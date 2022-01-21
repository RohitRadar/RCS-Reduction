clc;
clear all;
close all;

filename = ['E:\Desktop\Now\rcs\cst\hgiddens\sweep\mag\10x1.txt'];
file = fopen(filename,'r');
C = textscan(file,'%f%f','MultipleDelimsAsOne',true, 'Delimiter','[;');
fclose(file);
freq = C{1};
rcs_db = zeros(length(freq),1);

l = readmatrix('E:\Desktop\Now\rcs\cst\hgiddens\sweep\elementlength.csv');
w = readmatrix('E:\Desktop\Now\rcs\cst\hgiddens\sweep\elementwidth.csv');

for i=1:1:length(freq)
    rcs=0;
    for j=1:1:15
        for k=1:1:15
            filename = ['E:\Desktop\Now\rcs\cst\hgiddens\sweep\mag\' num2str(l(j,k)) 'x' num2str(w(j,k)) '.txt'];
            file = fopen(filename,'r');
            C = textscan(file,'%f%f','MultipleDelimsAsOne',true, 'Delimiter','[;');
            fclose(file);
            phase = C{2}(i);
            filename = ['E:\Desktop\Now\rcs\cst\hgiddens\sweep\phase\' num2str(l(j,k)) 'x' num2str(w(j,k)) '.txt'];
            file = fopen(filename,'r');
            C = textscan(file,'%f%f','MultipleDelimsAsOne',true, 'Delimiter','[;');
            fclose(file);
            mag = C{2}(i);
            rcs = rcs + mag*exp(1i*phase);
        end
    end
    rcs_db(i) = 10*log10(power(abs(rcs/225),2));
end
plot(freq,rcs_db);