-- ============================================================================
-- INVESTMENT_RESEARCH_ASSISTANT Evaluation Dataset
-- 10 questions with ground_truth_output covering all 3 agent tools:
--   - research_intelligence (Cortex Analyst)
--   - trading_analytics (Cortex Analyst)
--   - news_search (Cortex Search)
-- ============================================================================

CREATE OR REPLACE TABLE FSI_DEMO_DB.CAPITAL_MARKETS.INVESTMENT_RESEARCH_ASSISTANT_EVAL_DATASET (
    INPUT_QUERY VARCHAR,
    GROUND_TRUTH OBJECT
);

-- Q1: Research intelligence - latest AAPL recommendation
INSERT INTO FSI_DEMO_DB.CAPITAL_MARKETS.INVESTMENT_RESEARCH_ASSISTANT_EVAL_DATASET
SELECT
    'What is the latest analyst recommendation for AAPL?',
    OBJECT_CONSTRUCT('ground_truth_output',
        'The latest analyst recommendation for AAPL is BUY, issued by Sarah Chen on 2026-02-17 with a price target of $100, upgraded from a previous target of $95. The report title is "Strong Q4 Earnings Beat Expectations; Raising Price Target."');

-- Q2: Research intelligence - META downgrades
INSERT INTO FSI_DEMO_DB.CAPITAL_MARKETS.INVESTMENT_RESEARCH_ASSISTANT_EVAL_DATASET
SELECT
    'Has META been downgraded recently? If so, by whom?',
    OBJECT_CONSTRUCT('ground_truth_output',
        'Yes, META has been downgraded recently. Lisa Thompson downgraded META to HOLD on 2026-02-16 with a target price of $464 (previous target $359). Emily Watson also downgraded META to HOLD on 2026-02-11 with a target price of $114 (previous target $109). Both reports were titled "Headwinds Emerging; Downgrading to Hold."');

-- Q3: Trading analytics - AAPL market data
INSERT INTO FSI_DEMO_DB.CAPITAL_MARKETS.INVESTMENT_RESEARCH_ASSISTANT_EVAL_DATASET
SELECT
    'What was the closing price and trading volume for AAPL on the most recent trading day?',
    OBJECT_CONSTRUCT('ground_truth_output',
        'On the most recent trading day (2026-02-17), AAPL had a closing price of $50.00 with a trading volume of 100,000 shares. The high was $52.00 and the low was $48.00, with a VWAP of $50.00.');

-- Q4: Research intelligence - NVDA analyst summary
INSERT INTO FSI_DEMO_DB.CAPITAL_MARKETS.INVESTMENT_RESEARCH_ASSISTANT_EVAL_DATASET
SELECT
    'What do analysts say about NVDA? Summarize the latest research.',
    OBJECT_CONSTRUCT('ground_truth_output',
        'NVDA has a consensus BUY recommendation from analysts. The most recent research note was published on 2026-02-13 by Andrew Davis with a target price of $471, titled "New Product Launch Could Transform Growth Trajectory." David Kim also rates NVDA as BUY with a target of $121 as of 2026-02-08. All recent notes highlight a new product launch as a potential growth catalyst.');

-- Q5: Multi-tool (research + trading) - comprehensive AAPL overview
INSERT INTO FSI_DEMO_DB.CAPITAL_MARKETS.INVESTMENT_RESEARCH_ASSISTANT_EVAL_DATASET
SELECT
    'Give me a comprehensive overview of AAPL including recent analyst ratings and trading activity.',
    OBJECT_CONSTRUCT('ground_truth_output',
        'AAPL overview: On the research side, the latest analyst recommendation is BUY from Sarah Chen (2026-02-17) with an upgraded target price of $100 (previous $95), citing strong Q4 earnings. All research notes on AAPL carry a BUY recommendation. On the trading side, the most recent market data (2026-02-17) shows a closing price of $50.00, with a daily range of $48.00-$52.00 and volume of 100,000 shares at a VWAP of $50.00.');

-- Q6: News search - Tesla news
INSERT INTO FSI_DEMO_DB.CAPITAL_MARKETS.INVESTMENT_RESEARCH_ASSISTANT_EVAL_DATASET
SELECT
    'What is the latest news about Tesla?',
    OBJECT_CONSTRUCT('ground_truth_output',
        'The agent should use the news_search tool to retrieve recent news articles about Tesla (TSLA). The response should include article titles, publication dates, and key themes from the news coverage.');

-- Q7: Research intelligence - recent upgrades
INSERT INTO FSI_DEMO_DB.CAPITAL_MARKETS.INVESTMENT_RESEARCH_ASSISTANT_EVAL_DATASET
SELECT
    'Which stocks have been upgraded recently?',
    OBJECT_CONSTRUCT('ground_truth_output',
        'Recent upgrades include: AAPL upgraded to BUY by Sarah Chen on 2026-02-17 with a target of $100. KO upgraded to BUY by Michelle Park on 2026-02-12 with a target of $370. These are among the most recent upgrades in the research notes.');

-- Q8: Multi-tool (research + news) - META investment risks
INSERT INTO FSI_DEMO_DB.CAPITAL_MARKETS.INVESTMENT_RESEARCH_ASSISTANT_EVAL_DATASET
SELECT
    'I am considering investing in META. What are the key risks based on analyst research and any recent news?',
    OBJECT_CONSTRUCT('ground_truth_output',
        'Based on analyst research, META has been recently downgraded by multiple analysts. Lisa Thompson downgraded META to HOLD on 2026-02-16 and Emily Watson downgraded it to HOLD on 2026-02-11, both citing emerging headwinds. Key risks noted in the research include: macroeconomic slowdown impacting demand, competitive pressure from new entrants, execution risk on product roadmap, and regulatory uncertainty in key markets. The agent should also check recent news for additional context on META risks.');

-- Q9: Trading analytics - volume comparison
INSERT INTO FSI_DEMO_DB.CAPITAL_MARKETS.INVESTMENT_RESEARCH_ASSISTANT_EVAL_DATASET
SELECT
    'Compare the trading volume of AAPL and MSFT on the most recent trading day.',
    OBJECT_CONSTRUCT('ground_truth_output',
        'The agent should use the trading_analytics tool to retrieve and compare the trading volumes for both AAPL and MSFT on the most recent trading day. The response should present the volume figures side by side and note any significant differences.');

-- Q10: Research intelligence - sector overviews
INSERT INTO FSI_DEMO_DB.CAPITAL_MARKETS.INVESTMENT_RESEARCH_ASSISTANT_EVAL_DATASET
SELECT
    'Are there any sector overview research reports available? What sectors do they cover?',
    OBJECT_CONSTRUCT('ground_truth_output',
        'Yes, there are SECTOR_OVERVIEW type reports available in the research notes. For example, Jennifer Liu published a sector overview on 2026-02-05 with a NEUTRAL recommendation, discussing structural tailwinds including digital transformation, regulatory changes, and demographic shifts. The agent should query research notes with report_type SECTOR_OVERVIEW to provide the full list.');
