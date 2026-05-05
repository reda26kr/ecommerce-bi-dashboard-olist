# E-commerce Business Intelligence Dashboard — Olist Dataset

## 🇫🇷 Version

## 1. Contexte du projet

Ce projet a pour objectif de réaliser une analyse Business Intelligence complète à partir de données e-commerce.

L’objectif est d’aider une entreprise e-commerce à mieux comprendre ses performances commerciales, ses clients, ses produits, ses régions les plus rentables et ses problématiques de livraison.

Le projet couvre l’ensemble du processus Data Analyst :

- compréhension des données ;
- nettoyage et préparation avec Python ;
- analyse SQL ;
- création de KPIs business ;
- construction d’un dashboard Power BI ;
- formulation de recommandations business.

---

## 2. Dataset utilisé

Le dataset utilisé est le **Brazilian E-Commerce Public Dataset by Olist**.

Il contient des données réelles anonymisées d’une marketplace brésilienne, incluant :

- commandes ;
- clients ;
- produits ;
- paiements ;
- vendeurs ;
- avis clients ;
- informations de livraison ;
- localisation.

Dans ce projet, l’analyse principale se concentre sur les commandes livrées afin de mesurer les ventes réellement finalisées.

---

## 3. Objectifs business

Les principales questions traitées sont :

- Quel est le chiffre d’affaires total ?
- Combien de commandes ont été livrées ?
- Quel est le panier moyen ?
- Quelles catégories génèrent le plus de chiffre d’affaires ?
- Quelles régions sont les plus performantes ?
- Quels produits sont les plus rentables ?
- Quel est le taux de réachat client ?
- Quels clients sont les plus fidèles ?
- Quel est le délai moyen de livraison ?
- Quelles régions présentent le plus de retards ?

---

## 4. Outils utilisés

- Python
- Pandas
- Jupyter Notebook
- SQL / SQLite
- DB Browser for SQLite
- Power BI
- DAX
- GitHub

---

## 5. Structure du projet

```text
Projet_BI_Ecommerce_Olist/
│
├── data/
│   ├── raw/
│   └── clean/
│       ├── sales_clean.csv
│       ├── sales_delivered.csv
│       └── basic_kpis.csv
│
├── notebooks/
│   └── 01_data_understanding.ipynb
│
├── sql/
│   ├── 01_kpi_overview.sql
│   ├── 02_monthly_sales.sql
│   ├── 03_sales_by_category.sql
│   ├── 04_sales_by_region.sql
│   ├── 05_top_products.sql
│   ├── 06_top_customers.sql
│   ├── 07_repeat_purchase_rate.sql
│   ├── 08_delivery_performance.sql
│   ├── 09_late_deliveries.sql
│   ├── 10_late_deliveries_by_region.sql
│   ├── 11_business_summary.sql
│   └── olist_bi.db
│
├── dashboard/
│   └── olist_ecommerce_dashboard.pbix
│
├── report/
│
├── requirements.txt
└── README.md
```

---

## 6. KPIs principaux

| KPI | Valeur |
|---|---:|
| Chiffre d’affaires total | 13 221 498.11 |
| Commandes livrées | 96 478 |
| Clients uniques | 93 358 |
| Articles vendus | 110 197 |
| Panier moyen | 137.04 |
| Taux de réachat | 3.00 % |
| Délai moyen de livraison | 12.01 jours |
| Taux de retard de livraison | 7.91 % |

---

## 7. Analyses réalisées

### Analyse des ventes

- évolution mensuelle du chiffre d’affaires ;
- chiffre d’affaires par catégorie ;
- chiffre d’affaires par région ;
- top 10 produits par chiffre d’affaires.

### Analyse client

- nombre de clients uniques ;
- taux de réachat ;
- top clients par nombre de commandes ;
- top clients par chiffre d’affaires.

### Analyse livraison

- délai moyen de livraison ;
- taux de retard ;
- retards par région ;
- délai moyen de livraison par région.

---

## 8. Principaux résultats

- Le chiffre d’affaires total des commandes livrées est d’environ **13.22 millions**.
- La catégorie **health_beauty** est la plus performante en chiffre d’affaires.
- La région **SP** génère le plus grand volume de ventes.
- Le taux de réachat est faible, avec seulement **3.00 %** de clients récurrents.
- Le délai moyen de livraison est d’environ **12 jours**.
- Le taux de retard de livraison est de **7.91 %**.
- Certaines régions présentent des taux de retard plus élevés que la moyenne, notamment **AL, MA, SE, PI et CE**.

---

## 9. Recommandations business

- Mettre en place des campagnes de fidélisation pour augmenter le taux de réachat.
- Identifier les catégories à fort panier moyen pour renforcer les actions marketing.
- Surveiller les régions avec un fort taux de retard afin d’améliorer la performance logistique.
- Prioriser les régions à fort chiffre d’affaires comme **SP, RJ et MG** pour les actions commerciales.
- Analyser les produits premium qui génèrent un chiffre d’affaires élevé malgré un faible volume de ventes.

---

## 10. Dashboard Power BI

Le dashboard Power BI est organisé en plusieurs pages :

1. **Executive Overview**  
   Vue globale des KPIs principaux.

2. **Sales Analysis**  
   Analyse des ventes par mois, catégorie, région et produit.

3. **Delivery Analysis**  
   Analyse des délais de livraison et des retards par région.

4. **Customer Loyalty**  
   Analyse de la fidélité client et des clients à forte valeur.

---

## 11. Conclusion

Ce projet montre une démarche complète de Data Analyst / BI Analyst, depuis la préparation des données jusqu’à la création d’un dashboard interactif.

Il met en avant des compétences en Python, SQL, Power BI, DAX, analyse business, modélisation de KPIs et storytelling data.

---

# 🇬🇧 English Version

## 1. Project Context

This project aims to build a complete Business Intelligence analysis using e-commerce data.

The goal is to help an e-commerce company better understand its sales performance, customers, products, top-performing regions, and delivery issues.

The project covers the full Data Analyst workflow:

- data understanding;
- data cleaning and preparation with Python;
- SQL analysis;
- business KPI calculation;
- Power BI dashboard creation;
- business recommendations.

---

## 2. Dataset

The dataset used is the **Brazilian E-Commerce Public Dataset by Olist**.

It contains anonymized real-world data from a Brazilian marketplace, including:

- orders;
- customers;
- products;
- payments;
- sellers;
- customer reviews;
- delivery information;
- location data.

In this project, the main analysis focuses on delivered orders in order to measure finalized sales.

---

## 3. Business Objectives

The main business questions answered are:

- What is the total revenue?
- How many orders were delivered?
- What is the average order value?
- Which categories generate the most revenue?
- Which regions perform best?
- Which products are the most profitable?
- What is the repeat purchase rate?
- Who are the most loyal customers?
- What is the average delivery time?
- Which regions have the highest late delivery rates?

---

## 4. Tools Used

- Python
- Pandas
- Jupyter Notebook
- SQL / SQLite
- DB Browser for SQLite
- Power BI
- DAX
- GitHub

---

## 5. Project Structure

```text
Projet_BI_Ecommerce_Olist/
│
├── data/
│   ├── raw/
│   └── clean/
│       ├── sales_clean.csv
│       ├── sales_delivered.csv
│       └── basic_kpis.csv
│
├── notebooks/
│   └── 01_data_understanding.ipynb
│
├── sql/
│   ├── 01_kpi_overview.sql
│   ├── 02_monthly_sales.sql
│   ├── 03_sales_by_category.sql
│   ├── 04_sales_by_region.sql
│   ├── 05_top_products.sql
│   ├── 06_top_customers.sql
│   ├── 07_repeat_purchase_rate.sql
│   ├── 08_delivery_performance.sql
│   ├── 09_late_deliveries.sql
│   ├── 10_late_deliveries_by_region.sql
│   ├── 11_business_summary.sql
│   └── olist_bi.db
│
├── dashboard/
│   └── olist_ecommerce_dashboard.pbix
│
├── report/
│
├── requirements.txt
└── README.md
```

---

## 6. Main KPIs

| KPI | Value |
|---|---:|
| Total Revenue | 13,221,498.11 |
| Delivered Orders | 96,478 |
| Unique Customers | 93,358 |
| Items Sold | 110,197 |
| Average Order Value | 137.04 |
| Repeat Purchase Rate | 3.00% |
| Average Delivery Time | 12.01 days |
| Late Delivery Rate | 7.91% |

---

## 7. Analyses Performed

### Sales Analysis

- monthly revenue trend;
- revenue by category;
- revenue by region;
- top 10 products by revenue.

### Customer Analysis

- unique customers;
- repeat purchase rate;
- top customers by number of orders;
- top customers by revenue.

### Delivery Analysis

- average delivery time;
- late delivery rate;
- late deliveries by region;
- average delivery time by region.

---

## 8. Key Findings

- Total revenue from delivered orders is approximately **13.22 million**.
- The **health_beauty** category generates the highest revenue.
- The **SP** region generates the highest sales volume.
- The repeat purchase rate is low, with only **3.00%** of customers purchasing more than once.
- The average delivery time is around **12 days**.
- The late delivery rate is **7.91%**.
- Some regions show higher late delivery rates, especially **AL, MA, SE, PI, and CE**.

---

## 9. Business Recommendations

- Implement customer retention campaigns to increase repeat purchases.
- Focus marketing efforts on high average order value categories.
- Monitor regions with high late delivery rates to improve logistics performance.
- Prioritize high-revenue regions such as **SP, RJ, and MG** for business development.
- Analyze premium products that generate high revenue despite lower sales volume.

---

## 10. Power BI Dashboard

The Power BI dashboard is organized into several pages:

1. **Executive Overview**  
   Overview of the main business KPIs.

2. **Sales Analysis**  
   Sales analysis by month, category, region, and product.

3. **Delivery Analysis**  
   Delivery time and late delivery analysis by region.

4. **Customer Loyalty**  
   Customer loyalty and high-value customer analysis.

---

## 11. Conclusion

This project demonstrates a complete Data Analyst / BI Analyst workflow, from data preparation to interactive dashboard creation.

It highlights skills in Python, SQL, Power BI, DAX, business analysis, KPI design, and data storytelling.