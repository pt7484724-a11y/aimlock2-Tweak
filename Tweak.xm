name: Build Tweak
on: [push, pull_request]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      - name: Setup Theos
        uses: theos/setup-theos-action@v1
      - name: Build Tweak
        run: make
      - name: Upload Artifact
        uses: actions/upload-artifact@v4
        with:
          name: Tweak-Result
          path: packages/*.deb
