# Create base folder
mkdir -p ml-project-structure && cd ml-project-structure

# ---------------------------
# Core folders and subfolders
# ---------------------------

# CI/CD
mkdir -p .github/workflows
touch .github/workflows/ci.yaml

# Notebooks
mkdir -p notebooks
touch notebooks/exploration.ipynb notebooks/eda.ipynb

# Data folders
mkdir -p data/raw data/interim data/processed

# Source code structure
mkdir -p src/{config,features,pipelines,api,application,evaluation}

# Feature pipeline
mkdir -p src/pipelines/feature_pipeline
touch src/pipelines/feature_pipeline/{load_data.py,preprocessing.py,feature_engineering.py}

# Training pipeline
mkdir -p src/pipelines/training_pipeline
touch src/pipelines/training_pipeline/{train.py,evaluate.py,save_model.py}

# Inference pipeline
mkdir -p src/pipelines/inference_pipeline
touch src/pipelines/inference_pipeline/{predict.py,postprocess.py}

# FastAPI app
touch src/api/{main.py,router.py}

# Application utilities
touch src/application/{logger.py,orchestrator.py,utils.py}

# Evaluation
touch src/evaluation/{metrics.py,drift_detection.py}

# Tests
mkdir -p tests
touch tests/test_training.py tests/test_api.py

# Scripts (automation)
mkdir -p scripts
touch scripts/{run_feature_pipeline.sh,run_training_pipeline.sh,run_inference.sh}

# Docker
mkdir -p docker
touch docker/Dockerfile docker/docker-compose.yaml

# MLflow configuration
mkdir -p mlflow
touch mlflow/mlflow_config.yaml

# ---------------------------
# Project-level files
# ---------------------------
touch pyproject.toml Makefile README.md

# Optional message
echo "ML Engineering project scaffold created successfully!"


'''
#### RUN THE SETUP SCRIPT IN TERMINAL

cd episode_01_project_setup_and_structure
chmod +x setup_project.sh
./setup_project.sh
'''