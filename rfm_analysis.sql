
-- RFM ANALYSIS USING BIGQUERY

-- Step 1: Combine all sales tables
create or replace table `rfm1818.sales.sales_2025` as
select * from `rfm1818.sales.sales202501`
union all select * from `rfm1818.sales.sales202502`
union all select * from `rfm1818.sales.sales202503`
union all select * from `rfm1818.sales.sales202504`
union all select * from `rfm1818.sales.sales202505`
union all select * from `rfm1818.sales.sales202506`
union all select * from `rfm1818.sales.sales202507`
union all select * from `rfm1818.sales.sales202508`
union all select * from `rfm1818.sales.sales202509`
union all select * from `rfm1818.sales.sales202510`
union all select * from `rfm1818.sales.sales202511`
union all select * from `rfm1818.sales.sales202512`;

-- Step 2: Calculate RFM Metrics
create or replace view `rfm1818.sales.rfm_metrics` as
select 
  customerid,
  max(orderdate) as last_order_date,
  date_diff(date '2026-03-06', max(orderdate), day) as recency,
  count(*) as frequency,
  sum(ordervalue) as monetary
from `rfm1818.sales.sales_2025`
group by customerid;

-- Step 3: Assign RFM Scores
create or replace view `rfm1818.sales.rfm_scores` as
select *,
  ntile(10) over(order by recency asc) as r_score,
  ntile(10) over(order by frequency desc) as f_score,
  ntile(10) over(order by monetary desc) as m_score
from `rfm1818.sales.rfm_metrics`;

-- Step 4: Total Score
create or replace view `rfm1818.sales.rfm_totalscores` as
select 
  customerid,
  recency,
  frequency,
  monetary,
  r_score,
  f_score,
  m_score,
  (r_score + f_score + m_score) as rfm_total_score
from `rfm1818.sales.rfm_scores`;

-- Step 5: Segmentation
create or replace table `rfm1818.sales.rfm_segments_final` as
select *,
  case 
    when rfm_total_score >= 28 then 'champions'
    when rfm_total_score >= 24 then 'loyal vips'
    when rfm_total_score >= 20 then 'potential loyalists'
    when rfm_total_score >= 16 then 'promising'
    when rfm_total_score >= 12 then 'engaged'
    when rfm_total_score >= 8 then 'requires attention'
    when rfm_total_score >= 4 then 'at risk'
    else 'lost / inactive'
  end as rfm_segment
from `rfm1818.sales.rfm_totalscores`;