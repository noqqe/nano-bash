alias pcat='curl -H "Linx-Expiry: 172800" -H "Linx-Randomize: yes" -T - https://p.n0q.org/upload/'

function catp {
  curl -H "Linx-Expiry: 172800" -H "Linx-Randomize: yes" -T $1 https://p.n0q.org/upload/
}

