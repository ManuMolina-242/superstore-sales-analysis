# Retail Sales Analysis & Dashboard — SQL Server + Power BI

**Herramienta:** SQL Server (SSMS) + Power BI Desktop  
**Autor:** Manuel Molina  
**Fecha:** 24 de Abril del 2026

---

## Descripción
Análisis exploratorio de un dataset de ventas retail con más de 9,900 transacciones. El objetivo fue responder preguntas clave de negocio sobre productos, regiones, categorías y clientes usando SQL, y visualizar los hallazgos en un dashboard interactivo de Power BI.

---

## Preguntas analizadas
- ¿Cuáles son los 5 productos que más ingresos generan?
- ¿Qué región del país es más rentable?
- ¿Qué categoría de producto tiene el margen de ganancia más bajo?
- ¿Cuáles son los clientes más valiosos por total comprado?

---

## Hallazgos

### 1. Concentración de ingresos en productos
El producto #1 (Canon imageCLASS 2200 Advanced Copier) generó $61,599 en ventas — más del doble que el quinto lugar ($19,823). Esto indica una concentración alta en pocos productos, lo que representa un riesgo si ese producto deja de venderse.

### 2. La región West supera ampliamente a Central en rentabilidad
West lidera con $108,418 en ganancia total, mientras que Central queda en último lugar con $39,706 — una diferencia de 2.7x. Incluso East ($91,522), en el extremo opuesto del país, más que duplica a Central. Posibles causas: descuentos excesivos, mix de productos menos rentable o costos logísticos más altos en esa región.

### 3. Furniture es la categoría menos eficiente
Con un margen de ganancia de apenas 2.49%, Furniture está muy por debajo de Technology (17.40%) y Office Supplies (17.04%). Por cada dólar vendido en muebles, el negocio retiene menos de 3 centavos de ganancia — una señal clara de que esta categoría necesita revisión de precios o costos.

### 4. 793 clientes únicos identificados y rankeados
El cliente más valioso (Sean Miller, SM-20320) acumuló $25,043 en compras totales, un 31% más que el segundo lugar ($19,052). Este tipo de ranking permite priorizar estrategias de retención hacia los clientes de mayor valor.

---

## Técnicas SQL utilizadas
- `GROUP BY` + funciones de agregación (`SUM`, `ROUND`)
- `ORDER BY` con criterios numéricos
- Cálculo de márgenes con `NULLIF` para evitar división por cero
- `CTE (WITH)` + Window Function (`DENSE_RANK`) para ranking de clientes

---

## Power BI Dashboard
Dashboard interactivo de 3 páginas construido sobre el mismo dataset.

**Página 1 — Product Performance**
- KPIs: Total Sales ($2.30M), Total Profit ($286K), Margen (12.47%)
- Sales vs Profit por Category
- Sales y Profit por Sub-Category
- Hallazgo clave: Furniture lidera en ventas pero tiene el margen más bajo (2.49%). Tables y Bookcases generan profit negativo.

**Página 2 — Regional Performance**
- Sales, Profit y Margen % por Region
- Hallazgo clave: West genera 2.7x más profit que Central a pesar de ventas similares.

**Página 3 — Customer Analysis**
- Top 10 clientes por Sales y por Profit
- Hallazgo clave: Sean Miller es top 1 en ventas pero no aparece en top de profit. Tamara Chand y Raymond Buch lideran en ambas métricas.

**Técnicas Power BI:** KPI Cards, Bar Charts, DAX measures (DIVIDE para margen %), Top N filters, tema Innovation.

---

## Archivos

| Archivo | Descripción |
|---------|-------------|
| `store.sql` | Queries del análisis con comentarios |
| `Superstore.csv` | Dataset original |
| `Superstore_Dashboard.pbix` | Dashboard Power BI interactivo |

---

## Dataset
[Superstore Sales Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final) — disponible públicamente en Kaggle

---

## Autor
**Manuel Molina**  
Statistics Student | Data Analytics Enthusiast  
University of Costa Rica (UCR) · Instituto Tecnológico de Costa Rica (TEC)
