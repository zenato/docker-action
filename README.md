# Publish docker action

This action publish docker image to your registry

## Inputs

### `username`
**Required** Registry username to authentication.

### `password`
**Required** Registry password to authentication.

### `repository`
**Required** Repository on registry.

### `registry`
If you didn't use dockerhub, pass registry hostname.

### `tag`
Image tag. If you don't want to set, it sets default snapshot tag(current time).

## Outputs

### `image`
Tagged image name

## Example usage

If you use dockerhub[https://hub.docker.com],
```yaml
uses: zenato/docker-action@master
with:
    username: ${{ secrets.DOCKER_USERNAME }}
    password: ${{ secrets.DOCKER_PASSWORD }}
    repository: user/test-repo
    tag: 1.0
```

Other registry,
```yaml
uses: zenato/docker-action@master
with:
    username: ${{ secrets.DOCKER_USERNAME }}
    password: ${{ secrets.DOCKER_PASSWORD }}
    repository: user/test-repo/test-app
    registry: docker.pkg.github.com
    tag: 1.0
```
