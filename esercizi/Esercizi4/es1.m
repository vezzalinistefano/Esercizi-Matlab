clear all
close all

N = 128;

x = (linspace(-10,10,N))';
y = exp((-x.^2)./2);

z = zeros(length(y),1);
z(39:89) = y(39:89);

s = zeros(N,1);
s([(30:40) (90:95)]) = 1;
s(45:60) = -.5;
s(75:85) = 2;

subplot(2,1,1),plot(z,'LineWidth',1.5);
subplot(2,1,2),plot(s,'LineWidth',1.5);

c = [z(N/2+1:end);z(1:N/2)];
% for i = 1:N
%     if i <= N/2
%         c(i) = z(i)*N/2+i;
%     else
%         c(i) = z(i)-N/2;
%     end
% end

A = circolante(c);

b1 = A*s;
x1 = A\b1;
b2 = b1 + 1e-4*randn(N,1);
x2 = A\b2;

figure;
subplot(2,1,1);plot(b1,'LineWidth', 1.5);
subplot(2,1,2);plot(b2,'LineWidth', 1.5);


figure;
subplot(2,1,1);plot(x1,'b');
subplot(2,1,2);plot(x2,'r');

fprintf("Numero di condizionamento di A: %g\n", cond(A));

err = norm(s - x2)/norm(s);

fprintf("Errore relativo: %g\n", err);



