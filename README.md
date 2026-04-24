# Análisis de Ventas - Superstore
**Herramienta:** SQL Server (SSMS)  
**Autor:** Manuel Molina  
**Fecha:** 24 de Abril del 2026

---

## Descripción

Análisis exploratorio de un dataset de ventas retail con más de 9,900 transacciones. El objetivo fue responder preguntas clave de negocio sobre productos, regiones, categorías y clientes usando SQL.

---

## Preguntas analizadas

1. ¿Cuáles son los 5 productos que más ingresos generan?
2. ¿Qué región del país es más rentable?
3. ¿Qué categoría de producto tiene el margen de ganancia más bajo?
4. ¿Cuáles son los clientes más valiosos por total comprado?

---

## Hallazgos

**1. Concentración de ingresos en productos**  
El producto #1 (Riverside Palais Royal Lawyers Bookcase) generó $30,041,418 en ingresos — un 63% más que el quinto lugar ($18,382,468). Esto indica una concentración alta en pocos productos, lo que representa un riesgo si ese producto deja de venderse.

**2. La región West supera ampliamente a Central en rentabilidad**  
West lidera con $715,162,034 en ganancia total, mientras que Central queda en último lugar con $204,581,213 — una diferencia de 3.5x. Esto es llamativo considerando la posición geográfica de Central. Incluso East ($653,372,826), en el extremo opuesto del país, casi triplica a Central. Posibles causas: descuentos excesivos, mix de productos menos rentable o costos logísticos más altos en esa región.

**3. Furniture es la categoría menos eficiente**  
Con un margen de ganancia de apenas 10.74%, Furniture está muy por debajo de Technology (296.99%) y Office Supplies (303.85%). Por cada dólar vendido en muebles, el negocio retiene menos de 11 centavos de ganancia — una señal clara de que esta categoría necesita revisión de precios o costos.

**4. 793 clientes únicos identificados y rankeados**  
Se identificaron 793 clientes distintos. El cliente más valioso (AG-10675) acumuló $24,906,012 en compras totales, más del doble que el segundo lugar ($14,798,847). Este tipo de ranking permite priorizar estrategias de retención hacia los clientes de mayor valor.

---

## Técnicas SQL utilizadas

- `GROUP BY` + funciones de agregación (`SUM`, `ROUND`)
- `ORDER BY` con criterios numéricos
- Cálculo de márgenes con `NULLIF` para evitar división por cero
- CTE (`WITH`) + Window Function (`DENSE_RANK`) para ranking de clientes

---

## Archivos

| Archivo | Descripción |
|---|---|
| `analisis_superstore.sql` | Queries del análisis con comentarios |
| `Superstore.csv` | Dataset original |

---

## Dataset

Superstore Sales Dataset — disponible públicamente en [Kaggle](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)
