#!/usr/bin/env python
import sys
import gdown
def main():
url = 'https://drive.google.com/uc?id=165UKm0Z2RFKtwU9nkQ4Fkry91TJR0kV5'
output = 'akuhnet-w7x64.img'
gdown.download(url, output, quiet=False)
return 0
if __name__ == '__main__':
    sys.exit(main())
