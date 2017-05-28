function [] = start_game(dim,varargin)

%% Opening A figure
figure_plot = figure();
%% Initializing the Game
BoardGame = init_game(dim);
[plot_object_array] = display_board(BoardGame);
if nargin>1
    option = varargin{1};
else
    option =0;
end

if option == 0
    
    while (max(max(BoardGame)) ~= 0)
        [x,y] = ginput(1);
        x = min(max(1,floor(x)),dim)
        y = min(max(1,floor(y)),dim)
        [BoardGame,plot_object_array] = whack(x,y,BoardGame,plot_object_array);
    end
    for ii=1:dim
        for jj=1:dim
            plot_object_array{ii,jj}.set('faceColor','g');
        end
    end
else
    
    Solution = solve_grid(BoardGame);
    if length(Solution) == 0
        for ii=1:dim
        for jj=1:dim
            plot_object_array{ii,jj}.set('faceColor','r');
        end
        end
    else
        pause(0.5);
        for ii=1:dim
            for jj=1:dim
                if(Solution(ii,jj) == 1)
                    [BoardGame,plot_object_array] = whack(ii,jj,BoardGame,plot_object_array);
                    pause(0.2);

                end
            end
        end
        if (max(max(BoardGame)) == 0)
            for ii=1:dim 
                for jj=1:dim
                    plot_object_array{ii,jj}.set('faceColor','g');
                end
            end
        end
    end
    
end

end