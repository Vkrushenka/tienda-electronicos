#pragma once
#ifndef PRODUCTO_H
#define PRODUCTO_H

typedef struct {
    int   codigo;
    char  nombre[100];
    int   cantidad_disponible;
    float costo;
    float precio_venta;
} Producto;

typedef struct {
    Producto* items;   // memoria dinámica
    int       cantidad;
} ListaProductos;

int cargarProductos(ListaProductos* lista, const char* nombreArchivo);
int guardarProductos(const ListaProductos* lista, const char* nombreArchivo);
Producto* buscarProductoPorCodigo(ListaProductos* lista, int codigo);

#endif
