# clarion-dump

[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/araujofrancisco/clarion-dump)

**clarion-dump** is a Dockerized solution for exporting Clarion data tables into Microsoft SQL Server (MSSQL) scripts. This tool streamlines the migration and backup of Clarion databases by wrapping the extraction logic into an easily portable container.

---

## Features

- **Dockerized:** Run anywhere with Docker, no need to install Clarion or extra dependencies on your host.
- **Automated Conversion:** Dumps Clarion tables and generates SQL scripts compatible with MSSQL.
- **Cross-Platform:** Works on any system supporting Docker (Linux, macOS, Windows).
- **Customizable:** Easily configure directories and parameters for your migration workflow.

---

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Usage](#usage)
- [Configuration](#configuration)
- [Examples](#examples)
- [File Structure](#file-structure)
- [Contributing](#contributing)
- [License](#license)

---

## Requirements

- [Docker](https://www.docker.com/products/docker-desktop) installed on your system
- Source Clarion data tables (e.g., `.dat`, `.tps` files)
- Optional: Configuration files for custom behavior

---

## Usage

1. **Clone this repository:**
   ```bash
   git clone https://github.com/araujofrancisco/clarion-dump.git
   cd clarion-dump
   ```

2. **Build the Docker image:**
   ```bash
   docker build -t clarion-dump .
   ```

3. **Run the container:**
   ```bash
   docker run --rm \
     -v /path/to/clarion/files:/data/input \
     -v /path/to/output/scripts:/data/output \
     clarion-dump
   ```
   - Replace `/path/to/clarion/files` with the directory containing your Clarion tables.
   - Replace `/path/to/output/scripts` with the directory where you want the MSSQL scripts saved.

---

## Configuration

- **Input Directory:** `/data/input` (mounted via Docker volume)
- **Output Directory:** `/data/output` (mounted via Docker volume)
- **Environment Variables:** (if supported, describe here)
- **Custom Scripts:** (describe any batch/shell scripts used in the process)

---

## Examples

**Basic Example:**
```bash
docker run --rm \
  -v ~/clarion-tables:/data/input \
  -v ~/mssql-scripts:/data/output \
  clarion-dump
```

**With Custom Environment Variables:**
```bash
docker run --rm \
  -e CLARION_ENCODING=UTF-8 \
  -v ~/clarion-tables:/data/input \
  -v ~/mssql-scripts:/data/output \
  clarion-dump
```
*(Adjust environment variables as supported by your scripts)*

---

## File Structure

```text
clarion-dump/
├── Dockerfile
├── dump.sh
├── dump.bat
├── README.md
└── [other scripts/config files]
```

- **Dockerfile:** Defines the container image
- **dump.sh:** Main shell script for Unix-like systems
- **dump.bat:** Batch script for Windows environments

---

## Contributing

Contributions, issues, and feature requests are welcome!  
Feel free to check the [issues page](https://github.com/araujofrancisco/clarion-dump/issues) or submit a pull request.

---

## License

Distributed under the [MIT License](LICENSE).

---

**Author:** [Francisco Araujo](https://github.com/araujofrancisco)  
**Repository:** https://github.com/araujofrancisco/clarion-dump

---

**Need help or have suggestions?**  
Open an issue or start a discussion on [GitHub Discussions](https://github.com/araujofrancisco/clarion-dump/discussions) if enabled.
