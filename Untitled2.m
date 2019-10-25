brick = ConnectBrick('EVA');

global key
InitKeyboard();

while 1
    pause(0.1);
    distance = brick.UltrasonicDist(1);
    
    %move forward continuously
    brick.MoveMotor('A', 50); 
    brick.MoveMotor('B', 50); 
    
    %if distance is too close
        %move sensor motor to left 
        %if distance is too close, 
            %move sensor motor to right
            %if distance is good
               %move vehicle to the right direction 
        %else distance is good
            %move vehicle to left direction 
    %move sensor back to forward
    
    color_rgb = brick.ColorRGB(2);
    %if red (stop)
    if color_rgb(1) == 1 && color_rgb(2) == 1 && color_rgb(3) == 1
        pause(3);
    %if green (start)
    elseif color_rgb(1) == 1 && color_rgb(2) == 1 && color_rgb(3) == 1
        
    %if yellow (drop-off or blue (pick-up)
    elseif color_rgb(1) == 1 && color_rgb(2) == 1 && color_rgb(3) == 1
        brick.StopMotor('A'); 
        brick.StopMotor('B'); 
        while 1
            switch key
                case 'uparrow'
                    brick.MoveMotor('A', 50); 
                    brick.MoveMotor('B', 50); 
                    disp('Up Arrow Pressed!');
                case 'downarrow'
                    brick.MoveMotor('A', -50); 
                    brick.MoveMotor('B', -50);
                    disp('Down Arrow Pressed!');
                case 'leftarrow'
                    brick.MoveMotor('A', 50); 
                    brick.MoveMotor('B', 10);
                    disp('Left Arrow Pressed!');
                case 'rightarrow'
                    brick.MoveMotor('A', 10); 
                    brick.MoveMotor('B', 50); 
                    disp('Right Arrow Pressed!');
                case 0
                    brick.StopMotor('A'); 
                    brick.StopMotor('B'); 
                    disp('No Key Pressed');
                %case 'u'
                    %move lever up to pick up passenger
                %case 'd'
                    %move lever down to drop off passenger
                case 'q'
                    break;
            end
        end
    end
end



CloseKeyboard();