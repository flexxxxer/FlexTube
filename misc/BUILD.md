
Reset to target LibreTube commit: `git reset --hard $(cat ../misc/target-commit.txt)`

Apply FlexTube's patches: `git apply ../patches/*`

App rename in resources: `bash ../scripts/app-rename-in-resources.sh $(pwd)/app/src/main/res`
