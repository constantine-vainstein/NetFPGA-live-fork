function prepareAndDraw( )
    [x,y] = meshgrid(-10:20/63:10);
    R = zeros(100, 64, 64);
    for t=0:10e-2:(10-2e-2)
       R(ceil(t/(10e-2)+0.1),:,:) = round(((cos(sqrt((x).^2+(y).^2)-t) + 1)/2)*255);
    end
    h=mesh(x,y,squeeze(R(1,:,:)));

    for i=1:100
        drawnow
        set(h,'ZData',squeeze(R(i,:,:)));
    end
    
    csvwrite('symetricWave1.dat',R)
    % Create array for initializing ROM in FPGA
    rom = zeros(100, 8, 64, 'uint64');
    for i=1:100
        for row=1:8
            for col=1:64
                for Rrow=((row-1)*8)+1:((row-1)*8)+8
                    rom(i,row,col) = bitsll(rom(i,row,col),8)+R(i,Rrow,col);
                end
            end
        end
    end
    dlmwrite('symetricWaveForRom8pxlRow.dat',rom,'precision',20);
    
end

