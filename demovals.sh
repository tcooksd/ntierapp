
#!/bin/bash
echo "<%= customOptions.tcontier01 %>" >> /tmp/info
echo "<%= customOptions.tcontier02 %>" >> /tmp/info
echo "outputting directory of launch"
echo "########################################"
ls
echo "########################################"

echo "running demo.sh command"
./demo.sh
