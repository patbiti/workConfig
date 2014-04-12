export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:/Users/pat/opt/apache-maven-3.0.3/bin
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' -e 's/((/(/' -e 's/))/)/'
}
#export PS1="\u$white $yellow\w"$red'$(parse_git_branch)'"\[\e[1;30m\] $normal\$ "
#Prompt
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"
