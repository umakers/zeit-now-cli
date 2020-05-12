# Zeit Now CLI GitHub Action

This action provides Zeit`s Now CLI as-is, bringing the same experience when using the CLI locally.

## Example usage

### Listing deployments

```yaml
uses: umakers/zeit-now-cli@v1
env:
    VERCEL_TOKEN: ${{ secrets.VERCEL_TOKEN }}
with:
    args: list # this will list deployments
```

### Deploy to production

```yaml
uses: umakers/zeit-now-cli@v1
env:
    VERCEL_TOKEN: ${{ secrets.VERCEL_TOKEN }}
with:
    args: --prod # this will deploy to production
```
