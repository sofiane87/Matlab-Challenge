function solution_matrix = solve_grid(grid)
    
    [dim1,dim2] = size(grid);
    column_grid = reshape(grid,[dim1*dim2,1]);
    I = eye(dim1);
    I_low = [zeros(1,dim1);[eye(dim1-1),zeros(dim1-1,1)]];
    B = I + I_low + I_low';
    A= zeros(dim1*dim2,dim1*dim2);    
    for ii=1:dim2
        index = (ii-1)*dim2+1;
        A(index:index+dim2-1,index:index+dim2-1) = B;
        if (ii <dim2)
        A(index+dim2:index+2*dim2-1,index:index+dim2-1)= I;
        A(index:index+dim2-1,index+dim2:index+2*dim2-1)= I;
        end
    end
    C_without = g2rref(A);
    C_with = g2rref([A,column_grid]);
    
    if rank(C_with) == rank(C_without)
        solution_matrix = reshape(C_with(:,end),[dim1,dim2]);
    else
        solution_matrix = [];
    end    
end