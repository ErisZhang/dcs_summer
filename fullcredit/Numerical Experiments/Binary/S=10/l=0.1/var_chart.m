hold on

xMin = 0;
xMax = 350;
yMin = -20;
yMax = 0;
trueAns =  0.067355681764443305259593866206504;
X = 1:xMax;

TwoLvlMCX = [38.2188,38.2188,38.2188,38.2188,38.2188,...
             77.2969,77.2969,77.2969,77.2969,77.2969,...
             222.6875,222.6875,222.6875,222.6875,222.6875,...
             ];
     
TwoLvlMCY = [ 0.084261479448513268430964728850086, 0.077702077677377093256616547023441, 0.067358480649779867155402257594687, 0.076667407415659305502941833765362, 0.084839982666486180029608021868626,...
0.077816983856180965695159557071747, 0.074627965799819881431709234220762, 0.076330333158313307118092438940948, 0.065809230682662617217815181902552, 0.076642747610891917564579500776745,...
0.075670671898736885374603389209369, 0.076107968415876289802746157420188, 0.074023402077625255479631505295401, 0.08051989967956160731965553623013, 0.061154374521464383018809485292877,...
];

TwoLvlMCYMean = arrayfun(@(i) mean(TwoLvlMCY((5*i-4):(5*i))), 1:(length(TwoLvlMCY)/5));

OneLvlISX = [62.3906,62.3906,62.3906,62.3906,62.3906,...
             98.1719,98.1719,98.1719,98.1719,98.1719,...
             223.5938,223.5938,223.5938,223.5938,223.5938,...
            ];
        
OneLvlISY = [0.06582651574255526938372895529028, 0.05344216123739075480214566482573, 0.03320735078591750127907644696279, 0.034687581797283484341676285112044, 0.048495173660932394676947865264083,...
    0.041214240053284570408642650818365, 0.050829363905698553283141194469863, 0.037030233470157561392888112550281, 0.038854073907957871469864841174058, 0.04599750304849150456254491814434,...
    0.047150140584209555838501870539403, 0.045441534231683525235645504380955, 0.03882488267602769715924893034753, 0.044547389426344147222991409762471, 0.045452242081439726828495651034245,...
             ];

OneLvlISYMean = arrayfun(@(i) mean(OneLvlISY((5*i-4):(5*i))), 1:(length(OneLvlISY)/5));

TwoLvlISX = [90.5781,90.5781,90.5781,90.5781,90.5781,...
             135.25,135.25,135.25,135.25,135.25,...
             257.0781,257.0781,257.0781,257.0781,257.0781,...
            ];
        
TwoLvlISY = [0.018594430459973682739915901152017, 0.022009244970371353439242412264321, 0.021470226501183211492707059164786, 0.016629637015121101484282917226665, 0.018258770193224541089627166456921,...
    0.022634586206231443322733909440103, 0.028735306120923738426586879768365, 0.021075513106295747089991010625454, 0.037176171598149648778175446750538, 0.024963081861275847328496269028619,...
    0.03641289177977184016166134483683, 0.019282058780838159245396568053366, 0.026263592008084160611680601959961, 0.0214779193158978233546552161215, 0.027933701810489878353260806420622,...
         ];

TwoLvlISYMean = arrayfun(@(i) mean(TwoLvlISY((5*i-4):(5*i))), 1:(length(TwoLvlISY)/5));

OneLvlISEX = [36.1719,36.1719,36.1719,36.1719,36.1719,...
             68.8594,68.8594,68.8594,68.8594,68.8594,...
             136.3281,136.3281,136.3281,136.3281,136.3281,...
            ];
        
OneLvlISEY = [0.059277329866074889019866844819262, 0.033511374359306268788660787549816, 0.056687801166734871904928638741694, 0.061345040917643013644866556433044, 0.040788167711618604494017148454077,...
0.052620548703429685655219572026908, 0.060687720386342174083704747999946, 0.058741864843907816429169344019101, 0.056515047231363295388018030962485, 0.047682332752050256285958340640718,...
0.060000944550653086129177182783678, 0.043767160278590407085363978012538, 0.046652748120938655751466228593927, 0.053280990646827147694253312693036, 0.053050557253495299325773970622322,...
        ];

% GISX = [57.5313,57.5313,57.5313,57.5313,57.5313,...
%     108.8906,108.8906,108.8906,108.8906,108.8906,...
%     189.5469,189.5469,189.5469,189.5469,189.5469,...
%         ];
%         
% GISY = [0.0000026000723894812654845589122015737, 0.000001672882270396871739543331533695, 0.00000016091049502237140924429013248004, 0.0080071930742082499110612303638845, 0.0000044223294909184056682952164429867,...
%     0.0000013116278102123381860599684450852, 0.00000028428137602815634502341469135034, 0.00000074494470264466799696315363679688, 0.000038113634667954901860675853697558, 0.0000016556427908312650884521720698328,...
%      0.0000021190744071113689317410137130659, 0.0000017605431065335426700789499612765, 0.00000036551914454182365498056375870128, 0.0000017662641618294996244940310570204, 0.0000010679902772695324172637322199253,...
%          ];
% 
% GISYMean = arrayfun(@(i) mean(GISY((5*i-4):(5*i))), 1:(length(GISY)/5));
    
OneLvlISEYMean = arrayfun(@(i) mean(OneLvlISEY((5*i-4):(5*i))), 1:(length(OneLvlISEY)/5));

OneLvlISRatio = (OneLvlISYMean ./ TwoLvlMCYMean) .* 100;

TwoLvlISRatio = (TwoLvlISYMean ./ TwoLvlMCYMean) .* 100;

OneLvlISERatio = (OneLvlISEYMean ./ TwoLvlMCYMean) .* 100;

% GISRatio = (GISYMean ./ TwoLvlMCYMean) .* 100;

%s1 = scatter(TwoLvlMCX,TwoLvlMCY,'r', 'filled');
%s2 = scatter(OneLvlISX,OneLvlISY,'g', 'filled');
%s3 = scatter(TwoLvlISX,TwoLvlISY,'b', 'filled');
%alpha(s1,0.4);
%alpha(s2,0.4);
%alpha(s3,0.4);

plot(unique(TwoLvlMCX),log10(TwoLvlMCYMean),'r','LineWidth',3)
plot(unique(OneLvlISX),log10(OneLvlISYMean),'g','LineWidth',3)
plot(unique(OneLvlISX),log10(OneLvlISEYMean),'black','LineWidth',3)
plot(unique(TwoLvlISX),log10(TwoLvlISYMean),'b','LineWidth',3)
% plot(unique(GISX),log(GISYMean),'y','LineWidth',3)

axis([xMin,xMax,yMin,yMax]);

% r1 = refline(0,log(trueAns));
% r1.Color = 'r';
% r1.LineStyle = '--';

% legend('2LvlMC','1LvlISZ','1LvlISE','2LvlIS','GlassermanIS');
legend('2LvlMC','1LvlISZ','1LvlISE','2LvlIS');
xlabel('Runtime (Seconds)');
ylabel('log(Varience)');


hold off
