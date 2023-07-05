## Chunk Pruning

This script prunes maps and updates them to a specified version.

This essentially works by starting a spigot server for each version and running a [plugin](https://github.com/cswhite2000/ChunkPruner) that loads each map and then deletes any empty region files.

Note: This script takes a long time to run!

### Depends on:
- JDK 11
- wget

### How To

Place the maps you want to prune or upgrade into the folder `server/maps` and run the script

### Usage examples:
```bash
./prune.sh
## Only prune
# Input 0 for start at 1.8.8
# input 0 for end at 1.8.8

# Maps are pruned
```

```bash
./prune.sh
## Only prune
# Input 0 for start at 1.8.8
# input 4 for end at 1.12.4

# Maps are upgraded and pruned one server version at a time from 1.8 -> 1.12
```
