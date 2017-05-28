function [plot_object_array] = display_board(BoardGame)
    [dim1,dim2] = size(BoardGame);
    %figure_plot = figure();
    plot_object_array = cell(dim1,dim2);
    set(gca,'YDir','Reverse')

    for ii=1:dim1
        for jj=1:dim2
            plot_object_array{ii,jj} = rectangle('Position',[ii jj 1 1],'Curvature',[1 1]);
            if BoardGame(ii,jj)==1
                plot_object_array{ii,jj}.set('FaceColor',[0.823529, 0.411765, 0.117647]);
            else
                plot_object_array{ii,jj}.set('FaceColor',[0.662745, 0.662745, 0.662745]);
            end
        end
    end
    axis equal;
    axis off;

end