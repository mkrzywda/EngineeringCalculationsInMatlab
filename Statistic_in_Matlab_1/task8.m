close all; clear all; clc;
%Kolor i styl linii, kształt markera
x=linspace(-pi,pi,11);
y=sin(x);
plot(x,y,'r--',x,y,'ks','LineWidth',3);

%Kolory:
%	r – czerwony
%	g – zielony
%	b – niebieski
%	c – jasnoniebieski (turkusowy, cyan)
%	m – fioletowy (purpurowy, magenta)
%	y –żółty
%	k –czarny (key colour)
%	w –biały

%Styl linii:
%	- ciągła (domyślnie) (solid)
%	-- przerywana (dashed)
%	: kropkowana (dotted)
%	-. przerywana-kropkowana (dashed-dotted)

%Markery:
%	+ znak plus
%	o kółko
%	* gwiazdka
%	. punkt (kropka)
%	x krzyżyk
%	s kwadrat
%	d karo (diamond)
%	^ trójkąt 1. typ
%	v trójkąt 2. typ
%	> trójkąt 3. typ
%	< trójkąt 4. typ
%	p 5-ramienna gwiazda (pentagram)
%	h 6-ramienna gwiazda (hexagram)