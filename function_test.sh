HTTP=$(curl localhost:8080 --silent)
if [ "$HTTP" == "Greetings from aetna healthcare!" ]; then
  echo test passed
  exit 0
else
  echo test failed
  exit  1
fi