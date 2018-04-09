function h=create_path(path,h)
[L,W]=size(path);

PATH(:,:,:)=path;

if ishandle(h)
    set(h,'CData',PATH);
    pause(0.2);
else
    figure('position',[50 50 600 600]);
    h=imagesc(PATH);
    colormap(gray);
    hold on;
    plot([(0:W)',(0:W)']+0.5,[0,L]+0.5,'color',[0.65,0.65,0.65]);%画网格线
    plot([0,W]+0.5,[(0:L)',(0:L)']+0.5,'color',[0.65,0.65,0.65]);
    axis image
    set(gca, 'xtick', [], 'ytick', []);%去坐标轴标签
    pause(0.2);
end
end




