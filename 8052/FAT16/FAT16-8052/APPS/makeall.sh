for d in ./*; do
  if [ -d "$d" ]; then
	  echo ""
	  cd $d
	  echo "Making -> $d" 
	  echo "abspath -> $(pwd)"
	  make
	  cd ..
  fi
done
