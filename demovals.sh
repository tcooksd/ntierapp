
#!/bin/bash
echo "<%= customOptions.tcontier01 %>" >> /tmp/info
echo "<%= customOptions.tcontier02 %>" >> /tmp/info
echo "<%= container.dataPath %>" >> /tmp/info
echo "$OUTPUT_BASE_DIR" >> /tmp/info
/tmp/test/demo.sh
