hold on

xMin = 0;
xMax = 260;
% yMin = 0;
% yMax = 0.02;
trueAns =  0.0087442257836436483620080131982088;
yMin = -20;
yMax = 0;
X = 1:xMax;

TwoLvlMCX = [38.3438,38.3438,38.3438,38.3438,38.3438,...
             85.5469,85.5469,85.5469,85.5469,85.5469,...
             222.9375,222.9375,222.9375,222.9375,222.9375,...
             ];
        
TwoLvlMCY = [0.015644444444444444444444444444444, 0.0061111111111111111111111111111111, 0.0055333333333333333333333333333333, 0.0080111111111111111111111111111111, 0.014988888888888888888888888888889,...
             0.008506249999999999922284388276239, 0.0012875, 0.0094937500000000004524158825347513, 0.011525, 0.0094937500000000004524158825347513,...
             0.010288, 0.00926, 0.0024359999999999997974398091571402, 0.00966, 0.0064440000000000000751620987671231,...    
            ];

TwoLvlMCYMean = arrayfun(@(i) mean(TwoLvlMCY((5*i-4):(5*i))), 1:(length(TwoLvlMCY)/5));

OneLvlISX = [56.6875,56.6875,56.6875,56.6875,56.6875,...
    103.6094,103.6094,103.6094,103.6094,103.6094,...
    240.375,240.375,240.375,240.375,240.375,...
            ];
        
OneLvlISY = [0.010015980549189305859325571645968, 0.0076241158414968313028481361470767, 0.0076868903785623872090826402825314, 0.0083064980128092595623723326525578, 0.0088947176856582297471698339563773,...
             0.0085970353993557197674890701932782, 0.0085577194202569109582334760943922, 0.0084842457380316059489810953664346, 0.0096325865297667810638326812977539, 0.0098984590142678768875938999372011,...        
             0.0090046247718426931927471201788649, 0.0089492300422538938187155821424312, 0.0099153046849409769841754425101499, 0.0083046131130008887799576200450247, 0.0083030508644567398851554784755535,...
            ];

OneLvlISYMean = arrayfun(@(i) mean(OneLvlISY((5*i-4):(5*i))), 1:(length(OneLvlISY)/5));

TwoLvlISX = [87.2656,87.2656,87.2656,87.2656,87.2656,...
             126.3594,126.3594,126.3594,126.3594,126.3594,...
             248.2188,248.2188,248.2188,248.2188,248.2188,...
            ];
        
TwoLvlISY = [0.0089391055458277850209736214992517, 0.01110183886012223487826933165934, 0.0083973489400666224274916160652538, 0.0084519358304314951002567113391706, 0.010838536321809937382210087264411,...
                0.0097360299640647362390266650322701, 0.0090719194248639108829612709428147, 0.0096042211170199367348265795385487, 0.0093843769349100276955244481769114, 0.0088488754602220644207566380146091,...
                0.0084909010278696132184572675782874, 0.0087580571645936248353914166386858, 0.010143552944931064074829407672951, 0.0081082328669680233529382107349193, 0.0085607056339543664835733949303176
         ];

TwoLvlISYMean = arrayfun(@(i) mean(TwoLvlISY((5*i-4):(5*i))), 1:(length(TwoLvlISY)/5));

OneLvlISEX = [34.9375,34.9375,34.9375,34.9375,34.9375,...
    70.25,70.25,70.25,70.25,70.25,...
    134.875,134.875,134.875,134.875,134.875,...
            ];
        
OneLvlISEY = [0.016622901800159912977239429210385, 0.0054799925974986949880896069942082, 0.010870655787198051436814871806291, 0.0071834782440923505841823271111934, 0.0087891176894559618765212505309137,...
             0.013286404214673286014458675197147, 0.0098882779003761286928941842688801, 0.0066466023346890158035593643148786, 0.0099479164091628852206738997665525, 0.0076229767966749196680953382099233,...
             0.0053568096487253960211183390072165, 0.0078284959223950609241704512442084, 0.0085751433516871172768603059921588, 0.012608008416048742741932819910744, 0.013759259696702854508520985632458,...
            ];

OneLvlISEYMean = arrayfun(@(i) mean(OneLvlISEY((5*i-4):(5*i))), 1:(length(OneLvlISEY)/5));

% GISX = [54.9375,54.9375,54.9375,54.9375,54.9375,...
%     102.8125,102.8125,102.8125,102.8125,102.8125,...
%     193.2344,193.2344,193.2344,193.2344,193.2344,...
%             ];
%         
% GISY = [0.0037305684016839379263386078378062, 0.0030563717555875534633014201091328, 0.0024808868630928899816356913987647, 0.0029285516694612010422937853348913, 0.003869581146136639223515052421476,...
%     0.0027536358680144376077925105761324, 0.0015101181168982659875493768097954, 0.0019579321339974553942142598828013, 0.002953227086979634541386019463971, 0.0022539896316271026965871726588375,...
%     0.0031064161815456633498888638911239, 0.0014361228006877836162191730551285, 0.0024032356178447073467852046491089, 0.0020161957470574537985841256926278, 0.0016715675580030516390178663144184,...
%             ];
% 
% GISYMean = arrayfun(@(i) mean(GISY((5*i-4):(5*i))), 1:(length(GISY)/5));


s1 = scatter(TwoLvlMCX,log10(TwoLvlMCY),'r', 'filled');
s2 = scatter(OneLvlISX,log10(OneLvlISY),'g', 'filled');
s4 = scatter(OneLvlISEX,log10(OneLvlISEY),'black', 'filled');
s3 = scatter(TwoLvlISX,log10(TwoLvlISY),'b', 'filled');
% s5 = scatter(GISX,log(GISY),'y', 'filled');
%alpha(s1,0.4);
%alpha(s2,0.4);
%alpha(s3,0.4);

%plot(unique(TwoLvlMCX),TwoLvlMCYMean,'r','LineWidth',3)
%plot(unique(OneLvlISX),OneLvlISYMean,'g','LineWidth',3)
%plot(unique(TwoLvlISX),TwoLvlISYMean,'b','LineWidth',3)
r1 = refline(0,log10(trueAns));
r1.Color = 'r';
r1.LineStyle = '--';

% legend('2LvlMC','1LvlISZ','1LvlISE','2LvlIS','GlassermanIS','True Ans','location','southeast');
legend('2LvlMC','1LvlISZ','1LvlISE','2LvlIS','True Ans','location','southeast');
xlabel('Runtime (Seconds)');
ylabel('log(P(L > l))');
axis([xMin,xMax,yMin,yMax]);

hold off
