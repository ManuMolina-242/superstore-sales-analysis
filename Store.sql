
-- Proyecto: Análisis de Ventas - Superstore
-- Herramienta: SQL Server (SSMS)
-- Autor: Manuel Molina
-- Fecha: 24 Abril del 2026




/* 1. Top 5 productos por ingresos totales
 Objetivo: Identificar qué productos generan más ingresos*/

SELECT TOP 5
    Product_Name,
    ROUND(SUM(Sales), 2) AS ingresos
FROM superstore
GROUP BY Product_Name
ORDER BY ingresos DESC;



/* 2. Ganancia total por región
Objetivo: Ver qué región del país es más rentable*/

SELECT
    Region,
    ROUND(SUM(Profit), 2) AS total_ganancia
FROM superstore
GROUP BY Region
ORDER BY total_ganancia DESC;



/*3. Margen de ganancia por categoría de producto
Objetivo: Identificar qué categoría es menos eficiente
 Fórmula: (Profit / Sales) * 100*/

SELECT
    Category,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0) * 100, 2) AS margen_ganancia
FROM superstore
GROUP BY Category
ORDER BY margen_ganancia ASC;


/*4. Ranking de clientes por total comprado
Objetivo: Identificar los clientes más valiosos
Técnica: CTE + Window Function RANK()*/

WITH ventas_cliente AS (
    SELECT
        Customer_ID,
        ROUND(SUM(Sales), 2) AS total_comprado
    FROM superstore
    GROUP BY Customer_ID
)
SELECT
    Customer_ID,
    total_comprado,
    DENSE_RANK() OVER (ORDER BY total_comprado DESC) AS ranking
FROM ventas_cliente
ORDER BY ranking;


