function [ F ] = triangulate_pts( p, p_prime, Im1, Im2 )
%Epipolar Lne tool Summary of this function goes here
% get point correspondences
pts = [0 0 0]
for i = 1:20
imshow(Im1)
[p1x p1y] = ginput(1);
imshow(Im2)
[p2x p2y] = ginput(1);

A = [ p(3,:)*p1x - p(1,:);
      p(3,:)*p1y - p(2,:);
      p_prime(3,:)*p2x - p_prime(1,:);
      p_prime(3,:)*p2y - p_prime(2,:)];
  
[U S V] = svd(A)
 V = V(:,4)
 V = V(1:3)/V(4);
 pts = [pts; V']
end
figure
scatter3(pts(:,1), pts(:,2), pts(:,3))

