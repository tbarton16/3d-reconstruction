    if (true)
        % Get Points from image
        [movingPoints, fixedPoints] = cpselect(img1, img2, 'Wait', true);
        adjMovingPoints = cpcorr(movingPoints,fixedPoints,img1(:,:,1),img2(:,:,1));
        real_points = pts;

        save([name1 ' 2dpts'],'movingPoints');
        save([name2 ' 2dpts'], 'fixedPoints');
        save([name1 name2 ' 3d'], 'real_points');
        
        
        
    load('/home/tbarton/Desktop/Project4/DSCF4178 2dpts.mat')
    load('/home/tbarton/Desktop/Project4/DSCF4177 2dpts.mat')
    load('/home/tbarton/Desktop/Project4/DSCF4177DSCF4178.mat')