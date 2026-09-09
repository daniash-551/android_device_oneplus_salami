# Changelog — AlphaDroid salami (OnePlus 11) unofficial by DaniAsh551

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
