function [ output_args ] = collect_data()
    %UNTITLED2 Summary of this function goes here
    %   Detailed explanation goes here
    
    plot = 0;
    
    name = 'DSCF4177';  
    name1 = 'DSCF4178';
%     file = 'DSCF4177.jpg';
%     file2 = 'DSCF4178.jpg';
%     Im1 = im2double(imread(file));
%     Im2 = im2double(imread(file2));
    % pts are the points the two images have in common
    % top- RBL, top RBR, top RTR, top YLB, top YRB, top YRT
    pts = [0 0 29; 64 0 29; 64 64 29; 0 48 67; 32 48 67; 32 80 67];
%     if(plot == 1)
%         scatter3(pts(:,1), pts(:,2), pts(:,3))
%     end
    make_cam_mat(name, name1);
    
%     epiLineTool(camMat)

%     name = 'DSCF4181';
%     name1 = 'DSCF4182';
%     file = '/common/cs/cs181m/data/horse/DSCF4181.jpg';
%     file2 = '/common/cs/cs181m/data/horse/DSCF4182.jpg';
%     Im1 = im2double(imread(file));
%     Im2 = im2double(imread(file2));
%     % yellow left top, yellow left bottom, yellow right bottom, center GLT, centerGLB,
%     % GRB
%     pts = [0, 80, 67; 0, 48, 67; 32, 48, 67; 16, 48, 48; 16, 16, 48; 48, 16, 48];
%     if(plot == 1)
%         scatter3(pts(:,1), pts(:,2), pts(:,3))
%     end
%     make_cam_mat(Im1, Im2,pts, name, name1);
%     
%     name = 'DSCF4186';
%     name1 = 'DSCF4184';
%     file = '/common/cs/cs181m/data/horse/DSCF4186.jpg';
%     file2 = '/common/cs/cs181m/data/horse/DSCF4184.jpg';
%     Im1 = im2double(imread(file));
%     Im2 = im2double(imread(file2));
%     % YTR, YLT,bottom YLT, bottom YRT, bottom BTL, corner top GTR
%     pts = [32, 80, 67; 0, 80, 67; 0, 80, 48; 32, 80, 48; 0, 64, 0; 48, 48, 48];
%     if(plot == 1)
%          scatter3(pts(:,1), pts(:,2), pts(:,3))
%     end
%     make_cam_mat(Im1, Im2,pts, name, name1);
%     
%     name = 'DSCF4194';
%     name1 = 'DSCF4193';
%     file = '/common/cs/cs181m/data/horse/DSCF4194.jpg';
%     file2 = '/common/cs/cs181m/data/horse/DSCF4193.jpg';
%     Im1 = im2double(imread(file));
%     Im2 = im2double(imread(file2));
%     % bottom BRB, top BrB, top BRT,bottom BRT, top YTR, top YRB
%     pts = [64, 0, 0; 64, 0, 19; 64, 64, 19; 64, 64, 0; 32, 80, 67; 32, 48, 67];
%     if(true)
%         scatter3(pts(:,1), pts(:,2), pts(:,3))
%     end
%     make_cam_mat(Im1, Im2,pts, name, name1);



end

