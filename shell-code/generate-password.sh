
# To generate random password.

PASS_WORD=$RANDOM 
echo "Password using RANDOM function is ${PASS_WORD}"

PASS_WORD=$(date +%s%N)
echo "Password using DATE function is ${PASS_WORD}"

PASS_WORD=$(date +%s%N | sha256sum | head -c20)
echo "Password using SHA256 function is ${PASS_WORD}"

PASS_WORD_C=$(echo "!@#$%^&*" | fold -1 | shuf | head -c1)
echo "Password special character is ${PASS_WORD_C}"

echo "Strong password is ${PASS_WORD}${PASS_WORD_C}"

