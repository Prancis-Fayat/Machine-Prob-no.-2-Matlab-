

function def = circle(x1,y1,x2,y2,x3,y3)
    a = [x1,y1,1; x2,y2,1; x3,y3,1];
    b = [-(x1^2 + y1^2); -(x2^2 + y2^2); -(x3^2 + y3^2)];
    def = linsolve(a,b);
    d = def(1);
    e = def(2);
    f = def(3);
    h = -(d/2);
    k = -(e/2);
    
    fprintf('center is at (%.4f,%.4f) \n',h,k);
    r = sqrt(-f + h^2 + k^2);
    fprintf('radius = %.4f \n', r);
    fprintf('vector [D, E, F]: [%.4f,%.4f,%.4f] \n', d, e, f);
end

