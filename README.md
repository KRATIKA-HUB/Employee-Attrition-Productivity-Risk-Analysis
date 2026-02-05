# Employee Attrition & Productivity Risk Analysis

### 📊 Big 4 Consulting HR Analytics Case Study
This project addresses a critical challenge in high-pressure consulting environments: Predicting and Mitigating Employee Attrition. Using a synthetic dataset modelled after Big 4 firms (Deloitte, PwC, EY, KPMG), this analysis identifies the core drivers of turnover and provides a machine-learning framework to flag high-risk employees.

### 📌 Project Overview
In the professional services industry, high attrition leads to lost institutional knowledge and increased recruitment costs. This project utilizes Python to perform Exploratory Data Analysis (EDA) and build a predictive model to help HR teams transition from reactive to proactive retention strategies.

### 🛠️ Tools & Technologies
**Language:** Python

**Libraries:** Pandas (Data Manipulation), NumPy, Matplotlib & Seaborn (Visualization), Scikit-learn (Machine Learning)

**Environment:** Jupyter Notebook

### 📂 Dataset Description
The analysis is based on the Big4_HR_Analytics_Synthetic_Dataset.csv file, which contains 2,000+ employee records. Key features include:

**Demographics:** Age, Gender.

**Professional:** Department (Audit, Tax, Consulting, etc.), Job Level, Tenure.

**Performance & Engagement:** Monthly Salary, Avg Weekly Hours, Performance Rating, Training Hours.

**Target Variable:** Attrition (Yes/No).

### 🔍 Key Insights from EDA
Based on the analysis, the following factors were the primary drivers of attrition:

**Tenure:** Employees with lower tenure (less than 2 years) exhibit significantly higher exit rates.

**Work-Life Balance:** A direct correlation exists between high average weekly hours and attrition, particularly in the Consulting and Technology departments.

**Salary Stagnation:** Attrition peaks among "Analysts" and "Senior Analysts" whose salaries haven't adjusted relative to their workload.

**Training:** Employees with lower training hours in the last year were more likely to leave, suggesting a link between professional development and retention.

### 🤖 Modeling & Performance
I implemented two primary classification algorithms to predict attrition risk:

**Logistic Regression:** Used as a baseline probabilistic model.

**Decision Tree Classifier:** Utilized to capture non-linear relationships and provide clear "rules" for why employees might leave.

### Workflow:
**Preprocessing:** Categorical variables were transformed using LabelEncoder.

**Feature Scaling:** Standardized numerical features using StandardScaler for optimized model performance.

**Evaluation:** Models were assessed using Accuracy Scores, Confusion Matrices, and Classification Reports (Precision, Recall, F1-Score).

### 🚀 Business Recommendations
**Early Intervention:** Implement "Stay Interviews" and mentorship support for employees in their first 18 months.

**Burnout Mitigation:** Monitor teams exceeding 55+ weekly hours and rebalance workloads.

**Benchmarking:** Conduct bi-annual salary reviews for mid-level roles to remain competitive.

**Personalized Retention:** Use the model’s "Attrition Probability Score" to offer tailored incentives to high-value, high-risk talent.

### ✍️ Author
Kratika Gupta

Current Goal: Learning Data Analytics & Machine Learning.

Connect with me:

GitHub:github.com/KRATIKA-HUB
