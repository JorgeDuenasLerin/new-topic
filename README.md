# Nuevo tema

```
- diapositivas: marp
- prácticas: latex
- test: gift
```

## TODO

- Preview with style in VSCODE
- Latex example
- GIFT example

## Generate marp

```
marp_file="main.md"; npx @marp-team/marp-cli@latest diapositivas/$marp_file --pdf --theme-set ./styles/upm.css --allow-local-files -o salida/$marp_file
```

```
npx @marp-team/marp-cli@latest  -I diapositivas  --pdf --theme-set ./styles/upm.css --allow-local-files -o salida/
```