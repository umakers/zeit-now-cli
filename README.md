# Zeit Now CLI GitHub Action

This action provides Zeit`s Now CLI as-is, bringing the same experience when using the CLI locally.

## Example usage

### Listing deployments

```yaml
uses: artemis-tech/zeit-now-cli@v1
env:
    ZEIT_TOKEN: ${{ secrets.ZEIT_TOKEN }}
with:
    args: list # this will list deployments
```

### Deploy to production

```yaml
uses: artemis-tech/zeit-now-cli@v1
env:
    ZEIT_TOKEN: ${{ secrets.ZEIT_TOKEN }}
with:
    args: --prod # this will deploy to production
```
