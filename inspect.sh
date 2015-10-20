
_inspect() {
    docker inspect -f "{{.$2}}" $1 
}

get_user() {
    _inspect $1 'Config.User'
}

get_env() {
    _inspect $1 'Config.Env' | tr -s ' ' '\n' | tr -d '[' | tr -d ']' 
}

get_shell_var2() {
    get_env $1 | grep "^$2=\.*" | cut -f2 -d=
}

get_shell_var() {
    get_shell_var2 $1 'SHELL'
}
