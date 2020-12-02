gzip friendlywrt-*/out/*.img
rm -rf ./artifact/ && mkdir -p ./artifact/rom && mkdir -p ./artifact/packages/
mv friendlywrt-*/out/*img* ./artifact/rom/
cp friendlywrt-*/friendlywrt/.config ./artifact/rom/
mv friendlywrt-*/friendlywrt/staging_dir/packages/ ./artifact/packages/
zip -r artifact.zip ./artifact/rom/
zip -r artifact-packages.zip ./artifact/packages/

#cp friendlywrt-*/friendlywrt/.config ./artifact/
#cd ./artifact/
#md5sum *img* > md5sum.txt
#cd ..
#zip -r artifact.zip ./artifact/
