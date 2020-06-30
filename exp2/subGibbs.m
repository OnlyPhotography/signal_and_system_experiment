function subGibbs(N)
    N = 3; % ����N�Ĵ�С
    T = 4; % ���β���������
    w = 2 * pi / T;
    T1 = 1; % ���β��ߵ�ƽʱ��
    % ����������ak (k��0)
    ak = @(k) sin(k * w * T1) / (k * pi);
    % ��[-2,2]�ϻ�ͼ
    t = -2:0.00001:2;

    xn = zeros(1, length(t)); % ����xn��ʼֵ

    %����ѭ���ṹ������ָ����N�µ���ͽ��
    for k = -N:N
        if k ~= 0   % ����k������0��ʱ��Ľ��
            xn = xn + ak(k) * exp(1i * k * w .* t);
        else    % ����k����0��ʱ��Ľ��
            xn = xn + 2 * T1 / T;
        end
    end

    % ������ͽ��
    fs=plot(t, xn); hold on;
    % ����x���y��
    line([-2, 2], [0, 0], 'color', '#666', 'linewidth', 0.7); hold on;
    line([0, 0], [1.2, 0], 'color', '#666', 'linewidth', 0.7); hold on;
    % ����9%������Ӧ��ֱ��
    maxVal = line([-2, 2], [1.09, 1.09], 'linestyle', '--', 'color', '#999', 'linewidth', 0.7); hold on;
    % ����ԭ���ķ����ź�
    squareWave = plot([-2, -1, -1, 1, 1, 2], [0, 0, 1, 1, 0, 0], 'color', '#0072BD', 'linewidth', 1); hold on;
    % ����ı���ע
    text(-1, -0.08, '-T_1'); hold on; 
    text(1, -0.08, 'T_1'); hold on;
    xlabel('t'); ylabel('x_n(t)');

    % ���ͼ��
    legend([fs, squareWave, maxVal], {'����Ҷ����', 'ԭʼ����', '9%�ĳ���'}, 'FontName', '΢���ź�', 'FontSize', 10);
    title(legd, ['N=', num2str(N)])

    % ������ʽ
    ax = gca;
    [text1.FontName, text2.FontName, label2.FontName, label1.FontName, ax.FontName] = deal('Times New Roman');
    [text1.FontSize, text2.FontSize, label2.FontSize, label1.FontSize] = deal(12);
    [text1.FontWeight, text2.FontWeight, label2.FontWeight, label1.FontWeight, ax.FontWeight] = deal('Bold');
    [label2.FontAngle, label1.FontAngle, ax.FontAngle] = deal('italic');
    ax.FontSize = 10;


end
