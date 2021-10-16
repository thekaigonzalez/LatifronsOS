-- Snarwin As a SHell.

require "kernel.dyldc" -- Include lua runner (better than require) (supports compiled lua)

local argparser = chunk("kernel/dyld/argparse.dylib");

print(argparser)