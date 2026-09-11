import subprocess


def main():
    subprocess.call(["chmod", "+x", "./onedev-latest/bin/server.sh"])
    subprocess.call(["sh", "./onedev-latest/bin/server.sh", "console"])


if __name__ == "__main__":
    main()
