
echo "Welcome to file encrypter/decrypter"
echo "Select the options : "
echo "1. Encrypt a file."
echo "2. Decrypt a file."
read choice

case $choice in
 1)
	 echo "Enter file name along with the path to encrypt :"
	 read fileToEncrypt
	 if [ -e $fileToEncrypt ]
	 then
	 	gpg -c $fileToEncrypt
	 	rm -r $fileToEncrypt
	 	echo "file encrypted successfully."
	 else
	 	echo "file does not exists."
	 fi
	 ;;
 2)
	 echo "Enter file name along with the path to decrypt and new file name:"
	 read fileToDecrypt newFileName
	 if [ -e $fileToDecrypt ]
	 then
	 	gpg -o $newFileName -d $fileToDecrypt
	 	echo "file decrypted successfully."
	 else
	 	echo "file does not exists."
	 fi
	 ;;
 *)
 	echo "Error: Invalid choice"
    	exit 1
    	;;
 esac