# 🐳 My Resume in a Docker Container

This project packages my interactive, animated resume into a lightweight **multi-stage Docker container** served via **Nginx**.  
It’s designed so that **anyone** can pull and run my resume locally in seconds — no manual setup, no extra dependencies.

My resume can also be found on Github pages.
https://segaboy.github.io/resume/

---

## 📜 Purpose
The goal of this project is to:
- Showcase my skills in **web development** and **DevOps** using Docker.
- Demonstrate **multi-stage builds** for a compact, production-ready image.
- Provide a **portable, self-contained** way for anyone to view my resume.

---

## ⚙️ How It Works
- **Stage 1:** Clones my resume site from GitHub.
- **Stage 2:** Serves the site via **Alpine Linux + Nginx** for minimal size and fast startup.
- **Result:** A ready-to-go Docker image that can be run anywhere with Docker installed.

---

## 🚀 Quick Start

Pull and run the image from Docker Hub:  
```bash
docker pull segaboy/resume-nginx:latest
docker run --rm -p 8080:80 segaboy/resume-nginx:latest
