function C = vigenereE(P,K)

C = P;
% Elimina caracteres que nao sao texto
indexTexto = find((P>='a'&P<='z')|(P>='A'&P<='Z'));
P = P(indexTexto);

% Reduz a caixa de todos caracteres
indexCaixaAlta = find((P>='A'&P<='Z'));
P(indexCaixaAlta) = P(indexCaixaAlta) + ('a'-'A');

tamTexto = length(P);
tamChave = length(K);
chaveAux = (mod([0:tamTexto - 1], 3) + 1) * -1;

K = K - 'a';
for i=1:tamChave
chaveAux(find(chaveAux == i*-1)) = K(i);
endfor

P = mod(P - 'a' + chaveAux, 26) + 'a';

% Retorna para caixa alta
P(indexCaixaAlta) = P(indexCaixaAlta) + ('A'-'a');

% Atualiza caracteres que sao texto
C(indexTexto) = P;

end
