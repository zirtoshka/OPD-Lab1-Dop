sed 's/^/grep -v ".*/g' stop.crash | 
sed 's/$/.*" |/g' |
tr '\n' '\0' | sed 's/|/stat.crash |/1' | tr '\0' '\n' |
nl -b n >tmp 

tail -r <tmp |
tr '\n' '\0' | sed 's/|/>tmp3/1' | tr '\0' '\n' |
tail -r >tmp2

sh tmp2

grep -v '^$' tmp3 >res
