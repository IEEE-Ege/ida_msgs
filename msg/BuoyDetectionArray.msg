# BuoyDetectionArray.msg
# Bir frame içinde tespit edilen tüm dubaların listesi.
# fusion_node → /buoy_detections topic'inde yayınlanır.

std_msgs/Header header
ida_msgs/BuoyDetection[] buoys
