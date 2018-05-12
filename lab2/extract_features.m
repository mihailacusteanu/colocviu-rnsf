

function [Pt1] = extract_features (my_path,index, number_of_records)
files_path = dir(strcat(my_path,'*.wav'));
#number_of_records = size(files_path)(1); # nr total de fisiere
#number_of_records = number_of_records * 0.8; #reducem lotul de invatare la 80% pentru a avea si un lot de invatare
Pt1=[];

 Fe = 44100;
    for(i=index:number_of_records)
      current_analog_record = audioread([my_path files_path(i).name]);
      current_analog_record =current_analog_record(:,1);
      current_fft_record = abs(fft(current_analog_record));
      N=size(current_fft_record,1);
      xPosAt500hz =round((500*N)/Fe);
      xPosAt1000hz =round((1000*N)/Fe);
      
      P1 = sum((current_fft_record(1:xPosAt500hz).^2))/xPosAt500hz ;
     
      P2 = sum((current_fft_record(xPosAt500hz:xPosAt1000hz).^2))/(xPosAt1000hz-xPosAt500hz);
      
      Pt1 = [Pt1; P1 P2];
    end


endfunction
