hold on

xMin = 0;
xMax = 300;
trueAns =  0.050517739675965403825070045072481;
yMin = -20;
yMax = 0;
X = 1:xMax;

TwoLvlMCX = [38.0781,38.0781,38.0781,38.0781,38.0781,...
    99.125,99.125,99.125,99.125,99.125,...
    229.2969,229.2969,229.2969,229.2969,229.2969,...
             ];
        
TwoLvlMCY = [0.049455555555555555555555555555556, 0.059311111111111111111111111111111, 0.065222222222222222222222222222222, 0.050388888888888888888888888888889, 0.051688888888888888888888888888889,...
             0.049893750000000000599520433297585, 0.042731249999999998401278844539775, 0.047875, 0.062325, 0.046731250000000001953992523340276,...
             0.05, 0.047488, 0.045012000000000003396838366143129, 0.048331999999999999961808327952895, 0.05892,...
            ];
        
TwoLvlMCYMean = arrayfun(@(i) mean(TwoLvlMCY((5*i-4):(5*i))), 1:(length(TwoLvlMCY)/5));

OneLvlISX = [65.7969,65.7969,65.7969,65.7969,65.7969,...
    126.125,126.125,126.125,126.125,126.125,...
    259.8906,259.8906,259.8906,259.8906,259.8906,...
            ];
        
OneLvlISY = [0.082848901118392909159737769186904, 0.048902932030859283529800052292558, 0.05008303586563093295902504564765, 0.036433091267532975721099575139306, 0.031363595813359367026063040384543,...
              0.025125596493889110205621761906514, 0.055310302231341756939997367226169, 0.05430223014681323512320432200795, 0.047026425309647394701340061828887, 0.044673567023197482961371918008808,...
             0.058039508426581870592642076189804, 0.068663765771957832595440152090305, 0.045254948777922882063862175527902, 0.031554411376366879593557968064488, 0.051349933226835897670525810099207,...
            ];

OneLvlISYMean = arrayfun(@(i) mean(OneLvlISY((5*i-4):(5*i))), 1:(length(OneLvlISY)/5));

TwoLvlISX = [119.4844,119.4844,119.4844,119.4844,119.4844,...
    179.9688,179.9688,179.9688,179.9688,179.9688,...
    258.5,258.5,258.5,258.5,258.5,...
            ];
        
TwoLvlISY = [0.071293466784957806869904572977248, 0.033565538380284622166360719575096, 0.033666961575646706106290650950541, 0.049090357506182208391365406896512, 0.056088681014997421314660641655792,...
             0.056251933620187627438369304400112, 0.063860925529370643483062508494186, 0.050459223721895873904230711559649, 0.044591054102637313338863833678261, 0.049765685702545650603845217574417,...
            0.061704521202097580012679856054092, 0.043245250868252135822977777479537, 0.036639107887021571396957142496831, 0.044088673225660922339042002704446, 0.098245420160771868012261620606296,...
         ];

TwoLvlISYMean = arrayfun(@(i) mean(TwoLvlISY((5*i-4):(5*i))), 1:(length(TwoLvlISY)/5));

OneLvlISEX = [35,35,35,35,35,...
    65.3906,65.3906,65.3906,65.3906,65.3906,...
    129.6094,129.6094,129.6094,129.6094,129.6094,...
            ];
        
OneLvlISEY = [0.045411328614604576370261668216699, 0.054468649289110666888991119094499, 0.053802016966886204163422746660217, 0.050286359015864194599298997445658, 0.043020420983031118500328204845573,...
    0.05242082173499312824915818964655, 0.048702366239058651753435214004639, 0.041020758113333444239145819665282, 0.056365197001971747980952898160467, 0.047611810407888380258789595700364,...
    0.048797436791603907013659124913829, 0.063317483926379300451792175863375, 0.045245640107688847586508984477405, 0.060292955715244581083034347557259, 0.054065461958817701004775813089509,...
            ];

OneLvlISEYMean = arrayfun(@(i) mean(OneLvlISEY((5*i-4):(5*i))), 1:(length(OneLvlISEY)/5));

% GISX = [60.3438,60.3438,60.3438,60.3438,60.3438,...
%     108.5469,108.5469,108.5469,108.5469,108.5469,...
%     190.6719,190.6719,190.6719,190.6719,190.6719,...
%             ];
%         
% GISY = [0.0000018518790543539931139205420226879, 0.0000010843753406799466554251464359138, 0.000001517626481718590258703925795214, 0.0000035291751196630600151057932656329, 0.0000011644412036050162446190444145988,...
%     0.0000010700504773142563830331999014112, 0.0000020301899674927425532824833837031, 0.0000011754020564271507184265358469943, 0.0000018084625351093748958625608350137, 0.000012640874810575461755120241225114,...
%     0.0000033332855184090179223479859238477, 0.000002395195429610531391784655416699, 0.0000022712079026664375088493189047689, 0.0000029000361148108863511133927171048, 0.0000063017344243581057205787730735036,...
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

% legend('2LvlMC','1LvlISZ','1LvlISE','2LvlIS','GlassermanIS','True Ans');
legend('2LvlMC','1LvlISZ','1LvlISE','2LvlIS','True Ans', 'location','southeast');
xlabel('Runtime (Seconds)');
ylabel('log(P(L > l))');
axis([xMin,xMax,yMin,yMax]);

hold off
