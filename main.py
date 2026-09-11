import subprocess


def main():
    subprocess.run(["cd", "./app/onedev-latest"])
    subprocess.run(["pwd"])
    subprocess.run(["ls", "-al"])
    subprocess.run(["./bin/server.sh", "console"])


if __name__ == "__main__":
    main()
