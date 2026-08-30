# ida_msgs

**🇹🇷 [Türkçe](#türkçe) · 🇬🇧 [English](#english)**

Mavi İnci İDA — özel ROS 2 mesaj tanımları / custom ROS 2 message definitions.

---

## Türkçe

### Genel Bakış
Algı ve görev paketlerinin ortak arayüzü olan özel ROS 2 mesajları. Hem
simülasyon hem gerçek araç kullanır.

| Mesaj | Açıklama |
|-------|----------|
| `BuoyDetection.msg` | Tek bir duba tespiti (konum + sınıf/renk + güven) |
| `BuoyDetectionArray.msg` | Bir karedeki tüm duba tespitleri |
| `MissionState.msg` | Görev durum makinesinin (FSM) anlık durumu |

### Kurulum
> Önkoşullar: Ubuntu 22.04 + ROS 2 Humble, `colcon`, `rosdep`, `git`.

```bash
mkdir -p ~/ros2_ws/src && cd ~/ros2_ws/src
git clone <REPO_URL> ida_msgs
cd ~/ros2_ws
rosdep install --from-paths src --ignore-src -r -y
colcon build --packages-select ida_msgs
source install/setup.bash
```

### Kullanım
Diğer paketler `package.xml` içinde `<depend>ida_msgs</depend>` ekleyerek
mesajları kullanır:
```python
from ida_msgs.msg import BuoyDetection, BuoyDetectionArray, MissionState
```

### Bağımlılıklar
`std_msgs`, `geometry_msgs`, `rosidl_default_generators` (build). Pip bağımlılığı
yoktur.

### Lisans
**MIT.** Yalnızca izin verici ROS 2 arayüz araçlarına bağımlıdır; bulaşıcı
(copyleft) bağımlılık yoktur.

**Kullanım koşulları:** Kodu özgürce kullanabilir, değiştirebilir ve
dağıtabilirsiniz; tek şart telif/lisans bildirimini korumaktır. Bir geliştirme
veya düzeltme yaparsanız bize **PR açmanız bizi çok mutlu eder** (zorunlu değil).

### Özel veri
Bu pakette aracın özel verisi yoktur (yalnızca mesaj şeması).

---

## English

### Overview
Custom ROS 2 messages that form the shared interface of the perception and
mission packages. Used by both simulation and the real vehicle.

| Message | Description |
|---------|-------------|
| `BuoyDetection.msg` | A single buoy detection (position + class/color + confidence) |
| `BuoyDetectionArray.msg` | All buoy detections in one frame |
| `MissionState.msg` | Current state of the mission state machine (FSM) |

### Installation
> Prerequisites: Ubuntu 22.04 + ROS 2 Humble, `colcon`, `rosdep`, `git`.

```bash
mkdir -p ~/ros2_ws/src && cd ~/ros2_ws/src
git clone <REPO_URL> ida_msgs
cd ~/ros2_ws
rosdep install --from-paths src --ignore-src -r -y
colcon build --packages-select ida_msgs
source install/setup.bash
```

### Usage
Other packages depend on it via `<depend>ida_msgs</depend>` in `package.xml`:
```python
from ida_msgs.msg import BuoyDetection, BuoyDetectionArray, MissionState
```

### Dependencies
`std_msgs`, `geometry_msgs`, `rosidl_default_generators` (build). No pip
dependencies.

### License
**MIT.** Depends only on permissive ROS 2 interface tooling; no contagious
(copyleft) dependency.

**Terms:** free to use, modify and distribute; the only requirement is to
preserve the copyright/license notice. If you improve or fix something, **a PR
back to us would make us very happy** (not required).

### Private data
None (schema only).

---

<div align="center">

💙 **Bu Repo IEEE Ege Mavi İnci İnsansız Deniz Aracı Takımı Yazılım Ekibi Tarafından Oluşturulmuştur, Yazılım Ekibimize Sevgilerle**

[@NightKnight-nx2](https://github.com/NightKnight-nx2) · [@yalinoner](https://github.com/yalinoner) · [@nilayyldz](https://github.com/nilayyldz)

</div>
