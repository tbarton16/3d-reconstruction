function [ camMat ] = make_cam_mat( img1, img2, pts, name1, name2)
%ComputeCamMat Computes Camera Matrix and saves to workspace
%   Detailed explanation goes here
    if (false)
        %Get Points from image
        [movingPoints, fixedPoints] = cpselect(img1, img2, 'Wait', true);
        adjMovingPoints = cpcorr(movingPoints,fixedPoints,img1(:,:,1),img2(:,:,1));

        movingPoints = [ movingPoints ones(6,1) ];
        fixedPoints = [ fixedPoints ones(6,1) ];
    %   person needs to input real points
        real_points = [pts ones(6,1)];

        save([name1 ' 2dpts'],'movingPoints');
        save([name2 ' 2dpts'], 'fixedPoints');
        save([name1 name2 ' 3d'], 'real_points');
    else
%         fixedPoints = load('/home/tbarton/Desktop/Project4/DSCF4178 2dpts.mat')
%         movingPoints = load('/home/tbarton/Desktop/Project4/DSCF4177 2dpts.mat')
%         real_points = load('/home/tbarton/Desktop/Project4/DSCF4177DSCF4178 3d.mat')
load('/home/mmartinez/Desktop/CS181/Project4/3d-reconstruction/DSCF4178 2dpts.mat')
load('/home/mmartinez/Desktop/CS181/Project4/3d-reconstruction/DSCF4177 2dpts.mat')
load('/home/mmartinez/Desktop/CS181/Project4/3d-reconstruction/DSCF4177DSCF4178 3d.mat')
        
    end
    disp(movingPoints)
        camMat1 = computeCamMat(movingPoints, real_points);
        camMat2 = computeCamMat(fixedPoints, real_points);


%     Save into matrix and into workspace
    save([name1 ' cammat'],'camMat1')
    save([name2 ' cammat'], 'camMat2')
    camMat = 1;
end