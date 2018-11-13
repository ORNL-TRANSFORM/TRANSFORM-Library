within TRANSFORM.Math.Examples;
model QuadraticCurve_Test
  extends TRANSFORM.Icons.Example;

  Real y;

  Modelica.Blocks.Sources.CombiTimeTable x_input(table=[0,5.88e-09; 0.02,5.88e-09;
        0.04,5.88e-09; 0.06,5.88e-09; 0.08,5.88e-09; 0.1,5.88e-09; 0.12,5.88e-09;
        0.14,5.88e-09; 0.16,5.88e-09; 0.18,5.88e-09; 0.2,5.88e-09; 0.22,5.88e-09;
        0.24,5.88e-09; 0.26,5.88e-09; 0.28,5.88e-09; 0.3,5.88e-09; 0.32,5.88e-09;
        0.34,5.88e-09; 0.36,5.88e-09; 0.38,5.88e-09; 0.4,5.88e-09; 0.42,5.88e-09;
        0.44,5.88e-09; 0.46,5.88e-09; 0.48,5.88e-09; 0.5,5.88e-09; 0.52,5.88e-09;
        0.54,5.88e-09; 0.56,5.88e-09; 0.58,5.88e-09; 0.6,5.88e-09; 0.62,5.88e-09;
        0.64,5.88e-09; 0.66,5.88e-09; 0.68,5.88e-09; 0.7,5.88e-09; 0.72,5.88e-09;
        0.74,5.88e-09; 0.76,5.88e-09; 0.78,5.88e-09; 0.8,5.88e-09; 0.82,5.88e-09;
        0.84,5.88e-09; 0.86,5.88e-09; 0.88,5.88e-09; 0.9,5.88e-09; 0.92,5.88e-09;
        0.94,5.88e-09; 0.96,5.88e-09; 0.98,5.88e-09; 1,5.88e-09; 1.02,0.000111617;
        1.04,0.000218925; 1.06,0.000317911; 1.08,0.000407874; 1.1,0.00048882; 1.12,
        0.000561219; 1.14,0.000625797; 1.16,0.000683373; 1.18,0.000734769; 1.2,0.000780753;
        1.22,0.000822015; 1.24,0.000859162; 1.26,0.000892721; 1.28,0.000923144;
        1.3,0.00095082; 1.32,0.000976084; 1.34,0.000999219; 1.36,0.00102047; 1.38,
        0.00104006; 1.4,0.00105815; 1.42,0.00107491; 1.44,0.00109048; 1.46,0.00110497;
        1.48,0.0011185; 1.5,0.00113115; 1.52,0.001143; 1.54,0.00115412; 1.56,0.00116459;
        1.58,0.00117444; 1.6,0.00118375; 1.62,0.00119254; 1.64,0.00120086; 1.66,
        0.00120875; 1.68,0.00121624; 1.7,0.00122336; 1.72,0.00123013; 1.74,0.00123658;
        1.76,0.00124273; 1.78,0.00124861; 1.8,0.00125422; 1.82,0.00125959; 1.84,
        0.00126474; 1.86,0.00126966; 1.88,0.00127439; 1.9,0.00127893; 1.92,0.00128329;
        1.94,0.00128748; 1.96,0.00129152; 1.98,0.0012954; 2,0.00129915; 2.02,0.00129921;
        2.04,0.00129921; 2.06,0.00129921; 2.08,0.00129921; 2.1,0.00129921; 2.12,
        0.00129921; 2.14,0.00129921; 2.16,0.00129921; 2.18,0.00129921; 2.2,0.00129921;
        2.22,0.00129921; 2.24,0.00129921; 2.26,0.00129921; 2.28,0.00129921; 2.3,
        0.00129921; 2.32,0.00129921; 2.34,0.00129921; 2.36,0.00129921; 2.38,0.00129921;
        2.4,0.00129921; 2.42,0.00129921; 2.44,0.00129921; 2.46,0.00129921; 2.48,
        0.00129921; 2.5,0.00129921; 2.52,0.00129921; 2.54,0.00129921; 2.56,0.00129921;
        2.58,0.00129921; 2.6,0.00129921; 2.62,0.00129921; 2.64,0.00129921; 2.66,
        0.00129921; 2.68,0.00129921; 2.7,0.00129921; 2.72,0.00129921; 2.74,0.00129921;
        2.76,0.00129921; 2.78,0.00129921; 2.8,0.00129921; 2.82,0.00129921; 2.84,
        0.00129921; 2.86,0.00129921; 2.88,0.00129921; 2.9,0.00129921; 2.92,0.00129921;
        2.94,0.00129921; 2.96,0.00129921; 2.98,0.00129921; 3,0.00129921; 3.02,0.00129921;
        3.04,0.00129921; 3.06,0.00129921; 3.08,0.00129921; 3.1,0.00129921; 3.12,
        0.00129921; 3.14,0.00129921; 3.16,0.00129921; 3.18,0.00129921; 3.2,0.00129921;
        3.22,0.00129921; 3.24,0.00129921; 3.26,0.00129921; 3.28,0.00129921; 3.3,
        0.00129921; 3.32,0.00129921; 3.34,0.00129921; 3.36,0.00129921; 3.38,0.00129921;
        3.4,0.00129921; 3.42,0.00129921; 3.44,0.00129921; 3.46,0.00129921; 3.48,
        0.00129921; 3.5,0.00129921; 3.52,0.00129921; 3.54,0.00129921; 3.56,0.00129921;
        3.58,0.00129921; 3.6,0.00129921; 3.62,0.00129921; 3.64,0.00129921; 3.66,
        0.00129921; 3.68,0.00129921; 3.7,0.00129921; 3.72,0.00129921; 3.74,0.00129921;
        3.76,0.00129921; 3.78,0.00129921; 3.8,0.00129921; 3.82,0.00129921; 3.84,
        0.00129921; 3.86,0.00129921; 3.88,0.00129921; 3.9,0.00129921; 3.92,0.00129921;
        3.94,0.00129922; 3.96,0.00129922; 3.98,0.00129922; 4,0.00129922; 4.02,0.00129502;
        4.04,0.00129074; 4.06,0.00128645; 4.08,0.00128215; 4.1,0.00127784; 4.12,
        0.00127352; 4.14,0.00126919; 4.16,0.00126484; 4.18,0.00126049; 4.2,0.00125613;
        4.22,0.00125175; 4.24,0.00124737; 4.26,0.00124297; 4.28,0.00123856; 4.3,
        0.00123414; 4.32,0.00122971; 4.34,0.00122527; 4.36,0.00122082; 4.38,0.00121635;
        4.4,0.00121188; 4.42,0.00120739; 4.44,0.00120289; 4.46,0.00119838; 4.48,
        0.00119385; 4.5,0.00118932; 4.52,0.00118477; 4.54,0.00118021; 4.56,0.00117564;
        4.58,0.00117105; 4.6,0.00116646; 4.62,0.00116185; 4.64,0.00115722; 4.66,
        0.00115259; 4.68,0.00114794; 4.7,0.00114328; 4.72,0.0011386; 4.74,0.00113391;
        4.76,0.00112921; 4.78,0.0011245; 4.8,0.00111977; 4.82,0.00111502; 4.84,0.00111027;
        4.86,0.0011055; 4.88,0.00110071; 4.9,0.00109591; 4.92,0.0010911; 4.94,0.00108627;
        4.96,0.00108143; 4.98,0.00107657; 5,0.0010717; 5.02,0.00106681; 5.04,0.00106191;
        5.06,0.00105699; 5.08,0.00105205; 5.1,0.0010471; 5.12,0.00104214; 5.14,0.00103716;
        5.16,0.00103216; 5.18,0.00102715; 5.2,0.00102211; 5.22,0.00101707; 5.24,
        0.001012; 5.26,0.00100692; 5.28,0.00100183; 5.3,0.00099671; 5.32,0.000991578;
        5.34,0.000986428; 5.36,0.00098126; 5.38,0.000976073; 5.4,0.000970869; 5.42,
        0.000965646; 5.44,0.000960405; 5.46,0.000955145; 5.48,0.000949866; 5.5,0.000944567;
        5.52,0.00093925; 5.54,0.000933912; 5.56,0.000928555; 5.58,0.000923178; 5.6,
        0.00091778; 5.62,0.000912362; 5.64,0.000906923; 5.66,0.000901463; 5.68,0.000895981;
        5.7,0.000890478; 5.72,0.000884954; 5.74,0.000879407; 5.76,0.000873838; 5.78,
        0.000868246; 5.8,0.000862632; 5.82,0.000856995; 5.84,0.000851334; 5.86,0.000845649;
        5.88,0.00083994; 5.9,0.000834207; 5.92,0.00082845; 5.94,0.000822667; 5.96,
        0.000816859; 5.98,0.000811026; 6,0.000805166; 6.02,0.00079928; 6.04,0.000793368;
        6.06,0.000787428; 6.08,0.000781461; 6.1,0.000775467; 6.12,0.000769444; 6.14,
        0.000763392; 6.16,0.000757312; 6.18,0.000751202; 6.2,0.000745062; 6.22,0.000738892;
        6.24,0.000732691; 6.26,0.000726459; 6.28,0.000720195; 6.3,0.000713899; 6.32,
        0.000707571; 6.34,0.000701209; 6.36,0.000694814; 6.38,0.000688384; 6.4,0.000681919;
        6.42,0.000675419; 6.44,0.000668883; 6.46,0.00066231; 6.48,0.000655701; 6.5,
        0.000649053; 6.52,0.000642367; 6.54,0.000635642; 6.56,0.000628876; 6.58,
        0.000622071; 6.6,0.000615223; 6.62,0.000608334; 6.64,0.000601402; 6.66,0.000594426;
        6.68,0.000587405; 6.7,0.00058034; 6.72,0.000573228; 6.74,0.000566068; 6.76,
        0.000558861; 6.78,0.000551604; 6.8,0.000544297; 6.82,0.000536939; 6.84,0.000529528;
        6.86,0.000522065; 6.88,0.000514546; 6.9,0.000506972; 6.92,0.000499341; 6.94,
        0.000491651; 6.96,0.000483901; 6.98,0.00047609; 7,0.000468216; 7.02,0.000460279;
        7.04,0.000452275; 7.06,0.000444204; 7.08,0.000436064; 7.1,0.000427852; 7.12,
        0.000419567; 7.14,0.000411208; 7.16,0.000402772; 7.18,0.000394256; 7.2,0.000385659;
        7.22,0.000376978; 7.24,0.000368211; 7.26,0.000359356; 7.28,0.000350408;
        7.3,0.000341366; 7.32,0.000332226; 7.34,0.000322985; 7.36,0.00031364; 7.38,
        0.000304188; 7.4,0.000294623; 7.42,0.000284943; 7.44,0.000275141; 7.46,0.000265215;
        7.48,0.000255161; 7.5,0.000244971; 7.52,0.000234641; 7.54,0.000224164; 7.56,
        0.000213533; 7.58,0.000202744; 7.6,0.000191788; 7.62,0.000180656; 7.64,0.000169341;
        7.66,0.000157832; 7.68,0.000146121; 7.7,0.000134193; 7.72,0.00012204; 7.74,
        0.000109646; 7.76,9.7e-05; 7.78,8.41e-05; 7.8,7.09e-05; 7.82,5.73e-05; 7.84,
        4.35e-05; 7.86,2.93e-05; 7.88,1.47e-05; 7.9,-5e-07; 7.92,-3.12e-05; 7.94,
        -6.19e-05; 7.96,-9.27e-05; 7.98,-0.000123459; 8,-0.000154226; 8.02,-0.000154892;
        8.04,-0.000154892; 8.06,-0.000154892; 8.08,-0.000154892; 8.1,-0.000154892;
        8.12,-0.000154892; 8.14,-0.000154892; 8.16,-0.000154892; 8.18,-0.000154892;
        8.2,-0.000154892; 8.22,-0.000154892; 8.24,-0.000154892; 8.26,-0.000154892;
        8.28,-0.000154892; 8.3,-0.000154892; 8.32,-0.000154892; 8.34,-0.000154892;
        8.36,-0.000154892; 8.38,-0.000154892; 8.4,-0.000154892; 8.42,-0.000154892;
        8.44,-0.000154892; 8.46,-0.000154892; 8.48,-0.000154892; 8.5,-0.000154892;
        8.52,-0.000154892; 8.54,-0.000154892; 8.56,-0.000154892; 8.58,-0.000154892;
        8.6,-0.000154892; 8.62,-0.000154892; 8.64,-0.000154892; 8.66,-0.000154892;
        8.68,-0.000154892; 8.7,-0.000154892; 8.72,-0.000154892; 8.74,-0.000154892;
        8.76,-0.000154892; 8.78,-0.000154892; 8.8,-0.000154892; 8.82,-0.000154892;
        8.84,-0.000154892; 8.86,-0.000154892; 8.88,-0.000154892; 8.9,-0.000154892;
        8.92,-0.000154892; 8.94,-0.000154892; 8.96,-0.000154892; 8.98,-0.000154892;
        9,-0.000154892; 9.02,-0.000154892; 9.04,-0.000154892; 9.06,-0.000154892;
        9.08,-0.000154892; 9.1,-0.000154892; 9.12,-0.000154892; 9.14,-0.000154892;
        9.16,-0.000154892; 9.18,-0.000154892; 9.2,-0.000154892; 9.22,-0.000154892;
        9.24,-0.000154892; 9.26,-0.000154892; 9.28,-0.000154892; 9.3,-0.000154892;
        9.32,-0.000154892; 9.34,-0.000154892; 9.36,-0.000154892; 9.38,-0.000154892;
        9.4,-0.000154892; 9.42,-0.000154892; 9.44,-0.000154892; 9.46,-0.000154892;
        9.48,-0.000154892; 9.5,-0.000154892; 9.52,-0.000154892; 9.54,-0.000154892;
        9.56,-0.000154892; 9.58,-0.000154892; 9.6,-0.000154892; 9.62,-0.000154892;
        9.64,-0.000154892; 9.66,-0.000154892; 9.68,-0.000154892; 9.7,-0.000154892;
        9.72,-0.000154892; 9.74,-0.000154892; 9.76,-0.000154892; 9.78,-0.000154892;
        9.8,-0.000154892; 9.82,-0.000154892; 9.84,-0.000154892; 9.86,-0.000154892;
        9.88,-0.000154892; 9.9,-0.000154892; 9.92,-0.000154892; 9.94,-0.000154892;
        9.96,-0.000154892; 9.98,-0.000154892; 10,-0.000154892])
    annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
  Modelica.Blocks.Sources.CombiTimeTable y_answer(table=[0,59.9999; 0.02,59.9999;
        0.04,59.9999; 0.06,59.9999; 0.08,59.9999; 0.1,59.9999; 0.12,59.9999; 0.14,
        59.9999; 0.16,59.9999; 0.18,59.9999; 0.2,59.9999; 0.22,59.9999; 0.24,59.9999;
        0.26,59.9999; 0.28,59.9999; 0.3,59.9999; 0.32,59.9999; 0.34,59.9999; 0.36,
        59.9999; 0.38,59.9999; 0.4,59.9999; 0.42,59.9999; 0.44,59.9999; 0.46,59.9999;
        0.48,59.9999; 0.5,59.9999; 0.52,59.9999; 0.54,59.9999; 0.56,59.9999; 0.58,
        59.9999; 0.6,59.9999; 0.62,59.9999; 0.64,59.9999; 0.66,59.9999; 0.68,59.9999;
        0.7,59.9999; 0.72,59.9999; 0.74,59.9999; 0.76,59.9999; 0.78,59.9999; 0.8,
        59.9999; 0.82,59.9999; 0.84,59.9999; 0.86,59.9999; 0.88,59.9999; 0.9,59.9999;
        0.92,59.9999; 0.94,59.9999; 0.96,59.9999; 0.98,59.9999; 1,59.9999; 1.02,
        58.6347; 1.04,56.8522; 1.06,54.7995; 1.08,52.594; 1.1,50.3329; 1.12,48.0885;
        1.14,45.9096; 1.16,43.8263; 1.18,41.8546; 1.2,40.001; 1.22,38.2657; 1.24,
        36.6452; 1.26,35.1338; 1.28,33.7247; 1.3,32.4106; 1.32,31.1844; 1.34,30.039;
        1.36,28.968; 1.38,27.9652; 1.4,27.025; 1.42,26.1422; 1.44,25.3123; 1.46,
        24.5309; 1.48,23.7942; 1.5,23.0987; 1.52,22.4412; 1.54,21.8188; 1.56,21.2289;
        1.58,20.6691; 1.6,20.1373; 1.62,19.6315; 1.64,19.1499; 1.66,18.6908; 1.68,
        18.2527; 1.7,17.8343; 1.72,17.4343; 1.74,17.0515; 1.76,16.6849; 1.78,16.3335;
        1.8,15.9963; 1.82,15.6726; 1.84,15.3616; 1.86,15.0625; 1.88,14.7746; 1.9,
        14.4975; 1.92,14.2304; 1.94,13.9729; 1.96,13.7245; 1.98,13.4846; 2,13.253;
        2.02,13.2487; 2.04,13.2487; 2.06,13.2487; 2.08,13.2487; 2.1,13.2487; 2.12,
        13.2487; 2.14,13.2487; 2.16,13.2487; 2.18,13.2487; 2.2,13.2487; 2.22,13.2487;
        2.24,13.2487; 2.26,13.2487; 2.28,13.2487; 2.3,13.2487; 2.32,13.2487; 2.34,
        13.2487; 2.36,13.2487; 2.38,13.2487; 2.4,13.2487; 2.42,13.2487; 2.44,13.2487;
        2.46,13.2487; 2.48,13.2487; 2.5,13.2487; 2.52,13.2487; 2.54,13.2487; 2.56,
        13.2487; 2.58,13.2487; 2.6,13.2487; 2.62,13.2487; 2.64,13.2487; 2.66,13.2487;
        2.68,13.2487; 2.7,13.2487; 2.72,13.2487; 2.74,13.2487; 2.76,13.2487; 2.78,
        13.2487; 2.8,13.2487; 2.82,13.2487; 2.84,13.2487; 2.86,13.2487; 2.88,13.2487;
        2.9,13.2487; 2.92,13.2487; 2.94,13.2487; 2.96,13.2487; 2.98,13.2487; 3,13.2487;
        3.02,13.2487; 3.04,13.2487; 3.06,13.2487; 3.08,13.2487; 3.1,13.2487; 3.12,
        13.2487; 3.14,13.2487; 3.16,13.2487; 3.18,13.2487; 3.2,13.2487; 3.22,13.2487;
        3.24,13.2487; 3.26,13.2487; 3.28,13.2487; 3.3,13.2487; 3.32,13.2487; 3.34,
        13.2487; 3.36,13.2487; 3.38,13.2487; 3.4,13.2487; 3.42,13.2487; 3.44,13.2487;
        3.46,13.2487; 3.48,13.2487; 3.5,13.2487; 3.52,13.2487; 3.54,13.2487; 3.56,
        13.2487; 3.58,13.2487; 3.6,13.2487; 3.62,13.2487; 3.64,13.2487; 3.66,13.2487;
        3.68,13.2487; 3.7,13.2487; 3.72,13.2487; 3.74,13.2487; 3.76,13.2487; 3.78,
        13.2487; 3.8,13.2487; 3.82,13.2487; 3.84,13.2487; 3.86,13.2487; 3.88,13.2487;
        3.9,13.2487; 3.92,13.2487; 3.94,13.2487; 3.96,13.2487; 3.98,13.2487; 4,13.2487;
        4.02,13.508; 4.04,13.7722; 4.06,14.0362; 4.08,14.3002; 4.1,14.564; 4.12,
        14.8278; 4.14,15.0914; 4.16,15.3549; 4.18,15.6183; 4.2,15.8816; 4.22,16.1448;
        4.24,16.4079; 4.26,16.6708; 4.28,16.9337; 4.3,17.1964; 4.32,17.459; 4.34,
        17.7215; 4.36,17.9839; 4.38,18.2462; 4.4,18.5083; 4.42,18.7703; 4.44,19.0323;
        4.46,19.294; 4.48,19.5557; 4.5,19.8172; 4.52,20.0787; 4.54,20.3399; 4.56,
        20.6011; 4.58,20.8621; 4.6,21.123; 4.62,21.3838; 4.64,21.6445; 4.66,21.905;
        4.68,22.1654; 4.7,22.4256; 4.72,22.6857; 4.74,22.9457; 4.76,23.2055; 4.78,
        23.4652; 4.8,23.7248; 4.82,23.9842; 4.84,24.2435; 4.86,24.5026; 4.88,24.7616;
        4.9,25.0204; 4.92,25.2791; 4.94,25.5377; 4.96,25.796; 4.98,26.0543; 5,26.3124;
        5.02,26.5703; 5.04,26.8281; 5.06,27.0857; 5.08,27.3432; 5.1,27.6005; 5.12,
        27.8576; 5.14,28.1146; 5.16,28.3714; 5.18,28.628; 5.2,28.8845; 5.22,29.1408;
        5.24,29.3969; 5.26,29.6529; 5.28,29.9087; 5.3,30.1643; 5.32,30.4197; 5.34,
        30.6749; 5.36,30.93; 5.38,31.1849; 5.4,31.4396; 5.42,31.6941; 5.44,31.9484;
        5.46,32.2025; 5.48,32.4564; 5.5,32.7102; 5.52,32.9637; 5.54,33.217; 5.56,
        33.4702; 5.58,33.7231; 5.6,33.9758; 5.62,34.2283; 5.64,34.4806; 5.66,34.7327;
        5.68,34.9845; 5.7,35.2362; 5.72,35.4876; 5.74,35.7388; 5.76,35.9898; 5.78,
        36.2405; 5.8,36.491; 5.82,36.7413; 5.84,36.9913; 5.86,37.2411; 5.88,37.4906;
        5.9,37.7399; 5.92,37.9889; 5.94,38.2377; 5.96,38.4862; 5.98,38.7345; 6,38.9825;
        6.02,39.2302; 6.04,39.4777; 6.06,39.7248; 6.08,39.9717; 6.1,40.2184; 6.12,
        40.4647; 6.14,40.7107; 6.16,40.9565; 6.18,41.2019; 6.2,41.447; 6.22,41.6919;
        6.24,41.9364; 6.26,42.1806; 6.28,42.4244; 6.3,42.668; 6.32,42.9112; 6.34,
        43.154; 6.36,43.3965; 6.38,43.6387; 6.4,43.8805; 6.42,44.122; 6.44,44.3631;
        6.46,44.6038; 6.48,44.8441; 6.5,45.0841; 6.52,45.3236; 6.54,45.5628; 6.56,
        45.8015; 6.58,46.0399; 6.6,46.2778; 6.62,46.5153; 6.64,46.7523; 6.66,46.9889;
        6.68,47.225; 6.7,47.4607; 6.72,47.6959; 6.74,47.9306; 6.76,48.1649; 6.78,
        48.3986; 6.8,48.6318; 6.82,48.8645; 6.84,49.0967; 6.86,49.3283; 6.88,49.5594;
        6.9,49.7899; 6.92,50.0198; 6.94,50.2491; 6.96,50.4778; 6.98,50.7059; 7,50.9333;
        7.02,51.1601; 7.04,51.3862; 7.06,51.6116; 7.08,51.8363; 7.1,52.0603; 7.12,
        52.2836; 7.14,52.5061; 7.16,52.7278; 7.18,52.9487; 7.2,53.1687; 7.22,53.388;
        7.24,53.6063; 7.26,53.8237; 7.28,54.0402; 7.3,54.2557; 7.32,54.4702; 7.34,
        54.6838; 7.36,54.8962; 7.38,55.1075; 7.4,55.3177; 7.42,55.5267; 7.44,55.7345;
        7.46,55.9411; 7.48,56.1463; 7.5,56.3501; 7.52,56.5525; 7.54,56.7534; 7.56,
        56.9527; 7.58,57.1505; 7.6,57.3465; 7.62,57.5407; 7.64,57.7331; 7.66,57.9235;
        7.68,58.1118; 7.7,58.2979; 7.72,58.4817; 7.74,58.6631; 7.76,58.8419; 7.78,
        59.0179; 7.8,59.1909; 7.82,59.3608; 7.84,59.5273; 7.86,59.6902; 7.88,59.849;
        7.9,60.005; 7.92,60.3116; 7.94,60.6193; 7.96,60.9269; 7.98,61.2346; 8,61.5423;
        8.02,61.5489; 8.04,61.5489; 8.06,61.5489; 8.08,61.5489; 8.1,61.5489; 8.12,
        61.5489; 8.14,61.5489; 8.16,61.5489; 8.18,61.5489; 8.2,61.5489; 8.22,61.5489;
        8.24,61.5489; 8.26,61.5489; 8.28,61.5489; 8.3,61.5489; 8.32,61.5489; 8.34,
        61.5489; 8.36,61.5489; 8.38,61.5489; 8.4,61.5489; 8.42,61.5489; 8.44,61.5489;
        8.46,61.5489; 8.48,61.5489; 8.5,61.5489; 8.52,61.5489; 8.54,61.5489; 8.56,
        61.5489; 8.58,61.5489; 8.6,61.5489; 8.62,61.5489; 8.64,61.5489; 8.66,61.5489;
        8.68,61.5489; 8.7,61.5489; 8.72,61.5489; 8.74,61.5489; 8.76,61.5489; 8.78,
        61.5489; 8.8,61.5489; 8.82,61.5489; 8.84,61.5489; 8.86,61.5489; 8.88,61.5489;
        8.9,61.5489; 8.92,61.5489; 8.94,61.5489; 8.96,61.5489; 8.98,61.5489; 9,61.5489;
        9.02,61.5489; 9.04,61.5489; 9.06,61.5489; 9.08,61.5489; 9.1,61.5489; 9.12,
        61.5489; 9.14,61.5489; 9.16,61.5489; 9.18,61.5489; 9.2,61.5489; 9.22,61.5489;
        9.24,61.5489; 9.26,61.5489; 9.28,61.5489; 9.3,61.5489; 9.32,61.5489; 9.34,
        61.5489; 9.36,61.5489; 9.38,61.5489; 9.4,61.5489; 9.42,61.5489; 9.44,61.5489;
        9.46,61.5489; 9.48,61.5489; 9.5,61.5489; 9.52,61.5489; 9.54,61.5489; 9.56,
        61.5489; 9.58,61.5489; 9.6,61.5489; 9.62,61.5489; 9.64,61.5489; 9.66,61.5489;
        9.68,61.5489; 9.7,61.5489; 9.72,61.5489; 9.74,61.5489; 9.76,61.5489; 9.78,
        61.5489; 9.8,61.5489; 9.82,61.5489; 9.84,61.5489; 9.86,61.5489; 9.88,61.5489;
        9.9,61.5489; 9.92,61.5489; 9.94,61.5489; 9.96,61.5489; 9.98,61.5489; 10,
        61.5489])
    annotation (Placement(transformation(extent={{22,-10},{42,10}})));

  Utilities.ErrorAnalysis.UnitTests unitTests(x={y}, x_reference={
        y_answer.y[1]})
    annotation (Placement(transformation(extent={{80,80},{100,100}})));
equation

  y = quadraticCurve(x_input.y[1], {0,0.001,0.0015}, {60,30,0});

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    experiment(StopTime=10));
end QuadraticCurve_Test;
