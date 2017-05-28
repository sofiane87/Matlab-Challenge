function [updatedBoard,plot_object_array] = whack(x,y,board,plot_object_array)
    [dim1,dim2] = size(board);
    updatedBoard = board;
    updatedBoard(x,max(1,y-1):min(y+1,dim2)) = 1-board(x,max(1,y-1):min(y+1,dim2));
    updatedBoard(max(1,x-1):min(x+1,dim1),y) = 1-board(max(1,x-1):min(x+1,dim1),y);
    for jj = max(1,y-1):min(y+1,dim2)
            if updatedBoard(x,jj)==1
                plot_object_array{x,jj}.set('FaceColor',[0.823529, 0.411765, 0.117647]);
            else
                plot_object_array{x,jj}.set('FaceColor',[0.662745, 0.662745, 0.662745]);
            end
    end
    for ii = max(1,x-1):min(x+1,dim1)
            if updatedBoard(ii,y)==1
                plot_object_array{ii,y}.set('FaceColor',[0.823529, 0.411765, 0.117647]);
            else
                plot_object_array{ii,y}.set('FaceColor',[0.662745, 0.662745, 0.662745]);
            end
    end
end