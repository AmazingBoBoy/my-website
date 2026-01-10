if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="note-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

defaultpen(fontsize(10pt));
size(8cm); // set a reasonable default
usepackage("amsmath");
usepackage("amssymb");
settings.tex="pdflatex";
settings.outformat="pdf";
// Replacement for olympiad+cse5 which is not standard
import geometry;
// recalibrate fill and filldraw for conics
void filldraw(picture pic = currentpicture, conic g, pen fillpen=defaultpen, pen drawpen=defaultpen)
{ filldraw(pic, (path) g, fillpen, drawpen); }
void fill(picture pic = currentpicture, conic g, pen p=defaultpen)
{ filldraw(pic, (path) g, p); }
// some geometry
pair foot(pair P, pair A, pair B) { return foot(triangle(A,B,P).VC); }
pair centroid(pair A, pair B, pair C) { return (A+B+C)/3; }
// cse5 abbreviations
path CP(pair P, pair A) { return circle(P, abs(A-P)); }
path CR(pair P, real r) { return circle(P, r); }
pair IP(path p, path q) { return intersectionpoints(p,q)[0]; }
pair OP(path p, path q) { return intersectionpoints(p,q)[1]; }
path Line(pair A, pair B, real a=0.6, real b=a) { return (a*(A-B)+A)--(b*(B-A)+B); }
// cse5 more useful functions
picture CC() {
picture p=rotate(0)*currentpicture;
currentpicture.erase();
return p;
}
pair MP(Label s, pair A, pair B = plain.S, pen p = defaultpen) {
Label L = s;
L.s = "$"+s.s+"$";
label(L, A, B, p);
return A;
}
pair Drawing(Label s = "", pair A, pair B = plain.S, pen p = defaultpen) {
dot(MP(s, A, B, p), p);
return A;
}
path Drawing(path g, pen p = defaultpen, arrowbar ar = None) {
draw(g, p, ar);
return g;
}

import graph; size(9.98895cm);
pen ffxfqq = rgb(1.,0.49803,0.); pen yqqqqq = rgb(0.50196,0.,0.); pen zzttqq = rgb(0.6,0.2,0.); pen qqwuqq = rgb(0.,0.39215,0.);
pair H = (0.2,3.2), B = (-1.,0.2), C = (2.2,0.2), A = (0.2,1.), Y = (-0.55862,1.30344), Z = (1.21538,1.67692), F = (1.57146,1.14279), Q = (-0.68,2.76), M = (0.87710,0.51931);
draw(H--B--C--cycle, linewidth(0.6) + zzttqq);
draw(circle((0.34465,1.81068), 1.39682), linewidth(0.6) + ffxfqq);
draw(circle((0.2,2.1), 1.1), linewidth(0.6) + yqqqqq);
draw(circle((0.6,1.3), 1.94164), linewidth(0.6) + yqqqqq);
draw(H--B, linewidth(0.6) + zzttqq);
draw(B--C, linewidth(0.6) + zzttqq);
draw(C--H, linewidth(0.6) + zzttqq);
draw(B--Z, linewidth(0.6));
draw(C--Y, linewidth(0.6));
draw(B--F, linewidth(0.6) + blue);
draw(C--(-0.71824,0.90439), linewidth(0.6) + blue);
draw((0.6,0.2)--Q, linewidth(0.6) + green);
draw(circle((-1.,1.5), 1.3), linewidth(0.6) + qqwuqq);
draw((-0.71824,0.90439)--F, linewidth(0.6) + yqqqqq);
dot("$H$", H, dir((-5.899, 6.902)));
dot("$B$", B, dir((-8.675, -9.665)));
dot("$C$", C, dir((5.858, -4.103)));
dot("$A$", A, dir((1.801, 3.594)));
dot("$Y$", Y, dir((-13.028, -3.649)));
dot("$Z$", Z, dir((6.784, -1.212)));
dot("$E$", (-0.71824,0.90439), dir((-10.327, -2.673)));
dot("$F$", F, dir((7.966, -3.412)));
dot("$Q$", Q, dir((-8.162, 8.978)));
dot("$N$", (-0.15969,0.50808), dir((1.837, -9.672)));
dot("$W$", (0.6,0.2), dir((-1.409, -11.804)));
dot("$M$", M, dir((-1.312, -9.939)));
