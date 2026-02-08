### Build
Process is straightforward. 
Environment: JDK 17.

1. Getting FlexTube's sources: 
```
git clone https://github.com/flexxxxer/FlexTube && cd FlexTube
```

2. Getting LibreTube (upstream) sources: 
```
git clone https://github.com/libre-tube/LibreTube && cd LibreTube
```

3. Change LibreTube sources to supported version by FlexTube: 
```
git reset --hard $(cat ../misc/target-commit.txt)
```

4. App rename in resources (in translations too) from "LibreTube" to "FlexTube": 
```
bash ../scripts/app-rename-in-resources.sh $(pwd)/app/src/main/res
```

5. Apply FlexTube's patches: 
```
git apply ../patches/*
```

6. Create `keystore.properties` file with following content:
```
storeFile=/absolute/path/to/my.keystore
storePassword=my_store_password
keyAlias=my_key_alias
keyPassword=my_key_password
```
If you dont have keystore yet then create one with `keytool` CLI utility or follow [this tutorial](https://developer.android.com/studio/publish/app-signing#generate-key) for Android Studio.

6. Build it!
```
./gradlew assembleRelease --no-daemon
```

Artifact (apk file) will be in `./app/build/outputs/apk/release/app-release.apk`
