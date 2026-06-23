# RedPDF 更新日志

## 0.0.1（2026-06-23）

### ✨ 新功能

- **项目初始化** — 基于 Stirling-PDF fork，命名为 RedPDF，文档层 rebrand 完成
- **待清理** — 代码、Docker、CI、IndexedDB 等仍有大量 Stirling-PDF 残留引用，列入 0.0.2

## 0.0.2（2026-06-23）

### ✨ 新功能

- **安全 rebrand** — 桌面端 productName / User-Agent / notification title、Gradle Implementation-Title / sonar.projectKey、Launch4j 产物名、Docker compose container_name / UI_APPNAME / network / volume、CI artifact 命名，全部替换为 RedPDF

### 🚫 未改动（待后续处理）

- Docker image 名称（仍需使用上游镜像）
- tauri updater endpoint + pubkey（需自行搭建 release signing）
- IndexedDB 数据库名（升级策略待定）
- 外部链接域名（docs.stirlingpdf.com 等）

## 0.0.3（计划中）

### ✨ 新功能

- **build.bat** — Windows 一键编译脚本，双击即可构建后端 + 前端
