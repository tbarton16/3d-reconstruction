function [ F ] = epipolar_line_tool( p, p_prime, Im1, Im2 )
%Epipolar Lne tool Summary of this function goes here

    cam_center = null(p);
    p_epi = p_prime * cam_center;
    p_star = pinv(p);
    
    %Gets a 3x3 matrix of the epi line to cross product
    cross_p = [ 0 -p_epi(3) p_epi(2); p_epi(3) 0 -p_epi(1); -p_epi(2) p_epi(1) 0 ];
    F = (cross_p* (p_prime * p_star)); % Cross product to get F
    
    imshow(Im1)
    points = ginput(1);
    
    [dimy dimx] = size(Im1);
    x = [1:dimx];

    L = F * [points 1]';
    y = -L(1)/L(2)* x - L(3)/L(2);
    
    figure()
    subplot(1,2,1)
    imshow(Im1)
    subplot(1,2,2)
    imshow(Im2)
    hold on
    plot(x, y, 'r', 'lineWidth', '4')
    hold off
    
end

