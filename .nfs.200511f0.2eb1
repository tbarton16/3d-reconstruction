function [] = make_cam_mat( img1, img2, pts, name1, name2)
%ComputeCamMat Computes Camera Matrix and saves to workspace
%   Detailed explanation goes here

    load('/home/tbarton/Desktop/Project4/DSCF4178 2dpts.mat')
    load('/home/tbarton/Desktop/Project4/DSCF4177 2dpts.mat')
    load('/home/tbarton/Desktop/Project4/DSCF4177DSCF4178.mat')

    camMat1 = computeCamMat(movingPoints, real_points);
    camMat2 = computeCamMat(fixedPoints, real_points);


%     Save into matrix and into workspace
    save([name1 ' cammat'],'camMat1')
    save([name2 ' cammat'], 'camMat2')
end