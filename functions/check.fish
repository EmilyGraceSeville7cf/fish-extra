source ./log.fish

function _dependency_installed --argument-names dependency
    command --query $dependency
end

function log_err_when_no_dependency_installed
    for dependency in $argv
        _dependency_installed $dependency || begin
            set dependency (string escape -- $dependency)
            log_err "no $dependency found in \$PATH, please install it and make sure it's accessible"
            return 1
        end
    end
end
