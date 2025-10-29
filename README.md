# Taller – Esquemas MLOps (solo diagramas)

## 1) Estructura del proyecto (esquema)
```text
Proyecto/
├── mlops_pipeline/
│   └── src/
│       ├── Cargar_datos.ipynb          # Carga de dataset (demo)
│       ├── comprension_eda.ipynb       # EDA
│       ├── ft_engineering.py           # Feature engineering
│       ├── heuristic_model.py          # Modelo heurístico base
│       ├── model_training.ipynb        # Entrenamiento/comparación
│       ├── model_deploy.ipynb          # Despliegue
│       ├── model_evaluation.ipynb      # Evaluación post-despliegue
│       └── model_monitoring.ipynb      # Monitoreo y datadrift
├── config.json                         # Configuración del pipeline
├── requirements.txt                    # Dependencias
├── .gitignore                          # Exclusiones de Git
└── set_up.bat                          # Script de entorno

## 2) Diagrama del pipeline (visual)

```mermaid
flowchart TD
    A[Cargar datos] --> B[EDA - Análisis exploratorio]
    B --> C[Feature engineering]
    C --> D[Entrenamiento de modelos]
    D --> E[Evaluación de modelos]
    E --> F{¿Desempeño adecuado?}
    F -- Sí --> G[Despliegue del modelo]
    F -- No --> C
    G --> H[Monitoreo y detección de drift]
    H --> B
