git checkout 'master'
date=`date +"%Y年%m月%d日%H時%M分%S秒"`
git checkout -b 'generate_devise_view_files_'$date
git push --set-upstream origin 'generate_devise_view_files_'$date
git checkout -b 'add_devise_'$date
rails g devise:views
git add .
git commit -m 'generate devise view files'
git push --set-upstream origin 'add_devise_'$date
