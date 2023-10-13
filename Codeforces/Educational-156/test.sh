#!/usr/bin/env sh

read -r -d '' INPUT_A << EOM
4
10
4
15
9
EOM

read -r -d '' OUTPUT_A << EOM
YES
4 5 1
NO
YES
2 8 5
NO
EOM

read -r -d '' INPUT_B << EOM
2
3 3
1 0
-1 6
3 3
-1 -1
4 3
EOM

read -r -d '' OUTPUT_B << EOM
3.6055512755
3.2015621187
EOM

read -r -d '' INPUT_C << EOM
3
cab
6
abcd
9
x
1
EOM

read -r -d '' OUTPUT_C << EOM
abx
EOM

case $1 in
		ia) echo "$INPUT_A"       ;;
		oa) echo "$OUTPUT_A"      ;;
		ib) echo "$INPUT_B"       ;;
		ob) echo "$OUTPUT_B"      ;;
		ic) echo "$INPUT_C"       ;;
		oc) echo "$OUTPUT_C"      ;;
		 *) echo "Invalid Input!" ;;
esac
