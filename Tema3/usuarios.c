#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>
#include <windows.h>
#include "usuarios.h"

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
        *(lastSlash + 1) = '\0';    // deja solo la carpeta
    }

    char fullPath[MAX_PATH];
    snprintf(fullPath, MAX_PATH, "%s%s", exePath, nombre);

    return fopen(fullPath, modo);
}

int validarUsuario(const char* usuario, const char* clave, Usuario* outUsuario)
{
    FILE* fp = abrirArchivoEnRutaExe("vendedores.txt", "r");

    if (fp == NULL) {
        printf("No se pudo abrir el archivo vendedores.txt\n");
        return 0;
    }

    char u[50];
    char c[50];
    char n[100];

    // Formato: usuario,clave,nombre
    while (fscanf(fp, "%49[^,],%49[^,],%99[^\n]\n", u, c, n) == 3) {

        if (strcmp(u, usuario) == 0 && strcmp(c, clave) == 0) {

            if (outUsuario != NULL) {
                strcpy_s(outUsuario->usuario, sizeof(outUsuario->usuario), u);
                strcpy_s(outUsuario->clave, sizeof(outUsuario->clave), c);
                strcpy_s(outUsuario->nombre, sizeof(outUsuario->nombre), n);
            }

            fclose(fp);
            return 1; // login ok
        }
    }

    fclose(fp);
    return 0;           // usuario/clave no encontrado
}
