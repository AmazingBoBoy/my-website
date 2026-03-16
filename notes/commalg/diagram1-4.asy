if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="diagram1-4";
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
import contour; import graph; size(5.cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(7); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -2.5, xmax = 2.5, ymin = -2.5, ymax = 2.5; /* image dimensions */

/* draw figures */
real implicitf1 (real x, real y) { return 1.0*y^2-1.0*x^2-1.0*x^3; }
draw(contour(implicitf1, (-1.7,-1.7), (1.7,1.7), new real[]{0}, 500), linewidth(1.2));
fill(shift((0.,2.)) * rotate(90) * scale(0.10583333333333333) * ((1,0)--expi(2*pi/3)--expi(4*pi/3)--cycle)); /* special point */
draw((0.,2.)--(0.,-2.), linewidth(1.2));
fill(shift((2.,0.)) * scale(0.10583333333333333) * ((1,0)--expi(2*pi/3)--expi(4*pi/3)--cycle)); /* special point */
draw((-2.,0.)--(2.,0.), linewidth(1.2));
/* dots and labels */
dot((0.,0.),linewidth(5) + dotstyle);
label("$Y$", (0.05863277836566511,2.096821882277555), NE * labelscalefactor);
label("$X$", (2.0655950238321843,0.08985963681102677), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
