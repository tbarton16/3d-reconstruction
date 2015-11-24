function [ camMat ] = computeCamMat (proj_pts, real_pts)
%ComputeCamMat Computes Camera Matrix and saves to workspace
%   Detailed explanation goes here
%   matrix T to normalize image points and a matrix U to normalize world
%   make T
    img_mean = mean2(proj_pts);
    img_sd = std2(proj_pts);
    
    world_mean = mean2(real_pts);
    world_sd = std2(real_pts);
    
    
%   add ones
    proj_pts = [ proj_pts ones(6,1) ];
    real_pts = [ real_pts ones(6,1) ];
    
%   A =[1 0 -c; 0 1 -c; 0 0 1] [x;y;1]
%   B = [thing 0 0; 0 thing 0; 0 0 1]
%   create mat
    world_B = [sqrt(3)/world_sd 0 0 0; 0 sqrt(3)/world_sd 0 0;
        0 0 sqrt(3)/world_sd 0; 0 0 0 1];
    
    world_A = [1 0 0 -world_mean; 0 1 0 -world_mean;
        0 0 1 -world_mean; 0 0 0 1];
    
    img_B = [sqrt(2)/img_sd 0 0;0 sqrt(2)/img_sd 0; 0 0 1];
    img_A = [1 0 -img_mean; 0 1 -img_mean; 0 0 1];
    
    img_T = img_B * img_A;
    world_T = world_B * world_A;
    
% multiply points to normalize
    n_pp = (img_T * proj_pts')'
    n_rp = (world_T * real_pts')'
    

    P = [0 0 0 0 -n_pp(1 , 3) * n_rp(1,:)  n_pp(1, 2) *  n_rp(1,:);
                   n_pp(1 , 3) * n_rp(1,:) 0 0 0 0 -n_pp(1, 1) *  n_rp(1,:) ]; 
              
    for i = 2: length( n_pp)
        P =  [P ;  0 0 0 0 -n_pp(i , 3) * n_rp(i,:)  n_pp(i, 2) *  n_rp(i,:);
                   n_pp(i , 3) * n_rp(i,:) 0 0 0 0 -n_pp(i, 1) *  n_rp(i,:) ];
    end;
    
    [U S V] = svd(P);
    camMat_n = reshape(V(:,end), [4,3])';
%   unnormalize the points here
%    inv(T)PU
    camMat = inv(img_T)*camMat_n*world_T;


    test_pts =  camMat* real_pts(1,:)' 
    test_pts = test_pts(1:2) / test_pts(3)

    disp(real_pts);
    disp(proj_pts)
end

