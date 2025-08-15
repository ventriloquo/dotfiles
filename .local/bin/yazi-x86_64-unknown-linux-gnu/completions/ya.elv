
use builtin;
use str;

set edit:completion:arg-completer[ya] = {|@words|
    fn spaces {|n|
        builtin:repeat $n ' ' | str:join ''
    }
    fn cand {|text desc|
        edit:complex-candidate $text &display=$text' '(spaces (- 14 (wcswidth $text)))$desc
    }
    var command = 'ya'
    for word $words[1..-1] {
        if (str:has-prefix $word '-') {
            break
        }
        set command = $command';'$word
    }
    var completions = [
        &'ya'= {
            cand -V 'Print version'
            cand --version 'Print version'
            cand -h 'Print help'
            cand --help 'Print help'
            cand emit 'Emit a command to be executed by the current instance'
            cand emit-to 'Emit a command to be executed by the specified instance'
            cand pkg 'Manage packages'
            cand pack 'Manage packages'
            cand pub 'Publish a message to the current instance'
            cand pub-to 'Publish a message to the specified instance'
            cand sub 'Subscribe to messages from all remote instances'
            cand help 'Print this message or the help of the given subcommand(s)'
        }
        &'ya;emit'= {
            cand -h 'Print help'
            cand --help 'Print help'
        }
        &'ya;emit-to'= {
            cand -h 'Print help'
            cand --help 'Print help'
        }
        &'ya;pkg'= {
            cand -h 'Print help'
            cand --help 'Print help'
            cand add 'Add packages'
            cand delete 'Delete packages'
            cand install 'Install all packages'
            cand list 'List all packages'
            cand upgrade 'Upgrade all packages'
            cand help 'Print this message or the help of the given subcommand(s)'
        }
        &'ya;pkg;add'= {
            cand -h 'Print help'
            cand --help 'Print help'
        }
        &'ya;pkg;delete'= {
            cand -h 'Print help'
            cand --help 'Print help'
        }
        &'ya;pkg;install'= {
            cand -h 'Print help'
            cand --help 'Print help'
        }
        &'ya;pkg;list'= {
            cand -h 'Print help'
            cand --help 'Print help'
        }
        &'ya;pkg;upgrade'= {
            cand -h 'Print help'
            cand --help 'Print help'
        }
        &'ya;pkg;help'= {
            cand add 'Add packages'
            cand delete 'Delete packages'
            cand install 'Install all packages'
            cand list 'List all packages'
            cand upgrade 'Upgrade all packages'
            cand help 'Print this message or the help of the given subcommand(s)'
        }
        &'ya;pkg;help;add'= {
        }
        &'ya;pkg;help;delete'= {
        }
        &'ya;pkg;help;install'= {
        }
        &'ya;pkg;help;list'= {
        }
        &'ya;pkg;help;upgrade'= {
        }
        &'ya;pkg;help;help'= {
        }
        &'ya;pack'= {
            cand -a 'Add packages'
            cand --add 'Add packages'
            cand -d 'Delete packages'
            cand --delete 'Delete packages'
            cand -i 'Install all packages'
            cand --install 'Install all packages'
            cand -l 'List all packages'
            cand --list 'List all packages'
            cand -u 'Upgrade all packages'
            cand --upgrade 'Upgrade all packages'
            cand -h 'Print help'
            cand --help 'Print help'
        }
        &'ya;pub'= {
            cand --str 'Send the message with a string body'
            cand --json 'Send the message with a JSON body'
            cand --list 'Send the message as a list of strings'
            cand -h 'Print help'
            cand --help 'Print help'
        }
        &'ya;pub-to'= {
            cand --str 'Send the message with a string body'
            cand --json 'Send the message with a JSON body'
            cand --list 'Send the message as a list of strings'
            cand -h 'Print help'
            cand --help 'Print help'
        }
        &'ya;sub'= {
            cand -h 'Print help'
            cand --help 'Print help'
        }
        &'ya;help'= {
            cand emit 'Emit a command to be executed by the current instance'
            cand emit-to 'Emit a command to be executed by the specified instance'
            cand pkg 'Manage packages'
            cand pack 'Manage packages'
            cand pub 'Publish a message to the current instance'
            cand pub-to 'Publish a message to the specified instance'
            cand sub 'Subscribe to messages from all remote instances'
            cand help 'Print this message or the help of the given subcommand(s)'
        }
        &'ya;help;emit'= {
        }
        &'ya;help;emit-to'= {
        }
        &'ya;help;pkg'= {
            cand add 'Add packages'
            cand delete 'Delete packages'
            cand install 'Install all packages'
            cand list 'List all packages'
            cand upgrade 'Upgrade all packages'
        }
        &'ya;help;pkg;add'= {
        }
        &'ya;help;pkg;delete'= {
        }
        &'ya;help;pkg;install'= {
        }
        &'ya;help;pkg;list'= {
        }
        &'ya;help;pkg;upgrade'= {
        }
        &'ya;help;pack'= {
        }
        &'ya;help;pub'= {
        }
        &'ya;help;pub-to'= {
        }
        &'ya;help;sub'= {
        }
        &'ya;help;help'= {
        }
    ]
    $completions[$command]
}
