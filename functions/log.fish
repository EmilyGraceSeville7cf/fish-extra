function reset_color --description 'Reset a color and clear all attributes'
    set_color normal
    set_color $argv
end

function _log --argument-names prefix color message --description 'Print an information message'
    echo "$(set_color --bold $color)$prefix$(reset_color $color): $message$(set_color normal)"
end

function log_info --argument-names message --description 'Print an information message'
    _log info green $message
end

function log_warn --argument-names message --description 'Print a warning message'
    _log info yellow $message
end

function log_err --argument-names message --description 'Print an error message'
    _log info red $message
end
