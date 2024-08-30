# Project Functions

## Data Understanding

### Import Libraries

- **`import_libraries`**: Imports essential libraries for data processing and analysis, including Pandas, Numpy, Matplotlib, Seaborn, Tldextract, and Scikit-learn.

### Import Data

- **`load_datasets`**: Loads datasets from specified paths and displays the first few rows of each dataset using `tabulate`.

### Print Column Names and Shape

- **`print_info`**: Prints column names and the shape (number of rows and columns) of the DataFrame.

## Feature Engineering

### Extract Domain

- **`extract_domain`**: Extracts the domain from a URL using `tldextract` and applies it to the 'url' column in the DataFrame.

### Sentiment Mapping

- **`map_sentiment_scores`**: Maps sentiment values from categorical labels to numerical scores (Positive: 1, Neutral: 0, Negative: -1) in the DataFrame.

### Merge DataFrames

- **`merge_dataframes`**: Merges multiple DataFrames on common keys to create a comprehensive dataset, combining `rating_df`, `domains_location_df`, and `traffic_data_df`.

## Data Preparation

### Check for Missing Values

- **`check_missing_values`**: Checks and reports missing values in each column of the DataFrame.

### Handle Missing Values

- **`handle_missing_values`**: Handles missing values by dropping unnecessary columns and imputing missing values with predefined fill values.

### Summary Statistics and Data Types

- **`print_summary_statistics`**: Prints summary statistics and data types of the DataFrame to understand the distribution and type of data.

### Dropping Irrelevant Columns and Feature Engineering

- **`drop_irrelevant_columns`**: Drops irrelevant columns from the DataFrame and extracts date-related features from datetime columns.

### Calculate Content Length and Title Word Count

- **`calculate_content_length`**: Calculates the length of the content and the word count of the title in the DataFrame.

## Outliers

### Plot Boxplots for Numerical Columns

- **`plot_boxplots`**: Plots boxplots for numerical columns to visualize the distribution and detect outliers.

### Identify Outliers Using Z-Score

- **`find_outliers_zscore`**: Identifies outliers in numerical columns based on Z-score.

### Plot Histograms

- **`plot_histograms`**: Plots histograms for numerical columns and displays descriptive statistics like mean, median, and standard deviation.

### Plot Bar Charts for Categorical Data

- **`plot_bar_charts`**: (Uncomment if needed) Plots bar charts for categorical data to visualize frequency distributions.

## Text Analysis

### Extract Keywords Using TF-IDF

- **`extract_keywords_tfidf`**: Extracts the top keywords from a list of text documents using TF-IDF.

### Categorize Region

- **`categorize_region`**: Categorizes a website based on its location using predefined regions.

### Estimate Visitors

- **`estimate_visitors`**: Estimates website visitors based on global rank and reference data.

### Extract Keywords with Error Handling

- **`extract_keywords_safe`**: Safely extracts keywords from text using TF-IDF with error handling for empty or problematic inputs.

### Calculate Similarity

- **`calculate_similarity`**: Calculates the similarity between two sets of keywords using the intersection and union.

### Calculate Cosine Similarity

- **`calculate_cosine_similarity`**: Calculates cosine similarity between two text documents using TF-IDF vectors.

### Preprocess Text

- **`preprocess_text`**: Tokenizes and lemmatizes text, removing stop words and non-alphabetic characters.

## Model Training and Evaluation

### Model Training

- **`train_naive_bayes_classifier`**: Trains a Naive Bayes classifier on TF-IDF vectorized text data to predict categories.
- **`vectorize_text_data`**: Transforms text data into TF-IDF vectors for use in machine learning models.

### Model Evaluation

- **`evaluate_model_performance`**: Evaluates the trained model using accuracy score and classification report.
- **`log_model_with_mlflow`**: Logs the trained model to MLflow, including model parameters and performance metrics.

## PostgreSQL Integration

### Schema Design and Creation

- **`create_postgres_schema`**: Creates a PostgreSQL schema for storing ML features, including tables for article details and sentiment analysis.
- **`create_postgres_tables`**: Defines and creates tables in PostgreSQL for storing features extracted from the dataset.

### Data Loading

- **`load_data_to_postgres`**: Loads the processed DataFrame with ML features into PostgreSQL tables for further analysis.
