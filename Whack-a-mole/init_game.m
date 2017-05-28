function GameBoard = init_game(dim,varargin)
    

    GameBoard = zeros(dim,dim); 
    if (nargin>1)
        numberOfOnes = varargin{1};
    else
        numberOfOnes = randi([1 floor(dim^2/2)],1,1);
    end
    
    couplesOfOnes = unique(randi([1 dim],numberOfOnes,2),'rows');
    [l,~] = size(couplesOfOnes);
    
    while l ~= numberOfOnes
    couplesOfOnes = unique([couplesOfOnes; randi([1 dim],numberOfOnes-l,2)],'rows');
    [l,~] = size(couplesOfOnes);   
    end
    
    for ii=1:l
       GameBoard(couplesOfOnes(ii,1),couplesOfOnes(ii,2)) = 1; 
    end
    
    if ~check_is_solvable(GameBoard)
        if nargin>1
        GameBoard = init_game(dim,varargin{1});
        else 
        GameBoard = init_game(dim);
        end
    end
end