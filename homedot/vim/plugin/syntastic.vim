" Syntastic + Java
let g:syntastic_java_javac_config_file_enabled=1
let g:syntastic_java_javac_classpath = "/usr/local/var/lib/android-sdk/platforms/android-21/android.jar:~/lib/cocos2d-x/cocos/platform/android/java/src:~/lib/cocos2dx-WebView/android/java/src:~/lib/FOX_COCOS2DX_SDK/FOX_Android_SDK_v2.14.6g/libs/AppAdForce.jar"

" Syntastic + cpplint
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_loc_list=2
autocmd InsertLeave *.hpp,*.cpp,*.ipp SyntasticCheck cpplint
