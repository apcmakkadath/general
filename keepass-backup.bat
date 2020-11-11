rem configure in task scheduler to run the script daily
copy "C:\Users\<username>\Documents\apc.kdbx" "C:\Users\<username>\Documents\keepass-backup\<your-keepass-file>-backup-%date:~-4,4%%date:~-10,2%%date:~-7,2%-%time:~0,2%%time:~3,2%%time:~6,2%.kdbx"
msg "%username%" "keypass backed up successfully"
