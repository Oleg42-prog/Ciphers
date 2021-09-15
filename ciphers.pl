order('Z', 'A').
order(A, B) :- string_chars(`ABCDEFGHIJKLMNOPQRSTUVWXYZ`, Alphabet),
nextto(A, B, Alphabet).

caesar(K, 'A', K).
caesar(K, A, X) :- 
	caesar(K, B, Y),
	order(A, B),
	order(X, Y).


caesarCipherLists(Key, PlainList, EncryptedList) :- maplist(caesar(Key), PlainList, EncryptedList).

caesarCipher(Key, PlainString, EncryptedString) :- 
	string_chars(PlainString, PlainList),
	caesarCipherLists(Key, PlainList, EncryptedList),
	string_chars(EncryptedString, EncryptedList).

deCaesarCipher(Key, PlainString, EncryptedString) :- 
	string_chars(EncryptedString, EncryptedList),
	caesarCipherLists(Key, PlainList, EncryptedList),
	string_chars(PlainString, PlainList).


vigenereCipherLists(KeyList, PlainList, EncryptedList) :- maplist(caesar, KeyList, PlainList, EncryptedList).

vigenereCipher(KeyString, PlainString, EncryptedString) :- 
	string_chars(KeyString, KeyList),
	string_chars(PlainString, PlainList),
	vigenereCipherLists(KeyList, PlainList, EncryptedList),
	string_chars(EncryptedString, EncryptedList).

deVigenereCipher(KeyString, PlainString, EncryptedString) :- 
	string_chars(KeyString, KeyList),
	string_chars(EncryptedString, EncryptedList),
	vigenereCipherLists(KeyList, PlainList, EncryptedList),
	string_chars(PlainString, PlainList).