# Getting the `dynr` Rstudio Server Docker Container to Work on Windows 10

## Installing Windows Subsystem for Linux (WSL)

- In `PowerShell`, type the following:

```powershell
wsl --install --distribution Ubuntu
```

- When prompted:
    - Enter new UNIX username:
    - New password:
    - Retype new password:
- You should see a prompt similar to the following which indicates that you are inside the newly installed `Ubuntu` instance. In the prompt, type `exit` to exit `Ubuntu`.

```bash
USER@HOST:~$
```

- You might need to update the kernel. You can do this with the following:
    - Download the Linux kernel update package from https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi
    - Double-click `wsl_update_x64.msi` to update the kernel.
- A system restart might be a good idea for all the changes to take effect.

If the above instructions fail, you might be using an older version of Windows. See https://learn.microsoft.com/en-us/windows/wsl/install-manual for more details on how to manually install WSL.

## Installing Docker Desktop

- Download the the appropriate Docker Desktop for Windows from https://www.docker.com/products/docker-desktop/.
- Double-click `Desktop Installer.exe` to install `Docker Desktop`.
- Launch `Docker Desktop`.
   - Click the `Accept` button to accept the terms of service.
   - Fill in role and use case.


## Running the dynr Docker Container

- Launch `Docker Desktop`.
- In `PowerShell` type the following to launch `Rstudio Server`:

```powershell
docker run --rm -ti -e PASSWORD=yourpassword -p 8787:8787 jeksterslab/dynr-rocker
```

- Open http://localhost:8787 on your web browser to launch `Rstudio Server`.
    - username: rstudio
    - password: yourpassword
