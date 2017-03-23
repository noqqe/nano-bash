# Pasting to my personal paste service

# echo foo.txt | pcat
alias pcat='curl --http1.1 -H "Linx-Expiry: 172800" -H "Linx-Randomize: yes" -T - https://p.n0q.org/upload/'

# catp foo.txt
function catp {
  curl --http1.1 -H "Linx-Expiry: 172800" -H "Linx-Randomize: yes" -T $1 https://p.n0q.org/upload/
}

