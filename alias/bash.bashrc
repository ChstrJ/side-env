#custom

#artisan alias
alias pa='php artisan'
alias pas='php artisan serve'
alias pam='php artisan migrate:fresh'
alias pams='php artisan migrate:fresh --seed'
alias pamc='php artisan make:controller'
alias pamm='php artisan make:model'
alias pamr='php artisan make:request'
alias oclear='php artisan optimize:clear'
alias lclear='php artisan optimize:clear && php artisan config:cache && php artisan route:cache && php artisan view:cache'


#npm alias
alias watch='npm run watch'
alias dev='npm run dev'
alias prod='npm run prod'


#git alias
alias status='git status'
alias log='git log'
alias add='git add .'
alias commit='git commit -m'
alias push='git push'
alias gp='git pull'
alias gc='git checkout'
alias gm='git merge'
alias gs='git stash'

# functions
function gpush() {
  git add .
  git commit -m "$1"
  git push
}

function gc() {
	git checkout "$1"
}
