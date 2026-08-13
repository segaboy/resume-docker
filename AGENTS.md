# Repository operating rules

- This public repository packages `https://github.com/segaboy/resume.git`; it is not an independently maintained resume source.
- Preserve the lightweight two-stage architecture: an Alpine builder obtains the public resume and a final `nginx:alpine` image serves it on port 80, unless the user explicitly requests an architecture change.
- Keep runtime dependencies minimal. Do not install Git, build tools, or other unnecessary packages in the final image.
- Do not manually copy or duplicate the resume website into this repository.
- A normal resume-content update should not create a commit here merely for synchronization.
- Before publishing container changes, inspect branch/status/HEAD, review the diff, build the image, run it locally, request the Nginx site, verify expected resume content, and stop/remove the test container.
- Do not publish a Docker Hub image or add deployment automation unless the user explicitly asks.
- Never commit Docker Hub credentials, tokens, passwords, private keys, or other secrets.
