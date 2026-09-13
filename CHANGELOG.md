# Changelog — AlphaDroid salami (OnePlus 11) unofficial by DaniAsh551

## 2026-09-13 — build22 (AlphaDroid-16-20260913_153900-vanilla-salami-v4.6.zip, 3.04 GB, 27m build)

- Kernel 5.15.197-g01deea9e0530, clean version string (no -dirty): all
  working-tree changes committed before building.
- NoMount v2.0.0 built in (CONFIG_NOMOUNT=y): VFS mountless module
  loader, no /proc/mounts footprint. Needs NoMount metamodule flashed.
- BTRFS built in (CONFIG_BTRFS_FS=y).
- Kernel debug cleanup: WQ_WATCHDOG=n, SCHEDSTATS=n,
  CPUFREQ_HW_DEBUG=n, QCOM_WATCHDOG_WAKEUP_ENABLE=n,
  SCHED_WALT_DEBUG=n; DEVFREQ_GOV_SIMPLE_ONDEMAND=y.
- Battery patch set: SF backpressure/composition-cache re-enabled,
  LTPO min 10Hz, touch high-frame window 60s->15s, powerHAL boost
  trims (launch 5s->2s, interactive min 1s->0.5s).
- Display: PXLW_IRIS 64-bit-only fix; brightness nits curve mapping.
- RenderEngine KawaseDarkmoon blur; hiddenapi OplusTypeCastingHelper
  dedup; VINTF SYSVIPC/MODVERSIONS matrix alignment committed.


## 2026-09-09 — a038351 + gallery/camera fixes (alpha_salami-ota.zip, 3.05 GB, 32m build)

- Unofficial build by DaniAsh551(osm1019-fork), signed with private
  releasekey (`vendor/alpha/keys`). Clean flash required (key switch).
- OOS Camera fixed: frameworks/av 20b7059089 (OnePlus camera extension
  factory ABI) — cameraserver SIGBUS on open resolved.
- zygote64 with 32-bit bionic native support: `core_64_bit.mk` +
  `ZYGOTE_FORCE_64` + `TARGET_2ND_ARCH=arm`, no 32-bit zygote, no 32-bit
  EGL preload bootloop.
- Gallery: official OOS16 OppoGallery2 (Soong-signed with platform key).
- VINTF: device framework matrix allows custom-kernel SYSVIPC config.
- Vanilla (no gapps), release-keys.
