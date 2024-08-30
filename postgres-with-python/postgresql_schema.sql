-- Create Schema for Sentiment Analysis and Correlations
CREATE SCHEMA IF NOT EXISTS sentiment_analysis;

-- Switch to the new schema
SET search_path TO sentiment_analysis;

-- Table to store article details with sentiment and keyword analysis
CREATE TABLE IF NOT EXISTS articles (
    article_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    content TEXT,
    category VARCHAR(255),
    title_sentiment VARCHAR(50),
    title_sentiment_score FLOAT,
    standardized_sentiment_score FLOAT,
    title_keywords TEXT[],
    content_keywords TEXT[],
    title_content_similarity FLOAT,
    title_content_cosine_similarity FLOAT,
    dominant_topic VARCHAR(255),
    event_cluster INT
);
