%%
clc;
clear all;
close all;

%%
init_poly_width = 0.325;
init_poly_length = 0.48;
step_length = 0.08;

init_LF_x = 0.5 * init_poly_length;
init_LF_y = 0.5 * init_poly_width;

init_LR_x = -0.5 * init_poly_length;
init_LR_y = 0.5 * init_poly_width;

init_RF_x = 0.5 * init_poly_length;
init_RF_y = -0.5 * init_poly_width;

init_RR_x = -0.5 * init_poly_length;
init_RR_y = -0.5 * init_poly_width;

% every footend position under WORLD
LF_world_x = init_LF_x;
LF_world_y = init_LF_y;
LR_world_x = init_LR_x;
LR_world_y = init_LR_y;
RF_world_x = init_RF_x;
RF_world_y = init_RF_y;
RR_world_x = init_RR_x;
RR_world_y = init_RR_y;

right_angle_side_1 = 0;
right_angle_side_2 = 0;
hypotenuse = 0;
max_inscribed_circle_radius = 0;
ref_x = 0;
ref_y = 0;
init_CoG_x = 0;
init_CoG_y = 0;

% plot
% axis([-5 22 -4 4]);
axis equal;
hold on;
plot(0,0,'r.','MarkerSize',20);
hold on;
plot([init_LF_x,init_LR_x,init_RR_x,init_RF_x,init_LF_x] , [init_LF_y,init_LR_y,init_RR_y,init_RF_y,init_LF_y],'b','linewidth',1.0);
hold on;
plot(LF_world_x,LF_world_y,'g.','MarkerSize',30);
hold on;
plot(LR_world_x,LR_world_y,'g.','MarkerSize',30);
hold on;
plot(RF_world_x,RF_world_y,'g.','MarkerSize',30);
hold on;
plot(RR_world_x,RR_world_y,'g.','MarkerSize',30);
hold on;
pause(1);


%%
for i = 1:1
        % %%%%%%%%%%%%%% LR %%%%%%%%%%%%%% %
        % get the length of three sides of the support triangle
        right_angle_side_1 = init_poly_width;
        right_angle_side_2 = init_poly_length;
        hypotenuse = sqrt(right_angle_side_1 * right_angle_side_1 + right_angle_side_2 * right_angle_side_2);

        % get the maximum inscribed circle radius
        max_inscribed_circle_radius = right_angle_side_1 * right_angle_side_2 / ...
                                          (right_angle_side_1 + right_angle_side_2 + hypotenuse);

        % take the footend of RF as the reference point
        ref_x = init_RF_x;
        ref_y = init_RF_y;

        % end position of the 1st change of center of gravity
        I_CoG_x = ref_x - max_inscribed_circle_radius + init_CoG_x;
        I_CoG_y = ref_y + max_inscribed_circle_radius + init_CoG_y;
        
        % position of every footend under this CoG
        % before swing
        I_LF_pos_x_before = LF_world_x - I_CoG_x;
        I_LF_pos_y_before = LF_world_y - I_CoG_y;
        I_LR_pos_x_before = LR_world_x - I_CoG_x;
        I_LR_pos_y_before = LR_world_y - I_CoG_y;
        I_RF_pos_x_before = RF_world_x - I_CoG_x;
        I_RF_pos_y_before = RF_world_y - I_CoG_y;
        I_RR_pos_x_before = RR_world_x - I_CoG_x;
        I_RR_pos_y_before = RR_world_y - I_CoG_y;
        
        % swing
        LR_world_x = LR_world_x + step_length;
        LR_world_y = LR_world_y;
        
        % after swing
        I_LF_pos_x_after = LF_world_x - I_CoG_x;
        I_LF_pos_y_after = LF_world_y - I_CoG_y;
        I_LR_pos_x_after = LR_world_x - I_CoG_x;
        I_LR_pos_y_after = LR_world_y - I_CoG_y;
        I_RF_pos_x_after = RF_world_x - I_CoG_x;
        I_RF_pos_y_after = RF_world_y - I_CoG_y;
        I_RR_pos_x_after = RR_world_x - I_CoG_x;
        I_RR_pos_y_after = RR_world_y - I_CoG_y;
        
        % plot
        plot(I_CoG_x,I_CoG_y,'r.','MarkerSize',20);
        hold on;
        plot([I_CoG_x+init_LF_x,I_CoG_x+init_LR_x,I_CoG_x+init_RR_x,I_CoG_x+init_RF_x,I_CoG_x+init_LF_x] ,...
             [I_CoG_y+init_LF_y,I_CoG_y+init_LR_y,I_CoG_y+init_RR_y,I_CoG_y+init_RF_y,I_CoG_y+init_LF_y],'b','linewidth',1.0);
        hold on;
        plot([init_CoG_x,I_CoG_x] , [init_CoG_y,I_CoG_y],'r','linewidth',1.0);
        hold on;
        rectangle('Position', [I_CoG_x - max_inscribed_circle_radius, I_CoG_y - max_inscribed_circle_radius, 2 * max_inscribed_circle_radius, 2 * max_inscribed_circle_radius], 'Curvature', [1,1], 'linewidth', 1);
        hold on;
        plot(LF_world_x,LF_world_y,'g.','MarkerSize',30);
        hold on;
        plot(LR_world_x,LR_world_y,'g.','MarkerSize',30);
        hold on;
        plot(RF_world_x,RF_world_y,'g.','MarkerSize',30);
        hold on;
        plot(RR_world_x,RR_world_y,'g.','MarkerSize',30);
        hold on;
        pause(1);



        % %%%%%%%%%%%%%% RR %%%%%%%%%%%%%% %
        % get the length of three sides of the support triangle
        right_angle_side_1 = init_poly_width;
        right_angle_side_2 = init_poly_length - step_length;
        hypotenuse = sqrt(right_angle_side_1 * right_angle_side_1 + right_angle_side_2 * right_angle_side_2);

        % get the maximum inscribed circle radius
        max_inscribed_circle_radius = right_angle_side_1 * right_angle_side_2 / ...
                                          (right_angle_side_1 + right_angle_side_2 + hypotenuse);

        % take the footend of LF as the reference point
        ref_x = init_LF_x;
        ref_y = init_LF_y;

        % end position of the 2nd change of center of gravity
        II_CoG_x = ref_x - max_inscribed_circle_radius + init_CoG_x;
        II_CoG_y = ref_y - max_inscribed_circle_radius + init_CoG_y;
        
        % position of every footend under this CoG
        % before swing
        II_LF_pos_x_before = LF_world_x - II_CoG_x;
        II_LF_pos_y_before = LF_world_y - II_CoG_y;
        II_LR_pos_x_before = LR_world_x - II_CoG_x;
        II_LR_pos_y_before = LR_world_y - II_CoG_y;
        II_RF_pos_x_before = RF_world_x - II_CoG_x;
        II_RF_pos_y_before = RF_world_y - II_CoG_y;
        II_RR_pos_x_before = RR_world_x - II_CoG_x;
        II_RR_pos_y_before = RR_world_y - II_CoG_y;
        
        % swing
        RR_world_x = RR_world_x + step_length;
        RR_world_y = RR_world_y;
        
        % after swing
        II_LF_pos_x_after = LF_world_x - II_CoG_x;
        II_LF_pos_y_after = LF_world_y - II_CoG_y;
        II_LR_pos_x_after = LR_world_x - II_CoG_x;
        II_LR_pos_y_after = LR_world_y - II_CoG_y;
        II_RF_pos_x_after = RF_world_x - II_CoG_x;
        II_RF_pos_y_after = RF_world_y - II_CoG_y;
        II_RR_pos_x_after = RR_world_x - II_CoG_x;
        II_RR_pos_y_after = RR_world_y - II_CoG_y;
        
        % plot
        plot(II_CoG_x,II_CoG_y,'r.','MarkerSize',20);
        hold on;
        plot([II_CoG_x+init_LF_x,II_CoG_x+init_LR_x,II_CoG_x+init_RR_x,II_CoG_x+init_RF_x,II_CoG_x+init_LF_x] ,...
             [II_CoG_y+init_LF_y,II_CoG_y+init_LR_y,II_CoG_y+init_RR_y,II_CoG_y+init_RF_y,II_CoG_y+init_LF_y],'b','linewidth',1.0);
        hold on;
        plot([I_CoG_x,II_CoG_x] , [I_CoG_y,II_CoG_y],'r','linewidth',1.0);
        hold on;
        rectangle('Position', [II_CoG_x - max_inscribed_circle_radius, II_CoG_y - max_inscribed_circle_radius, 2 * max_inscribed_circle_radius, 2 * max_inscribed_circle_radius], 'Curvature', [1,1], 'linewidth', 1);
        hold on;
        plot(LF_world_x,LF_world_y,'g.','MarkerSize',30);
        hold on;
        plot(LR_world_x,LR_world_y,'g.','MarkerSize',30);
        hold on;
        plot(RF_world_x,RF_world_y,'g.','MarkerSize',30);
        hold on;
        plot(RR_world_x,RR_world_y,'g.','MarkerSize',30);
        hold on;
        pause(1);



        % %%%%%%%%%%%%%% LF %%%%%%%%%%%%%% %
        % get the length of three sides of the support triangle
        right_angle_side_1 = init_poly_width;
        right_angle_side_2 = init_poly_length - step_length;
        hypotenuse = sqrt(right_angle_side_1 * right_angle_side_1 + right_angle_side_2 * right_angle_side_2);

        % get the maximum inscribed circle radius
        max_inscribed_circle_radius = right_angle_side_1 * right_angle_side_2 / ...
                                          (right_angle_side_1 + right_angle_side_2 + hypotenuse);

        % take the footend of RR as the reference point
        ref_x = init_RR_x + step_length;
        ref_y = init_RR_y;

        % end position of the 3rd change of center of gravity
        III_CoG_x = ref_x + max_inscribed_circle_radius + init_CoG_x;
        III_CoG_y = ref_y + max_inscribed_circle_radius + init_CoG_y;
        
        % position of every footend under this CoG
        % before swing
        III_LF_pos_x_before = LF_world_x - III_CoG_x;
        III_LF_pos_y_before = LF_world_y - III_CoG_y;
        III_LR_pos_x_before = LR_world_x - III_CoG_x;
        III_LR_pos_y_before = LR_world_y - III_CoG_y;
        III_RF_pos_x_before = RF_world_x - III_CoG_x;
        III_RF_pos_y_before = RF_world_y - III_CoG_y;
        III_RR_pos_x_before = RR_world_x - III_CoG_x;
        III_RR_pos_y_before = RR_world_y - III_CoG_y;
        
        % swing
        LF_world_x = LF_world_x + step_length;
        LF_world_y = LF_world_y;
        
        % after swing
        III_LF_pos_x_after = LF_world_x - III_CoG_x;
        III_LF_pos_y_after = LF_world_y - III_CoG_y;
        III_LR_pos_x_after = LR_world_x - III_CoG_x;
        III_LR_pos_y_after = LR_world_y - III_CoG_y;
        III_RF_pos_x_after = RF_world_x - III_CoG_x;
        III_RF_pos_y_after = RF_world_y - III_CoG_y;
        III_RR_pos_x_after = RR_world_x - III_CoG_x;
        III_RR_pos_y_after = RR_world_y - III_CoG_y;
        
        % plot
        plot(III_CoG_x,III_CoG_y,'r.','MarkerSize',20);
        hold on;
        plot([III_CoG_x+init_LF_x,III_CoG_x+init_LR_x,III_CoG_x+init_RR_x,III_CoG_x+init_RF_x,III_CoG_x+init_LF_x] ,...
             [III_CoG_y+init_LF_y,III_CoG_y+init_LR_y,III_CoG_y+init_RR_y,III_CoG_y+init_RF_y,III_CoG_y+init_LF_y],'b','linewidth',1.0);
        hold on;
        plot([II_CoG_x,III_CoG_x] , [II_CoG_y,III_CoG_y],'r','linewidth',1.0);
        hold on;
        rectangle('Position', [III_CoG_x - max_inscribed_circle_radius, III_CoG_y - max_inscribed_circle_radius, 2 * max_inscribed_circle_radius, 2 * max_inscribed_circle_radius], 'Curvature', [1,1], 'linewidth', 1);
        hold on;
        plot(LF_world_x,LF_world_y,'g.','MarkerSize',30);
        hold on;
        plot(LR_world_x,LR_world_y,'g.','MarkerSize',30);
        hold on;
        plot(RF_world_x,RF_world_y,'g.','MarkerSize',30);
        hold on;
        plot(RR_world_x,RR_world_y,'g.','MarkerSize',30);
        hold on;
        pause(1);



        % %%%%%%%%%%%%%% RF %%%%%%%%%%%%%% %
        % get the length of three sides of the support triangle
        right_angle_side_1 = init_poly_width;
        right_angle_side_2 = init_poly_length;
        hypotenuse = sqrt(right_angle_side_1 * right_angle_side_1 + right_angle_side_2 * right_angle_side_2);

        % get the maximum inscribed circle radius
        max_inscribed_circle_radius = right_angle_side_1 * right_angle_side_2 / ...
                                          (right_angle_side_1 + right_angle_side_2 + hypotenuse);

        % take the footend of LR as the reference point
        ref_x = init_LR_x + step_length;
        ref_y = init_LR_y;

        % end position of the 4th change of center of gravity
        IV_CoG_x = ref_x + max_inscribed_circle_radius + init_CoG_x;
        IV_CoG_y = ref_y - max_inscribed_circle_radius + init_CoG_y;
        
        % position of every footend under this CoG
        % before swing
        IV_LF_pos_x_before = LF_world_x - IV_CoG_x;
        IV_LF_pos_y_before = LF_world_y - IV_CoG_y;
        IV_LR_pos_x_before = LR_world_x - IV_CoG_x;
        IV_LR_pos_y_before = LR_world_y - IV_CoG_y;
        IV_RF_pos_x_before = RF_world_x - IV_CoG_x;
        IV_RF_pos_y_before = RF_world_y - IV_CoG_y;
        IV_RR_pos_x_before = RR_world_x - IV_CoG_x;
        IV_RR_pos_y_before = RR_world_y - IV_CoG_y;
        
        % swing
        RF_world_x = RF_world_x + step_length;
        RF_world_y = RF_world_y;
        
        % after swing
        IV_LF_pos_x_after = LF_world_x - IV_CoG_x;
        IV_LF_pos_y_after = LF_world_y - IV_CoG_y;
        IV_LR_pos_x_after = LR_world_x - IV_CoG_x;
        IV_LR_pos_y_after = LR_world_y - IV_CoG_y;
        IV_RF_pos_x_after = RF_world_x - IV_CoG_x;
        IV_RF_pos_y_after = RF_world_y - IV_CoG_y;
        IV_RR_pos_x_after = RR_world_x - IV_CoG_x;
        IV_RR_pos_y_after = RR_world_y - IV_CoG_y;
        
        % plot
        plot(IV_CoG_x,IV_CoG_y,'r.','MarkerSize',20);
        hold on;
        plot([IV_CoG_x+init_LF_x,IV_CoG_x+init_LR_x,IV_CoG_x+init_RR_x,IV_CoG_x+init_RF_x,IV_CoG_x+init_LF_x] ,...
             [IV_CoG_y+init_LF_y,IV_CoG_y+init_LR_y,IV_CoG_y+init_RR_y,IV_CoG_y+init_RF_y,IV_CoG_y+init_LF_y],'b','linewidth',1.0);
        hold on;
        plot([III_CoG_x,IV_CoG_x] , [III_CoG_y,IV_CoG_y],'r','linewidth',1.0);
        hold on;
        rectangle('Position', [IV_CoG_x - max_inscribed_circle_radius, IV_CoG_y - max_inscribed_circle_radius, 2 * max_inscribed_circle_radius, 2 * max_inscribed_circle_radius], 'Curvature', [1,1], 'linewidth', 1);
        hold on;
        plot(LF_world_x,LF_world_y,'g.','MarkerSize',30);
        hold on;
        plot(LR_world_x,LR_world_y,'g.','MarkerSize',30);
        hold on;
        plot(RF_world_x,RF_world_y,'g.','MarkerSize',30);
        hold on;
        plot(RR_world_x,RR_world_y,'g.','MarkerSize',30);
        hold on;
        pause(1);

        

        % %%%%%%%%%%%%%% RETURN %%%%%%%%%%%%%% %
        V_CoG_x = step_length + init_CoG_x;
        V_CoG_y = 0.0 + init_CoG_y;
        
        % position of every footend under this CoG
        V_LF_pos_x_before = LF_world_x - V_CoG_x;
        V_LF_pos_y_before = LF_world_y - V_CoG_y;
        V_LR_pos_x_before = LR_world_x - V_CoG_x;
        V_LR_pos_y_before = LR_world_y - V_CoG_y;
        V_RF_pos_x_before = RF_world_x - V_CoG_x;
        V_RF_pos_y_before = RF_world_y - V_CoG_y;
        V_RR_pos_x_before = RR_world_x - V_CoG_x;
        V_RR_pos_y_before = RR_world_y - V_CoG_y;

        % plot
        plot(V_CoG_x,V_CoG_y,'r.','MarkerSize',20);
        hold on;
        plot([V_CoG_x+init_LF_x,V_CoG_x+init_LR_x,V_CoG_x+init_RR_x,V_CoG_x+init_RF_x,V_CoG_x+init_LF_x] ,...
             [V_CoG_y+init_LF_y,V_CoG_y+init_LR_y,V_CoG_y+init_RR_y,V_CoG_y+init_RF_y,V_CoG_y+init_LF_y],'b','linewidth',1.0);
        hold on;
        plot([IV_CoG_x,V_CoG_x] , [IV_CoG_y,V_CoG_y],'r','linewidth',1.0);
        hold on;
        pause(1);
        
        
        
        
        % %%%%%%%%%%%%%% UPDATE %%%%%%%%%%%%%% %
        init_CoG_x = V_CoG_x;
        init_CoG_y = V_CoG_y;
end



















































