if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="diagram1-1";
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

/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; usepackage("amsmath"); usepackage("amssymb"); size(9.517959399689884cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -5.182831594104163, xmax = 26.54369973819545, ymin = -5.198710617556231, ymax = 14.704796974288627; /* image dimensions */

/* draw figures */
draw((2.,12.)--(10.,4.), linewidth(1.2));
draw((10.,12.)--(2.,4.), linewidth(1.2));
draw((0.,2.)--(12.,2.), linewidth(1.2));
draw((4.,10.)--(4.,2.), linewidth(1.2));
label("$V(x^2-y^2)$",(7.802647717954124,8.977576841022728),SE*labelscalefactor);
label("$\mathbb{A}^1$",(7.093833345025178,3.2220041328396705),SE*labelscalefactor);
/* dots and labels */
dot((4.,2.),linewidth(3.pt) + dotstyle);
label("$A$", (4.116812978723606,2.1729588609048274), NE * labelscalefactor);
dot((4.,10.),linewidth(3.pt) + dotstyle);
label("$A_1$", (2.954357407120135,9.714743788868834), NE * labelscalefactor);
dot((4.,6.),linewidth(3.pt) + dotstyle);
label("$A_2$", (2.926004832202977,6.170671924224094), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
