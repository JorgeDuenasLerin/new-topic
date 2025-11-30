# Nuevo tema

```
- diapositivas: marp
- prácticas: latex
- test: gift
```

## Generate marp

```
marp_file="main.md"; npx @marp-team/marp-cli@latest diapositivas/$marp_file --pdf --theme-set ./styles/upm.css --allow-local-files -o salida/$marp_file
```

```
npx @marp-team/marp-cli@latest  -I diapositivas  --pdf --theme-set ./styles/upm.css --allow-local-files -o salida/
```

## Comando para generar pdf desde latex

```
cd tareas/; latexmk -pdf tarea.tex -output-directory=../salida/; cd ../salida/; latexmk -c; cd ..
```

```
rm -f salida/*.{aux,log,out,toc,lof,lot,fls,fdb_latexmk,synctex.gz,bbl,blg,brf,nav,snm,vrb,dvi,ps}
```