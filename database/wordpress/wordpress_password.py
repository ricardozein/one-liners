import hashlib, pyperclip

the_string = raw_input('Type the desired string to generate md5 hash: ')
the_hash = hashlib.md5(the_string)

pyperclip.copy(the_hash.hexdigest())
print(the_hash.hexdigest())
