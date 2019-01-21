function [ error_per_image ] = compute_eye_corner_error( ground_truth_all, detected_points_all )
num_of_images = size(ground_truth_all,3);
num_of_points = size(ground_truth_all,1);

error_per_image = zeros(num_of_images,1);

for i =1:num_of_images
    detected_points      = detected_points_all(:,:,i);
    ground_truth_points  = ground_truth_all(:,:,i);
    interocular_distance = norm(ground_truth_points(37,:)-ground_truth_points(46,:));
    %interocular_distance = norm(mean(ground_truth_points(37:42,:))-mean(ground_truth_points(43:48,:)));
    sum=0;
    for j=1:num_of_points
        sum = sum+norm(detected_points(j,:)-ground_truth_points(j,:));
    end
    error_per_image(i) = sum/(num_of_points*interocular_distance);
end
end

