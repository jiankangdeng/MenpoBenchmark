function [ error_per_image ] = compute_diag_error( ground_truth_all, detected_points_all )
%compute_error
%   compute the average point-to-point Euclidean error normalized by the
%   diag bounding box distance (measured as the Euclidean distance between the
%   outer corners of the eyes)
%
%   Inputs:
%          grounth_truth_all, size: num_of_points x 2 x num_of_images
%          detected_points_all, size: num_of_points x 2 x num_of_images
%   Output:
%          error_per_image, size: num_of_images x 1


num_of_images = size(ground_truth_all,3);
num_of_points = size(ground_truth_all,1);

error_per_image = zeros(num_of_images,1);

for i =1:num_of_images
    detected_points      = detected_points_all(:,:,i);
    ground_truth_points  = ground_truth_all(:,:,i);

    diag_distance = norm([min(ground_truth_points(:,1)) min(ground_truth_points(:,2))]-[max(ground_truth_points(:,1)) max(ground_truth_points(:,2))]);

    sum=0;
    for j=1:num_of_points
        sum = sum+norm(detected_points(j,:)-ground_truth_points(j,:));
    end
    error_per_image(i) = sum/(num_of_points*diag_distance);
end

end

