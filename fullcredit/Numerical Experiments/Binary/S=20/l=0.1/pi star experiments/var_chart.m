hold on

xMin = 0;
xMax = 4500;
yMin = -20;
yMax = 0;
TwoLvlMCVar = 0.047376430704261868198656770800881;
X = 1:xMax;

OneLvlISX = [600,600,600,600,600,...
    1200,1200,1200,1200,1200,...
    1800,1800,1800,1800,1800,...
    2400,2400,2400,2400,2400,...
    3000,3000,3000,3000,3000,...
    3600,3600,3600,3600,3600,...
    4200,4200,4200,4200,4200
             ];
      
OneLvlISY = [0.12273033400591708275140234718492, 0.37124138920422972143242645870487, 0.14599246570821064472589512206468, 0.087254470255813842971548410787364, 0.11873401369467531663026704791264,...
    0.059235215799716127438312440744994, 0.043278620881953749899295758041262, 0.069989630948360026518884069446358, 0.073449983607832072807219958576752, 0.06897836082348661468355288661769,...
    0.035858369026072499374802049487698, 0.074375846294708225503455878424575, 0.059230319426414962391547192055441, 0.044067158093443227484531377058374, 0.032841589236420325181864399155529,...
    0.038367697170106879189788173789566, 0.060899542758408385656476724534514, 0.040285451979719978654603806944579, 0.036149284751642071777943954202783, 0.040417542347883875231140393680107,...
    0.041395414530484161974577261844388, 0.043896511912068204852577224528432, 0.037808274126698321326855989354954, 0.036416713622818681905801696530034, 0.035174550199288542873254925780202,...
    0.033481990932026417517874961049529, 0.035970239433885255186940099747517, 0.033908083622141413360218109573907, 0.037381067143739385438827582675003, 0.036719245256141203048727561508713,...
    0.033096623294517076019349843818418, 0.030295730130464774282339490696359, 0.026000978405943390991961194913529, 0.036595989320905950026308062206226, 0.030914963357685964345789031426648,...
             ];

OneLvlISYMean = arrayfun(@(i) mean(OneLvlISY((5*i-4):(5*i))), 1:(length(OneLvlISY)/5));

OneLvlISRatio = (OneLvlISYMean ./ TwoLvlMCVar) .* 100;

TwoLvlISX = [600,600,600,600,600,...
    1200,1200,1200,1200,1200,...
    1800,1800,1800,1800,1800,...
    2400,2400,2400,2400,2400,...
    3000,3000,3000,3000,3000,...
    3600,3600,3600,3600,3600,...
    4200,4200,4200,4200,4200
             ];
      
TwoLvlISY = [0.21571760467154543761125751188956, 0.5460748948986177131459385236667, 0.057368796890253703768536297502578, 0.0540901842743183244865967651549, 0.13839925369693453771624547243846,...
    0.013285319565295545043981384480958, 0.10115455362379180415111079582857, 0.038681784312547311255325865886334, 0.021192994632429351664626437923289, 0.036939615785011460646902747839704,...
    0.093801417648062365706174148272112, 0.01688519095335462918971991541639, 0.014507227240454629441090972363781, 0.019956159666285711723476836709779, 0.011746128802212435146556934739692,...
    0.011589576584413932916484135660085, 0.014844329351214135756520384745727, 0.011716617180060397498952973194264, 0.01152935406416307276278310212092, 0.013799579104759924011447402847352,...
    0.011912870422501548386962078041051, 0.014797492207846638101464975534327, 0.011468289013834230202770747553132, 0.01488338060768334275563162805156, 0.016309512806637050524871668244487,...
    0.0091314850558148336068242656438088, 0.012914412239077214736293619523622, 0.0088424478208666106027191489147299, 0.0097025703783235207194879379244412, 0.010862085756526643903763229559445,...
    0.0103471580994415699589206170117, 0.008652902256243195575069471203733, 0.010023954027599120755742667654431, 0.010020004463625900581469352346176, 0.012612757273423199494422064503851,...
             ];

TwoLvlISYMean = arrayfun(@(i) mean(TwoLvlISY((5*i-4):(5*i))), 1:(length(TwoLvlISY)/5));

TwoLvlISRatio = (TwoLvlISYMean ./ TwoLvlMCVar) .* 100;

plot(unique(OneLvlISX),log10(OneLvlISYMean),'g','LineWidth',3)
plot(unique(TwoLvlISX),log10(TwoLvlISYMean),'b','LineWidth',3)

axis([xMin,xMax,yMin,yMax]);

r1 = refline(0,log10(TwoLvlMCVar));
r1.Color = 'r';
r1.LineStyle = '--';

legend('1LvlISZ','2LvlIS','2LvlMC', 'location', 'SouthEast');
xlabel('Number of samples used to train pi*');
ylabel('log(Varience)');


hold off
