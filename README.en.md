<p align="center">
  <img src="https://raw.githubusercontent.com/RedPDF/RedPDF/main/docs/stirling.png" width="80" alt="RedPDF logo">
</p>

<h1 align="center">RedPDF - The Open-Source PDF Platform</h1>

RedPDF is a local PDF toolkit that combines editing, conversion, OCR, signing, compression, and more. Runs in your browser or desktop — no uploads, no login, no cloud required.

_A forked and customized project based on [Stirling-PDF](https://github.com/Stirling-Tools/Stirling-PDF)._

<p align="center">
  <a href="https://hub.docker.com/r/redpdf/redpdf">
    <img src="https://img.shields.io/docker/pulls/redpdf/redpdf" alt="Docker Pulls">
  </a>
  <a href="https://discord.gg/HYmhKj45pU">
    <img src="https://img.shields.io/discord/1068636748814483718?label=Discord" alt="Discord">
  </a>
  <a href="https://scorecard.dev/viewer/?uri=github.com/RedPDF/RedPDF">
    <img src="https://api.scorecard.dev/projects/github.com/RedPDF/RedPDF/badge" alt="OpenSSF Scorecard">
  </a>
  <a href="https://github.com/RedPDF/redpdf">
    <img src="https://img.shields.io/github/stars/redpdf/redpdf?style=social" alt="GitHub Repo stars">
  </a>
</p>

![RedPDF screenshot (placeholder — replace with custom screenshot)](images/home-light.png)

## ✨ What it does

- Merge, split, rotate, compress PDFs
- PDF ↔ Word / Excel / PPT / Images / Text
- OCR text recognition
- Watermarks, page numbers, digital signatures
- Encrypt, decrypt, redact
- Batch processing, handles large files

---

## 🚀 Why this exists

Online PDF tools are everywhere, but they require uploads and scatter functionality across multiple services. RedPDF runs entirely locally with no account needed. Built on top of [Stirling-PDF](https://github.com/Stirling-Tools/Stirling-PDF) — thanks to the original project for the solid foundation.

---

## ⌨️ Quick Start

```bash
docker run -p 8080:8080 docker.stirlingpdf.com/redpdf/redpdf
```

Then open http://localhost:8080

For desktop and Kubernetes deployment, see [Developer Guide](DeveloperGuide.md).

---

## 📋 Resources & Support

- [**Documentation**](https://docs.stirlingpdf.com)
- [**Original Project: Stirling-PDF**](https://github.com/Stirling-Tools/Stirling-PDF)
- **Bug Reports**: [Github issues](https://github.com/RedPDF/RedPDF/issues)

Read [CONTRIBUTING.md](CONTRIBUTING.md) before contributing. Run `task dev` to start developing, `task --list` for all commands.

---

Built by Xiao Song & Red

## License

RedPDF is open-core. See [LICENSE](LICENSE) for details.
