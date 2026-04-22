# Cortex Agent Evaluation

<img width="85" alt="map-user" src="https://img.shields.io/badge/views-000-green"> <img width="125" alt="map-user" src="https://img.shields.io/badge/unique visits-000-green">

This GitHub repository demonstrates how to set up an Agent evaluation run on an existing Cortex Investment Research Assistant agent. Including using ground truth data and evaluating answer correctness and logical consistency.

## How to deploy / use the code sample(s)

1. Deploy the Investment Research Agent

    This repository assumes you have an existing Cortex Investment Research Assistant agent. If you want to create the agent used in this example the [Cortex Agent FSI   Examples](https://github.com/sfc-gh-csharkey/Cortex_Agent_FSI_Examples) repository has the instructions and will include links to create the agent's dependencies including the [Cortex Search Service](https://github.com/sfc-gh-csharkey/Cortex_Search_FSI_Examples), [Semantic Views / Analayst](https://github.com/sfc-gh-csharkey/Cortex_Analyst_FSI_Examples) and deploying the [sample data](https://github.com/sfc-gh-csharkey/Sample_Data_Financial_Services).

2.  Create Evaluation Run via. Snowsight UI

Begin by navigating to the Snowsight web UI, agents, INVESTMENT_RESEARCH_ASSISTANT and finally evaluations. Click on create evaluation run

<img width="800" alt="quick_setup" src="https://github.com/sfc-gh-csharkey/Cortex_Agent_Evaluation/blob/main/README/1_readme.png">

Provide a name, description for the evaluation run. Then click on next

<img width="700" alt="quick_setup" src="https://github.com/sfc-gh-csharkey/Cortex_Agent_Evaluation/blob/main/README/2_readme.png">

Evaluation runs use [Snowflake Data Sets](https://docs.snowflake.com/en/developer-guide/snowflake-ml/dataset) as their input. We will use the UI to create a dataset from our table.

Select create a new dataset. Select the database, schema and source table that you created via. the [0_CREATE_EVAL_DATASET.sql](https://github.com/sfc-gh-csharkey/Cortex_Agent_Evaluation/blob/main/0_CREATE_EVAL_DATASET.sql). Then click on next

<img width="800" alt="quick_setup" src="https://github.com/sfc-gh-csharkey/Cortex_Agent_Evaluation/blob/main/README/3_readme.png">

Configure the input query, enable the answer correctness with ground truth and enable logical consistency. Then click create

<img width="800" alt="quick_setup" src="https://github.com/sfc-gh-csharkey/Cortex_Agent_Evaluation/blob/main/README/4_readme.png">

Monitor the status of the evaluation run. Click on the evaluation to see the details

<img width="800" alt="quick_setup" src="https://github.com/sfc-gh-csharkey/Cortex_Agent_Evaluation/blob/main/README/5_readme.png">

The detailed view will show you evaluation per input, you can click on any individual input to see the details

<img width="800" alt="quick_setup" src="https://github.com/sfc-gh-csharkey/Cortex_Agent_Evaluation/blob/main/README/6_readme.png">
