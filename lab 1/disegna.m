%Esempio di file script Matlab per disegnare una funzione
%previamente definita con il comando inline. 
%Uso dei comandi hold on e hold off per sovrapporre 
%piu' grafici nella stessa finestra grafica. Fa uso del comando input.


%DISEGNA Script per tracciare il grafico di una
%        funzione in un intervallo [a,b]
%
% Dati da fornire in ingresso:
%   funs:   stringa contenente l'espressione
%           della funzione (attenzione alle operazioni
%           che necessitano del . (punto)
%   a:      primo estremo
%   b:      secondo estremo
%   n:      numero di nodi equidistanti dell'intervallo
%           in cui viene valutata la funzione 

% Parte di ingresso dati
a = input(' Dammi l''estremo sinistro: ');
b = input(' Dammi l''estremo destro: ');
funs = input(' Dammi la stringa funzione: ');
n = input(' Dammi il numero di punti: ');
%
disp(' Estremo sinistro'); disp(a)
disp(' Estremo destro'); disp(b)
disp(' Numero di punti'); disp(n)
fun = inline(funs);
disp(' Funzione'); disp(fun)
%
% Definisce il vettore delle ascisse
x = linspace(a, b, n);
%
% Definisce il vettore delle ordinate
y = fun(x);
%
% Disegna la curva nell'intervallo [a,b]
plot(x,y)
% Disegna l'asse x nell'intervallo [a,b]
hold on
plot([a,b],[0,0],'k-')
hold off