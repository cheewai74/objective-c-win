clang `gnustep-config --objc-flags` \
      -fobjc-runtime=gnustep-2.0 \
      hello.m \
      -o hello \
      `gnustep-config --base-libs`

./hello
