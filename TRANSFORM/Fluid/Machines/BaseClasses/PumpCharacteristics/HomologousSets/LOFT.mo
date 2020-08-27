within TRANSFORM.Fluid.Machines.BaseClasses.PumpCharacteristics.HomologousSets;
model LOFT "LOFT pump"
  //https://www.nrc.gov/docs/ML0702/ML070250396.pdf Fig 97 pg 161
  extends PartialHomoSet(
  table_BAN=[ 0.00, 0.60; 0.10, 0.61; 0.20, 0.63; 0.60, 0.83; 1.00, 1.00],
  table_BAD=[-1.00, 2.00;-0.80, 1.40;-0.70, 1.20;-0.60, 1.03;-0.40, 0.80;-0.20, 0.66;-0.10, 0.61; 0.00, 0.60],
  table_BAR=[-1.00,-1.00;-0.30,-0.90;-0.10,-0.52; 0.00,-0.47],
  table_BAT=[ 0.00,-0.47; 0.40,-0.27; 0.50, 0.00; 1.00, 0.34],
  table_BVN=[ 0.00,-0.68; 0.40,-0.27; 0.50, 0.15; 1.00, 1.00],
  table_BVD=[-1.00, 2.00;-0.10, 1.35; 0.00, 1.26],
  table_BVR=[-1.00,-1.00;-0.30,-0.90;-0.20,-0.87;-0.10,-0.81; 0.00,-0.68],
  table_BVT=[ 0.00, 1.26; 0.50, 0.83; 1.00, 0.34],
  table_HAN=[ 0.00, 1.40; 0.40, 1.30; 1.00, 1.00],
  table_HAD=[-1.00, 2.44;-0.80, 2.03;-0.40, 1.60;-0.20, 1.47; 0.00, 1.40],
  table_HAR=[-1.00,-1.00;-0.80,-0.60;-0.60,-0.30;-0.44,-0.10;-0.23, 0.10; 0.00, 0.24],
  table_HAT=[ 0.00, 0.24; 0.39, 0.33; 0.40, 0.27; 0.62, 0.48; 0.90, 0.83; 1.00, 1.00],
  table_HVN=[ 0.00,-0.68; 0.20,-0.51; 0.40,-0.28; 0.60, 0.00; 0.70, 0.18; 0.80, 0.40; 1.00, 1.00],
  table_HVD=[-1.00, 2.44;-0.83, 2.00;-0.70, 1.70;-0.65, 1.60;-0.45, 1.32;-0.17, 1.10; 0.00, 0.93],
  table_HVR=[-1.00,-1.00;-0.40,-0.88;-0.30,-0.83; 0.00,-0.68],
  table_HVT=[ 0.00, 0.93; 0.50, 0.83; 0.78, 0.83; 0.95, 0.93; 1.00, 1.00],
  tCCF = table_BAN[end,2],
  hCCF = table_HAN[end,2]);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end LOFT;
