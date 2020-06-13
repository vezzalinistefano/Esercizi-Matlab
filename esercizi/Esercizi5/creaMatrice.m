function A = creaMatrice(psf,idx)
% creaMatrice - Crea la matrice di sfocamento
%               (condizioni di bordo periodiche)
%               
%
%   SYNOPSIS
%       A = creaMatrice(psf,idx)
%
%   INPUT
%       psf         (double)        - PSF in forma matriciale di dimensione NxN
%       idx         (double)        - Matrice circolante di parametri
%                                     (1,2,...,N)
%
%   OUTPUT
%       A           (double)        - Matrice di sfocamento circolante a 
%                                     blocchi circolanti (condizioni al
%                                     bordo periodiche)

% Dimensione
N = size(psf,1);

% Shift e vettorizzazione
psf_s = fftshift(psf);
psf_s = psf_s(:);

% Creazione degli indici
B = ones(N);
R = kron(B,idx); % indici di righe
C = kron(idx,B); % indici di colonne
IDX = N*(C-1)+R; % indici vettoriali

% Creazione della matrice
A = psf_s(IDX);
A = sparse(A);