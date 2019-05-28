# Append me to the end of the target users ~/.kshrc
LOGNAME=$(command logname)
LOGHOME=$(command getent passwd "${LOGNAME}" | cut -d: -f6)
if [ -r "${LOGHOME}/.kshrc" ]
then
    . "${LOGHOME}/.kshrc"
fi
