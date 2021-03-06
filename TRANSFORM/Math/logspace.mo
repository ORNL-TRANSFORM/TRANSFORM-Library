within TRANSFORM.Math;
function logspace "Create log spaced vector"
  input Real start "Start value";
  input Real stop "Stop value";
  input Integer n "Number of generated points";
  output Real[n] x "Logarithmically spaced vector";
  output Real[n-1] dx "Spacing between generated points";
protected
  Real t "Scaling value";
algorithm
  assert((start > 0 and stop>0) or (start<0 and stop<0), "Start and stop values must both be greater or less than zero");
  if n == 1 then
    t := 0;
    x[1] := stop;
  else
    t := (stop/start)^(1/(n - 1));
    for i in 1:n loop
      x[i] := start*t^(i - 1);
    end for;
  end if;
  for i in 1:n-1 loop
    dx[i] :=x[i + 1] - x[i];
  end for;
  annotation (Documentation(info="<html>
<p>logspace(start,stop,n) generates a row vector of n logarithmically equally spaced points between decades start and stop and the spacing between values.</p>
<p>For n = 1, logspace returns stop.</p>
<p><br>Example:</p>
<p>n = 10</p>
<p>logspace(1,10,n)</p>
<p>x[n] = {1,1.29,1.67,2.15,2.78,3.59,4.64,5.99,7.74,10}</p>
<p>dx[n-1] = {0.29,0.38,0.49,0.63,0.81,1.05,1.35,1.75,2.26}</p>
</html>"));
end logspace;
