
#!/bin/bash
echo "<%= customOptions.tcontier01 %>" >> /tmp/info
echo "<%= customOptions.tcontier02 %>" >> /tmp/info
echo "<%= container.dataPath %>" >> /tmp/info
./demo.sh
