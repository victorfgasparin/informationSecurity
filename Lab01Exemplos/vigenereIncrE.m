function C = vigenereIncrE(P,K)

C = P;
% Elimina caracteres que nao sao texto
indexTexto = find((P>='a'&P<='z')|(P>='A'&P<='Z'));
P = P(indexTexto);

% Reduz a caixa de todos caracteres
indexCaixaAlta = find((P>='A'&P<='Z'));
P(indexCaixaAlta) = P(indexCaixaAlta) + ('a'-'A');

tamTexto = length(P);
tamChave = length(K);
K = K - 'a';
P(1) = mod(P(1) - 'a' + K, 26) + 'a'; 
for i=2:tamTexto
	P(i) = mod(P(i) - 'a' + P(i-1) - 'a', 26) + 'a';
endfor

% Retorna para caixa alta
P(indexCaixaAlta) = P(indexCaixaAlta) + ('A'-'a');

% Atualiza caracteres que sao texto
C(indexTexto) = P;

end
