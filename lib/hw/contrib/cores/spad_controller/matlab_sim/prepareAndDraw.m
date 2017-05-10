function prepareAndDraw( )
    [x,y] = meshgrid(-10:20/63:10);
    R = zeros(500, 64, 64);
    for t=0:2e-2:(10-2e-2)
       R(ceil(t/(2e-2)+0.1),:,:) = round(((cos(sqrt((x).^2+(y).^2)-t) + 1)/2)*255);
    end
    h=mesh(x,y,squeeze(R(1,:,:)));

    for i=1:500
        drawnow
        set(h,'ZData',squeeze(R(i,:,:)));
    end
    
    csvwrite('symetricWave.dat',R)
end

