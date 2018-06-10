hold on

xMin = 0;
xMax = 350;
% yMin = 0;
% yMax = 0.002;
trueAns =  0.00108;
trueAnsCLT = 0.0010464342064605502112539792136658;
yMin = -20;
yMax = 0;
X = 1:xMax;

TwoLvlMCX = [36.4063,36.4063,36.4063,36.4063,36.4063,...
             94.2969,94.2969,94.2969,94.2969,94.2969,...
             220.25,220.25,220.25,220.25,220.25,...   
             ];
        
TwoLvlMCY = [0.00022222222222222222222222222222222, 0.0005, 0.00086666666666666666666666666666667, 0.0015666666666666666666666666666667, 0.000055555555555555555555555555555556,...
     0.000175, 0.000068750000000000004141652298894627, 0.00075, 0.00031875000000000002289834988289385, 0.0002,...
     0.0025240000000000002017275235743909, 0.0014120000000000000606181771445335, 0.00041199999999999998559138680853664, 0.0016440000000000000619782003496994, 0.00192,...
    ];

TwoLvlMCYMean = arrayfun(@(i) mean(TwoLvlMCY((5*i-4):(5*i))), 1:(length(TwoLvlMCY)/5));

OneLvlISX = [61.625,61.625,61.625,61.625,61.625,...
            106.4219,106.4219,106.4219,106.4219,106.4219,...
            230.5781,230.5781,230.5781,230.5781,230.5781,...
            ];
        
OneLvlISY = [0.0010358528617249059249755260836423, 0.0008195241955678916022376423455853, 0.0010394326071957002595447239201576, 0.0013317588082682370060477738960003, 0.0011326280978624580445673908357662,...
         0.0011711349627971095067185958171763, 0.00112196986838505072085758751399, 0.00091212253947297434152063910772767, 0.0010378759823100147489938205325188, 0.0011216259434853373920526475870929,...
         0.0012114387835288236480030255037832, 0.0012183332123079091465628343016192, 0.00099715764624231295262801744172521, 0.0011870180945886769224850709747443, 0.0010273209305354863082881955449466,...
        ];

OneLvlISYMean = arrayfun(@(i) mean(OneLvlISY((5*i-4):(5*i))), 1:(length(OneLvlISY)/5));

TwoLvlISX = [93.4688,93.4688,93.4688,93.4688,93.4688,...
             132.6406,132.6406,132.6406,132.6406,132.6406,...
             304.6875,304.6875,304.6875,304.6875,304.6875,...
            ];
        
TwoLvlISY = [0.0014361483356923731430354607141453, 0.0012889982084155588663160196816193, 0.00099982157623035978165348947044322, 0.0010548228452397186757222291575431, 0.001083460775457855979758692299697,...
          0.00092078969699979662001665392523364, 0.0010540322670220269880153596275818, 0.00096936493775084974812428217916249, 0.0010743792931237879182543304423803, 0.00098244958425201356182199230460128,...
          0.0010381994233560943880628757440832, 0.0012171741521766047712527214486045, 0.0010745292840962953825889591996656, 0.00089972272473013152789544921716924, 0.0010924128707141005003439238052465,...
         ];

TwoLvlISYMean = arrayfun(@(i) mean(TwoLvlISY((5*i-4):(5*i))), 1:(length(TwoLvlISY)/5));

OneLvlISEX = [34.4688,34.4688,34.4688,34.4688,34.4688,...
    72.7813,72.7813,72.7813,72.7813,72.7813,...
    123,123,123,123,123,...
            ];
        
OneLvlISEY = abs(trueAns - [0.0016290643570097528697315780732424, 0.0016891987270135334041343266875401, 0.000058768660153268174916370986116121, 0.00044576118522878118268296110393578, 0.00022099073335210274145537501233605,...
    0.00043170267205603208952868765635458, 0.00046536138466539628873869238745442, 0.0023633871561519990966981907831723, 0.00044337369641219359032296987166433, 0.00025295674593621349538971609938187,...
    0.00019557571775134847849413055609347, 0.00030165142979048315333145957595207, 0.00028894294318999749846682556508881, 0.00027015225841515289441699398942376, 0.00042843897627129363123513194899772,...
        ]);

OneLvlISYEMean = arrayfun(@(i) mean(OneLvlISEY((5*i-4):(5*i))), 1:(length(OneLvlISEY)/5));

% GISX = [55.4531,55.4531,55.4531,55.4531,55.4531,...
%     106.7031,106.7031,106.7031,106.7031,106.7031,...
%     184.4844,184.4844,184.4844,184.4844,184.4844,...
%             ];
%         
% GISY = [0.00008976545382079263680694114491132, 0.00065359019015458208468061229723389, 0.0001845032019491947854108321314115, 0.00017427450565143986008220799988067, 0.000077370491865709741853042447079503,...
%     0.00015166623298628280802798073967352, 0.000087316704924035677052966686328972, 0.00011689735060916035922114197820321, 0.00020193069500900017983549550315558, 0.00006332420305663534097154881985503,...
%     0.000088137407404612893723101774146045, 0.0035861566657569713192921234679034, 0.00012561561829925119030196278835376, 0.0013304192406801982132003026038092, 0.000099846407648422443102502465972492,...
%         ];
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

axis([xMin,xMax,yMin,yMax]);

%plot(unique(TwoLvlMCX),TwoLvlMCYMean,'r','LineWidth',3)
%plot(unique(OneLvlISX),OneLvlISYMean,'g','LineWidth',3)
%plot(unique(TwoLvlISX),TwoLvlISYMean,'b','LineWidth',3)
r1 = refline(0,log10(trueAns));
r1.Color = 'r';
r1.LineStyle = '--';

%r2 = refline(0,trueAnsCLT);
%r2.Color = 'm';
%r2.LineStyle = '--';

% legend('2LvlMC','1LvlISZ','1LvlISE','2LvlIS','GlassermanIS','True Ans','location','southeast');
legend('2LvlMC','1LvlISZ','1LvlISE','2LvlIS','True Ans','location','southeast');
%title('S:10, l:0.20')
xlabel('Runtime (Seconds)');
ylabel('log(P(L > l))');
axis([xMin,xMax,yMin,yMax]);

hold off
