echo '----compass'
compass compile ./styles/

echo '----jekyll build so all files including categories are ready'
jekyll build

#echo '----copy categories'
#cp -r ./_site/categories .

#echo '----jekyll build again for sitemap with categories'
#jekyll build

echo '----sitemap adjustment for index.html removal'
sed -e 's/index.html//g' ./_site/sitemap.xml > ./sitemap.xml