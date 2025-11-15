#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>
#include "producto.h"

// Abre un archivo en la misma carpeta donde está el .exe
static FILE* abrirArchivoEnRutaExe(const char* nombre, const char* modo)
{
    char exePath[MAX_PATH];

    DWORD len = GetModuleFileNameA(NULL, exePath, MAX_PATH);
    if (len == 0 || len == MAX_PATH) {
        return fopen(nombre, modo); // fallback
    }

    char* lastSlash = strrchr(exePath, '\\');
    if (lastSlash != NULL) {
        *(lastSlash + 1) = '\0';
    }

    char fullPath[MAX_PATH];
    snprintf(fullPath, MAX_PATH, "%s%s", exePath, nombre);

    return fopen(fullPath, modo);
}

int cargarProductos(ListaProductos* lista, const char* nombreArchivo)
{
    FILE* fp = abrirArchivoEnRutaExe(nombreArchivo, "r");
    if (!fp) {
        printf("No se pudo abrir %s\n", nombreArchivo);
        return 0;
    }

    lista->items = NULL;
    lista->cantidad = 0;

    Producto temp;

    while (fscanf(fp, "%d,%99[^,],%d,%f,%f\n",
        &temp.codigo,
        temp.nombre,
        &temp.cantidad_disponible,
        &temp.costo,
        &temp.precio_venta) == 5) {

        Producto* nuevo = (Producto*)realloc(lista->items,
            (lista->cantidad + 1) * sizeof(Producto));

        if (!nuevo) {
            printf("Error de memoria cargando productos.\n");
            free(lista->items);
            fclose(fp);
            return 0;
        }

        lista->items = nuevo;
        lista->items[lista->cantidad] = temp;
        lista->cantidad++;
    }

    fclose(fp);
    return 1;
}

int guardarProductos(const ListaProductos* lista, const char* nombreArchivo)
{
    FILE* fp = abrirArchivoEnRutaExe(nombreArchivo, "w");
    if (!fp) {
        printf("No se pudo abrir %s para escritura\n", nombreArchivo);
        return 0;
    }

    for (int i = 0; i < lista->cantidad; i++) {
        fprintf(fp, "%d,%s,%d,%.2f,%.2f\n",
            lista->items[i].codigo,
            lista->items[i].nombre,
            lista->items[i].cantidad_disponible,
            lista->items[i].costo,
            lista->items[i].precio_venta);
    }

    fclose(fp);
    return 1;
}

Producto* buscarProductoPorCodigo(ListaProductos* lista, int codigo)
{
    for (int i = 0; i < lista->cantidad; i++) {
        if (lista->items[i].codigo == codigo) {
            return &lista->items[i];
        }
    }
    return NULL;
}
