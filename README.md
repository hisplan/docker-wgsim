# docker-wgsim

Simulating sequence reads from a reference genome

## Building docker-wgsim

```
$ docker build -t wgsim .
```

## Running docker-wgsim

```
$ docker run -it --rm wgsim
```

## Testing

Get `NC_008253.fna` first before running this.

```
$ docker run -it --rm -v $(pwd):/data wgsim \
    -N 1000 \
    -S 1 \
    /data/NC_008253.fna \
    /data/ecoli.r1.fastq \
    /data/ecoli.r2.fastq
```

## References

- https://github.com/lh3/wgsim
