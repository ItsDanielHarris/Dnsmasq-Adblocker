function validate_url(){
  if [[ `wget --max-redirect=0 -S --spider $1  2>&1 | grep 'HTTP/1.1 200 OK'` ]]; then echo "true"; fi
}
