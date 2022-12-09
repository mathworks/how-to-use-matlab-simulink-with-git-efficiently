function g_RevertClean(flag)
%% reset changes and delete untracking files in Git

if(nargin < 1)
    % reset to most recent local commit.
    !git reset .
    !git checkout .
    !git clean -fx -d
elseif strcmp(flag, 'r')
    % reset to most recent remote repository.
    [~, out] = system('git branch --contains=HEAD');
    this_branch_name = strsplit(out(3:end), newline);
    !git fetch --all
    system(['git reset --hard origin/', this_branch_name{1}]);
    !git checkout .
    !git clean -fx -d
else
    % reset but not clean
    !git reset .
    !git checkout .
end

end
