function cfg --wraps='/usr/bin/git --git-dir=$HOME/.cfgstore/ --work-tree=$HOME' --description 'alias cfg=/usr/bin/git --git-dir=$HOME/.cfgstore/ --work-tree=$HOME'
  /usr/bin/git --git-dir=$HOME/.cfgstore/ --work-tree=$HOME $argv
        
end
