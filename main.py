import os
import subprocess
import tarfile
import requests


def download_file(url: str, file_name: str):
    response = requests.get(url)

    with open(file_name, 'wb') as file:
        file.write(response.content)


def main():
    print("Downloading onedev-latest.tar.gz")
    # Example usage
    download_file("https://code.onedev.io/onedev/server/~site/onedev-latest.tar.gz",
                  "onedev-latest.tar.gz")

    print("Extracting onedev-latest.tar.gz")
    with tarfile.open("onedev-latest.tar.gz", "r:gz") as tar:
        tar.extractall(path=".")

    print("Done!")

    print("Launching OneDev...")
    # subprocess.run(["echo", "$PATH"], shell=True)
    # subprocess.run(["ls", "-al"])
    subprocess.run(["sh", "./onedev-latest/bin/server.sh", "console"],
                   env={"PATH": "/usr/java/openjdk-17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"})


if __name__ == "__main__":
    main()
