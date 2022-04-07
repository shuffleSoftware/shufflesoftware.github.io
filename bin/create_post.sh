read -p 'post name:' postName
# cat << EOF > _posts/$(date +%Y-%m-%d)-${postName// /-}.markdown
cat << EOF > _posts/$(date +%Y-%m-%d)-$(echo ${postName// /-} | awk '{print tolower($0)}').markdown
---
layout: post
title: "${postName}"
date: $(date "+%Y-%m-%d %H:%M:%S %z")
categories: jekyll update
---
EOF


