#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "usuarios.h"
#include "producto.h"

// Modificado según el punto 1 - Valeska Urrutia
// PARTE MODIFICADA PARA EL VIDEO 2 - VALESKA URRUTIA



typedef struct {
    Producto* producto;
    int cantidad;
} LineaVenta;

int obtenerSiguienteFactura(const char* nombreArchivo);
void obtenerFechaActual(char* buffer, int tam);

int main(void)
{
    Usuario usuarioActual;
    char usuario[50], clave[50];
    int intentos = 0;

    while (intentos < 3) {
        printf("Usuario: ");
        scanf("%49s", usuario);
        printf("Clave: ");
        scanf("%49s", clave);

        if (validarUsuario(usuario, clave, &usuarioActual)) {
            printf("\nBienvenido, %s\n\n", usuarioActual.nombre);
            break;
        }
        else {
            printf("Usuario o clave incorrectos.\n\n");
            intentos++;
        }
    }

    if (intentos == 3) {
        printf("Demasiados intentos fallidos. Cerrando sistema.\n");
        return 0;
    }

    ListaProductos inventario;
    if (!cargarProductos(&inventario, "producto.txt")) {
        return 1;
    }

    int numFactura = obtenerSiguienteFactura("ventas.txt");

    char fecha[11];
    obtenerFechaActual(fecha, sizeof(fecha));

    LineaVenta* lineas = NULL;
    int numLineas = 0;

    char continuar = 's';

    while (continuar == 's' || continuar == 'S') {
        int codigo, cantidad;
        printf("Código de producto: ");
        scanf("%d", &codigo);
        printf("Cantidad a vender: ");
        scanf("%d", &cantidad);

        Producto* p = buscarProductoPorCodigo(&inventario, codigo);

        if (p == NULL) {
            printf("Producto no encontrado.\n");
        }
        else if (cantidad <= 0) {
            printf("Cantidad inválida.\n");
        }
        else if (cantidad > p->cantidad_disponible) {
            printf("No hay suficiente inventario. Disponible: %d\n",
                p->cantidad_disponible);
        }
        else {
            LineaVenta* nueva = (LineaVenta*)realloc(
                lineas,
                (numLineas + 1) * sizeof(LineaVenta));

            if (!nueva) {
                printf("Error de memoria.\n");
                free(lineas);
                free(inventario.items);
                return 1;
            }
            lineas = nueva;
            lineas[numLineas].producto = p;
            lineas[numLineas].cantidad = cantidad;
            numLineas++;
            printf("Producto agregado: %s\n", p->nombre);
        }

        printf("\n¿Desea ingresar otro producto? (s/n): ");
        scanf(" %c", &continuar);
    }

    if (numLineas == 0) {
        printf("No se ingresaron productos. Saliendo...\n");
        free(lineas);
        free(inventario.items);
        return 0;
    }

    printf("\n=============================\n");
    printf("Factura No: %d\n", numFactura);
    printf("Fecha: %s\n", fecha);
    printf("=============================\n");
    printf("%-10s %-20s %-10s %-10s %-10s\n",
        "Código", "Producto", "Cant", "P.Unit", "Total");

    float totalFactura = 0.0f;

    for (int i = 0; i < numLineas; i++) {
        Producto* p = lineas[i].producto;
        int cant = lineas[i].cantidad;
        float totalLinea = cant * p->precio_venta;
        totalFactura += totalLinea;

        printf("%-10d %-20s %-10d %-10.2f %-10.2f\n",
            p->codigo, p->nombre, cant, p->precio_venta, totalLinea);
    }

    printf("----------------------------------------------\n");
    printf("TOTAL FACTURA: %.2f\n", totalFactura);

    char confirmar;
    printf("\n¿Confirmar venta? (s/n): ");
    scanf(" %c", &confirmar);

    if (confirmar != 's' && confirmar != 'S') {
        printf("Venta cancelada. No se modificó el inventario.\n");
        free(lineas);
        free(inventario.items);
        return 0;
    }

    FILE* fv = fopen("ventas.txt", "a");
    if (!fv) {
        printf("No se pudo abrir ventas.txt para escritura.\n");
        free(lineas);
        free(inventario.items);
        return 1;
    }

    for (int i = 0; i < numLineas; i++) {
        Producto* p = lineas[i].producto;
        int cant = lineas[i].cantidad;

        p->cantidad_disponible -= cant;

        fprintf(fv, "%d,%d,%s,%d,%.2f,%.2f,%s\n",
            numFactura,
            p->codigo,
            p->nombre,
            cant,
            p->costo,
            p->precio_venta,
            fecha);
    }
    fclose(fv);

    if (!guardarProductos(&inventario, "producto.txt")) {
        printf("Error al guardar inventario.\n");
    }
    else {
        printf("Venta registrada y inventario actualizado.\n");
    }

    free(lineas);
    free(inventario.items);
    return 0;
}

int obtenerSiguienteFactura(const char* nombreArchivo)
{
    FILE* fp = fopen(nombreArchivo, "r");
    if (!fp) return 1; // si no existe, empezamos en 1

    int ultimaFactura = 0;
    int numFactura, codigo, cantidad;
    float costo, precio;
    char nombre[100], fecha[11];

    while (fscanf(fp, "%d,%d,%99[^,],%d,%f,%f,%10s\n",
        &numFactura,
        &codigo,
        nombre,
        &cantidad,
        &costo,
        &precio,
        fecha) == 7) {
        ultimaFactura = numFactura;
    }

    fclose(fp);
    return ultimaFactura + 1;
}

void obtenerFechaActual(char* buffer, int tam)
{
    time_t t = time(NULL);
    struct tm* tm_info = localtime(&t);
    strftime(buffer, tam, "%Y-%m-%d", tm_info);
}
