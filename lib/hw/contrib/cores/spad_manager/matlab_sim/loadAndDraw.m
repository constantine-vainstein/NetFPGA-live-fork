function [ output_args ] = loadAndDraw( input_args )
    [x,y] = meshgrid(-10:20/63:10);
    R = zeros(100, 64, 64);
    F = csvread("symetricWave.dat");
    for frm=1:100
        R(frm,:,:) = vec2mat(F(frm,:), 64);
    end
    h=mesh(x,y,squeeze(R(1,:,:)));

    for i=1:100
        drawnow
        set(h,'ZData',squeeze(R(i,:,:)));
    end

end

