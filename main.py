import subprocess


def main():
    subprocess.call(["chmod", "+x", "./bin/server.sh"])
    subprocess.call(["sh", "./bin/server.sh", "console"])


if __name__ == "__main__":
    main()
