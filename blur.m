function output = blur(img,w)
image = double(img);
[rows,columns] = size(image);
output = uint8(zeros([rows,columns]));
for row =1:rows
    for column = 1:columns
        if row + w <= rows && column + w <= columns
        if row - w > 0 && column - w > 0
            a = image(row-w:row+w,column-w:column+w);
            b = uint8(mean(a(:)));
            output(row,column) = b;
        elseif row - w <= 0 || column - w <= 0
            if row - w <= 0 && column - w > 0
                a = image(w:row+w,column - w:column+w);
                b = uint8(mean(a(:)));
                output(row,column) = b;
            elseif row - w > 0 && column - w <= 0
                a = image(row - w:row+w,w:column+w);
                b = uint8(mean(a(:)));
                output(row,column) = b;
            elseif row - w <= 0 && column - w <= 0
                a = image(w:row+w,w:column+w);
                b = uint8(mean(a(:)));
                output(row,column) = b;
            end
        end                              
        elseif row + w > rows || column + w > columns
            if row + w > rows && column + w <= columns
           if row - w > 0 && column - w > 0
            a = image(row-w:row,column-w:column+w);
            b = uint8(mean(a(:)));
            output(row,column) = b;
        elseif row - w <= 0 || column - w <= 0
            if row - w <= 0 && column - w > 0
                a = image(w:row,column - w:column+w);
                b = uint8(mean(a(:)));
                output(row,column) = b;
            elseif row - w > 0 && column - w <= 0
                a = image(row - w:row,w:column+w);
                b = uint8(mean(a(:)));
                output(row,column) = b;
            elseif row - w <= 0 && column - w <= 0
                a = image(w:row,w:column+w);
                b = uint8(mean(a(:)));
                output(row,column) = b;
            end
           end
            elseif row + w <= rows && column + w > columns                       
                if row - w > 0 && column - w > 0
            a = image(row-w:row+w,column-w:column);
            b = uint8(mean(a(:)));
            output(row,column) = b;
        elseif row - w <= 0 || column - w <= 0
            if row - w <= 0 && column - w > 0
                a = image(w:row+w,column - w:column);
                b = uint8(mean(a(:)));
                output(row,column) = b;
            elseif row - w > 0 && column - w <= 0
                a = image(row - w:row+w,w:column);
                b = uint8(mean(a(:)));
                output(row,column) = b;
            elseif row - w <= 0 && column - w <= 0
                a = image(w:row+w,w:column);
                b = uint8(mean(a(:)));
                output(row,column) = b;
            end
                end
            elseif row + w > rows && column + w > columns
            if row - w > 0 && column - w > 0
            a = image(row-w:row,column-w:column);
            b = uint8(mean(a(:)));
            output(row,column) = b;
        elseif row - w <= 0 || column - w <= 0
            if row - w <= 0 && column - w > 0
                a = image(w:row,column - w:column);
                b = uint8(mean(a(:)));
                output(row,column) = b;
            elseif row - w > 0 && column - w <= 0
                a = image(row - w:row,w:column);
                b = uint8(mean(a(:)));
                output(row,column) = b;
            elseif row - w <= 0 && column - w <= 0
                a = image(w:row,w:column);
                b = uint8(mean(a(:)));
                output(row,column) = b;
            end
            end
            end
        end
    end
end
            
             
                
            



