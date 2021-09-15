# Ciphers
Some ciphers in Prolog language

## Installation
### Install SWI-Prolog on Linux
```bash
sudo apt-add-repository ppa:swi-prolog/stable
sudo apt-get update
sudo apt-get install swi-prolog
```

## Run
```bash
git clone https://github.com/Oleg42-prog/Ciphers.git
cd Ciphers
swipl ciphers.pl
```

## Examples
```
?- caesarCipher('C', `HELLO`, X).
X = "JGNNQ" .


?- deCaesarCipher('C', X, `JGNNQ`).
X = "HELLO" .

?- vigenereCipher(`LEMON`, `ATTACKATDAWN`, X).
X = "LXFOPVEFRNHR" .

?- deVigenereCipher(`LEMON`, X, `LXFOPVEFRNHR`).
X = "ATTACKATDAWN" .
```
