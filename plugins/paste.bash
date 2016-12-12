alias pcat='curl --http1.1 -H "Linx-Expiry: 172800" -H "Linx-Randomize: yes" -T - https://p.n0q.org/upload/'

function catp {
  curl --http1.1 -H "Linx-Expiry: 172800" -H "Linx-Randomize: yes" -T $1 https://p.n0q.org/upload/
}

