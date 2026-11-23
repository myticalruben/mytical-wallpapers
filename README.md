# mytical-wallpapers

Colección **privada** de wallpapers personales de Mytical.

No se distribuye con la distro ni con el repo público `Mytical`. Su contenido
es para uso personal; no se concede permiso de redistribución.

## Instalar

```sh
git clone git@github.com:myticalruben/mytical-wallpapers.git
cd mytical-wallpapers
./install.sh
```

Opciones:

- `./install.sh --force` reemplaza archivos existentes.
- `MYTICAL_WALLPAPER_DIR=/otra/ruta ./install.sh` cambia el destino.

El destino por defecto es `~/Pictures/Wallpapers`. La configuración de Mytical
sigue usando esa ruta, así que no hay que cambiar nada más.

## Agregar o quitar

Desde Mytical:

```sh
wallpapers add ~/Descargas/nuevo.jpg
wallpapers remove viejo.jpg
wallpapers list
wallpapers set 03.jpg
```

Para conservar los cambios en este repo privado, copiá el archivo a
`wallpapers/` y hacé commit.
