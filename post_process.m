close all

times = [1 1000 2000 4000];
md = '0_1'


speed_history = sqrt(ux_history.^2 + uy_history.^2);

for t = times
    % density rho
    imagesc(reshape(rho_history(t,2:65,2:129),[64,128]))
    colormap parula
    axis image
    colorbar horizontal

    saveas(gcf, strcat('rho-md',md,'-t',int2str(t),'.eps'), 'epsc')

    % ux
    imagesc(reshape(ux_history(t,2:65,2:129),[64,128]))
    colormap parula
    axis image
    colorbar horizontal

    saveas(gcf, strcat('ux-md',md,'-t',int2str(t),'.eps'), 'epsc')

    % uy
    imagesc(reshape(uy_history(t,2:65,2:129),[64,128]))
    colormap parula
    axis image
    colorbar horizontal

    saveas(gcf, strcat('uy-md',md,'-t',int2str(t),'.eps'), 'epsc')

    % speed
    imagesc(reshape(speed_history(t,2:65,2:129),[64,128]))
    colormap parula
    axis image
    colorbar horizontal

    saveas(gcf, strcat('speed-md',md,'-t',int2str(t),'.eps'), 'epsc')
    
end