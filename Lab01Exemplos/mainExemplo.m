P = readText('NotesUndergound.txt');

C = monoalfabeticaE(P,'knmporqtsvuxwzybadcfeghjil');

[rateMono character] = countCharacters(C);
    
plot([1:26],rateMono);
legend('Monoalfabetica');
title('Frequencia de Letras em Textos Cifrados');
xlabel('letras');
ylabel('percentagem de ocorrencia');
print -dpng lab1_mono.png


C = vigenereE(P,'dtak');

%saveText(C,'crimepunishment_Cifrado.txt');
[rateMono character] = countCharacters(C);
    
plot([1:26],rateMono);
legend('vigenere');
title('Frequencia de Letras em Textos Cifrados');
xlabel('letras');
ylabel('percentagem de ocorrencia');
print -dpng lab1_vigenere.png
