import subprocess


def main():
    subprocess.run(["chmod", "+x", "./bin/server.sh"])
    subprocess.run(["source", "./bin/server.sh", "console"])


if __name__ == "__main__":
    main()
