# 📊 Data Journalism: Uncovering Patterns in Global Happiness

An exploratory data analysis and data journalism project analyzing the **World Happiness Report (2019)** dataset using base R visualizations and statistical queries to uncover non-intuitive global trends.

---

## 💡 Overview & Data Story

This project demonstrates how raw statistical metrics can be transformed into compelling, headline-driven data stories without sacrificing analytical accuracy. Using base R graphics and querying functions, this project explores relationships between wealth, social support, health, and generosity across 156 nations.

### 📰 Lead Headline
> **"Why Money Buys Smiles but Generosity Doesn't: The Hidden Truth Behind Global Happiness Ratings!"**

#### Secondary Data Stories
* *"The Golden Years Gap: How Your Country's Tier Dictates Life Expectancy"*
* *"The Generosity Enigma: Why Giving Away Your Cash Won't Make Your Nation Happier"*

---

## 📈 Key Insights & Findings

1. **Wealth Directly Drives Well-Being**: A standard scatterplot reveals a strong positive linear correlation between `GDP.per.capita` and overall national `Score`.
2. **The Health Expectancy Divide**: Stratifying nations into **Top**, **Middle**, and **Bottom** happiness tiers exposes a significant drop in healthy life expectancy between top-tier and bottom-tier nations.
3. **The Generosity Enigma**: Counterintuitively, national generosity scores show virtually zero linear correlation with overall happiness scores, proving that high personal giving does not guarantee national life satisfaction.
4. **Economic Tiering**: Cross-tabulating `Wealth_Status` against `Tier` via mosaic plots demonstrates that nearly zero high-GDP nations rank in the bottom tier of global happiness.

---

## 🛠️ Technical Stack & Functions

* **Language**: R
* **Core Functions**: Base `R101` standard library (`read.csv()`, `nrow()`, `mean()`, `tapply()`, `table()`, logical indexing)
* **Visualizations**: Base R plotting suite (`plot()`, `boxplot()`, `mosaicplot()`)

---

## 📁 Repository Structure

```text
.
├── 2019.csv             # World Happiness 2019 dataset (Source: Kaggle)
├── code.R               # Main base R script containing data pipeline & plots
```

---

## 🚀 How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/world-happiness-data-journalism.git
   ```
2. Open `code.R` in **RStudio**.
3. Ensure `2019.csv` is placed in your working directory.
4. Run `code.R` sequentially to reproduce summary tables and figures.
