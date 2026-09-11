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

    print("Removing onedev-latest.tar.gz")
    os.remove("onedev-latest.tar.gz")
    print("Done!")

    print("Launching OneDev...")
    subprocess.run(["echo", "$PATH"])
    subprocess.run(["ls", "-al"])
    subprocess.run(["./onedev-latest/bin/server.sh", "console"])


if __name__ == "__main__":
    main()
