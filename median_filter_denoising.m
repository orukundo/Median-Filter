%% Sample code function for image denoising using the median filter
%% @author: orukundo@gmail.com - Olivier Rukundo

function output_image = median_filter_denoising(input_image)   
output_image = zeros(size(input_image));                       
zp_input_image = padarray(input_image,[1 1]);                
[row, col] = size(zp_input_image);                             
    for i = 2:row-1                                            
       for j = 2:col-1                                          
           window3x3 = [...
                         zp_input_image(i-1,j-1),zp_input_image(i-1,j),zp_input_image(i-1,j+1),...    
                         zp_input_image(i,j-1),zp_input_image(i,j),zp_input_image(i,j+1),...          
                         zp_input_image(i+1,j-1),zp_input_image(i+1,j),zp_input_image(i+1,j+1),...
                        ];
           window3x3 = sort(window3x3);                                  
           output_image(i-1,j-1) = window3x3(5);             
       end
    end
output_image = uint8(output_image);                            
end