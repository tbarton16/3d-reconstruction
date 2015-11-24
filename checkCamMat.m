function [ camMat ] = checkCamMat (proj_pts, real_pts)
    cameraParams = estimateCameraParameters(proj_pts, real_pts);
    [rotationMatrix,translationVector] = extrinsics(proj_pts,real_pts,cameraParams);
    camMatrix = cameraMatrix(cameraParams,rotationMatrix,translationVector)
    camMat = camMatrix
    
end