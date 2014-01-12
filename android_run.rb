app_path = './wordpress-android.apk'
system("calabash-android run #{app_path} -p android #{ARGV.join(' ')}")
