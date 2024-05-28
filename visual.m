% 定義模擬區域大小
x_min = 0;
x_max = 5000;
y_min = 0;
y_max = 5000;

% 定義用戶＆小基地台數量
num_users = 100;
num_small_bs = 8 ;

% 定義大型基地台位置和覆蓋半徑
large_bs_positions = [2500 , 2500 ];
large_bs_radius = 5000;

% 用戶位置
user_positions = userpositions1 ; 
% 小基地台位置
base_stations = BSposition ;


% 視覺化用户位置、大型基站位置和小型基站位置
figure;
scatter(user_positions.X, user_positions.Y, 'b', 'filled'); 
hold on;
scatter(base_stations.BS_X, base_stations.BS_Y, 'r', 'filled');
hold on 

% 繪製基地台覆蓋範圍
%for i = 1:num_small_bs
%    viscircles([small_bs_positions(i,:), small_bs_positions(i,2)], small_bs_radius, 'Color', 'r', 'LineStyle', '--');
%end

for i = 1:size(large_bs_positions, 1)
    viscircles(large_bs_positions(i,:), large_bs_radius, 'Color', 'k', 'LineStyle', '--');
end
% 绘制基站的覆盖范围
for i = 1:size(base_stations, 1)
    viscircles([base_stations.BS_X(i), base_stations.BS_Y(i)], 1000, 'Color', 'r', 'LineStyle', '--');
end

xlabel('X Coordinate');
ylabel('Y Coordinate');
title('Random User and Base Station Positions');
legend('Users', 'Large Base Stations', 'Small  Base Stations');
