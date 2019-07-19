git push origin master
jekyll clean
jekyll build
aws s3 rm s3://millermenu.com --recursive
aws s3 cp ./_site/. s3://millermenu.com --recursive --exclude "*.sh"
