## Jekyll docs
https://jekyllrb.com/docs/variables/

### Generating ssh key

#### Linux

```
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```
