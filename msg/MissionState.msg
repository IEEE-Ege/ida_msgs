# MissionState.msg
# Görev yöneticisinin (mission_node) anlık durumunu yayınlar.
# /mission/state topic'inde yayınlanır (1 Hz).

std_msgs/Header header

# Aktif durum: "IDLE" | "P1_TRANSIT" | "P2_GATE_DETECT" | "P2_NAVIGATE"
#              "P3_SCAN" | "P3_KAMIKAZE" | "COMPLETE" | "FAILSAFE" | "ABORTED"
string state

# Aktif parkur numarası (1, 2 veya 3)
int32 parkur_number

# Geçilen kapı sayısı (Parkur 2'de güncellenir)
int32 gates_passed
int32 total_gates

# Kamikaze hedef rengi ("" = henüz ayarlanmadı)
string target_color

# Görev aktif mi?
bool mission_active

# Geçen görev süresi (saniye)
float32 elapsed_seconds

# Son hata mesajı (boş = sorun yok)
string last_error
