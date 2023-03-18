# Store the key

The public key part of the SSH key can be stored in Chezmoi in plain text:

```
chezmoi add .ssh/id_rsa.pub
```

To store the private part we are going to need to install the bitwarden-cli and then login and unlock it:

```
bw login <EMAIL-ADDRESS>
bw unlock
export BW_SESSION="<SESSION-ID>"
```

Now, we get to the magic sauce. This line will store your SSH key (stored at ~/.ssh/id_rsa) in a secure note in Bitwarden:

```
echo "{\"organizationId\":null,\"folderId\":null,\"type\":2,\"name\":\"sshkey\",\"notes\":\"$(sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/\\\\n/g' ~/.ssh/id_rsa)\",\"favorite\":false,\"fields\":[],\"login\":null,\"secureNote\":{\"type\":0},\"card\":null,\"identity\":null}" | bw encode 
```
```
bw create item <code>
```

And finally, we need to tell chezmoi where to get the key from. Create a file in your chezmoi repo at this location: private_dot_ssh/private_id_rsa.tmpl and add this as the contents:

```
{{ (bitwarden "item" "sshkey").notes }}
```

(For OSX, this file needs a new line character at the end. For Linux, I believe it mustn't, so you might need to end the file with -}} instead)

Make sure all the files are committed and pushed to the origin.

# Retrieve the key

On another machine where you want to retrieve the same key, make sure bitwarden-cli and Chezmoi are installed and first do the same login and unlock steps for Bitwarden as above. Then simplpy do:

```
chezmoi init --apply zddarova
```

And that's it. Check your private key has made it safely to your machine by doing cat ~/.ssh/id_rsa.

copied from https://dev.to/jmc265/using-bitwarden-and-chezmoi-to-manage-ssh-keys-5hfm

