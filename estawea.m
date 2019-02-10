%leer imagen
img=imread('/Users/jared/Desktop/proc_img/img-dataset/Dataset/test.jpg');

%imshow(img);

x=double(img);
gamma=0.5;
m=256;

fun_gama=255.*(x./max(x)).^gamma;
fun_inversa=(255-x);
%imshow(fun_gama);
fun_inversa=(255.-fun_gama);
c=255/log(m);
fun_log=c*log(1+x);
e=10;
m=100;
funcion_stiramiento=255*(1./(1+(50./x).^e));

%imhist(img)



imshow([uint8(fun_gama),uint8(fun_inversa),uint8(fun_log),uint8(funcion_stiramiento)]);




%
%x= (1:256);

%funcion gamma
fun_gama=(x/gamma).^gamma;
%plot(x,fun_gama);

%funcion inversa
fun_inversa=(256-x);
%imshow(img);
%plot(x,fun_inversa);

%funcion logaritmica
c=1;
fun_log=c*log(1+x);
%plot(x,fun_log);

%funcion transformacion de estirammiento
e=150;
funcion_stiramiento=1./(1+(128./x).^e);
%plot(x,funcion_stiramiento);
