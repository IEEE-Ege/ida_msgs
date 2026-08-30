# BuoyDetection.msg
# Tek bir duba tespitini temsil eder.
# Füzyon katmanı (fusion_node) tarafından üretilir:
#   LiDAR küme sentroidi (3D konum) + YOLO renk sınıfı

std_msgs/Header header

# odom çerçevesinde metre cinsinden 3D koordinat
geometry_msgs/Point position

# Duba rengi:
#   "orange"  → parkur sınır dubası
#   "yellow"  → engel dubası
#   "target"  → kamikaze hedefi (yarışma günü seçilir)
#   "unknown" → LiDAR tespit etti, kamera eşleşemedi
string color

# YOLO tespit güven skoru [0.0 – 1.0]
# Kamera eşleşmesi yoksa -1.0
float32 confidence

# HDBSCAN küme kimliği (aynı frame içinde benzersizdir)
int32 cluster_id

# Araca mesafe (metre) — LiDAR sentroidinden hesaplanır
float32 distance

# ── P3 Visual Servoing için bbox bilgisi (kamera eşleşmesi varsa) ──
# Kamera eşleşmesi yoksa tüm bbox alanları -1.0
float32 bbox_center_x   # piksel (görüntü koordinatları)
float32 bbox_center_y   # piksel
float32 bbox_size_x     # bbox genişliği (piksel) — TTC için kullanılır
float32 bbox_size_y     # bbox yüksekliği (piksel)
