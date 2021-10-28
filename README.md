### tools文件夹中的反编译工具说明


#### 反编译三件套：
apktool：反编译资源文件和Manifest文件
dex2jar：将classes.dex文件反编译为classes-dex2jar.jar源码文件
jd-gui：查看classes-dex2jar.jar源码文件


#### 反编译一体化工具：
jadx：可以直接将apk包反编译为源码
AndroidKiller 和jadx类似
Jeb 和jadx类似


#### 脱壳工具（手机需要root）
XposedInstaller：XP框架
VitualXposed：无需root的XP框架，可能会有奇奇怪怪的bug，可能不成功，建议使用XposedInstaller
FDex2：脱壳程序
APKMessenger APK信息查看工具

#### 修改smali进行二次打包
baksmali:将classes.dex文件反编译为smali文件
smali：将smai文件编译为classes.dex文件
J2S2J：将java文件转smali文件，将smali文件转java文件

#### 反编译命令行
java -jar apktool.jar d -f {待反编译的apk路径} -o {反编译后的文件路径}

#### 打包命令行
java -jar apktool.jar b {待打包的文件路径} -o {打包后的apk路径}

#### 签名命令行
jarsigner -verbose -keystore {keystore文件路径} -signedjar {签名后生成的apk路径} {待签名的apk路径} {别名}

java -jar apktool.jar b Test2 -o Test2.apk
jarsigner -verbose -keystore demo.jks -signedjar Test2s.apk Test2.apk demo

#### 安装到手机
adb install -r Test2s.apk

#### 插件升级
这里由于软件中的Apktool的版本太低可能导致apk的反编译失败，因此需要到Apktool官网去下载最新版本的Apktool
官网地址：https://ibotpeaches.github.io/Apktool
下载完成后找到解压好的AndroidKiller目录下的bin\apktool\apktool目录将下载的最新版的apktool复制粘贴进去，然后修改AndroidKiller根目录下的bin\apktool下的apktool.bat和apktool.ini文件。
