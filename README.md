Sql Query Optimization & Performance Engineering Project 

Project Overview 

This project demonstrates SQL performance tuning techniques on large-scale analytical datasets containing millions of records. 
The objective was to identify slow-performing SQL queries using EXPLAIN and EXPLAIN ANALYZE, optimize execution plans using indexing strategies, and measure performance improvements through benchmarking. 

Dataset Information 

Table               Records
Customers           100,000
Orders              500,000
Producs             20,000
Order Items         1,500,000
Web Sessions        958,000

Technology Stack 

  . MySQL  
  . SQL  
  . EXPLAIN / EXPLAIN ANALYZE  
  . Index Optimization  
  . Python (Pandas)  
  . Power BI
  . Github
  
Project Workflow 

Data Generation 
       ↓ 
Database Schema Design 
       ↓ 
Data Loading 
       ↓ 
Baseline Performance Testing 
       ↓ 
EXPLAIN Plan Analysis 
       ↓ 
Index Optimization 
       ↓ 
Benchmark Comparison 
       ↓ 
Power BI Performance Dashboard

Query Optimization Summary

Query                       Optimization                                          Result

Revenue by state            Tested index on state                                 No improvement due to low cardinality
Revenue by Category         Tested index on category                              Performance degraded due to low cardinality 
Top Customers               Added covering index (customer_id,order_amount)       79% faster 
Most Active Visitors        Existing index already optimal                        No additional improvement 
Average Order Value         Existing covering index used                          Aggregation remained bottleneck 
Product Profitability       Join optimized, aggregation heavy                     Summary table approach recommended 
Heavy Customer sales join   Added covering index(order_id,sales)                  97% faster 

Key Performance Improvements 

Top Customers Query 

Before Optimization:  
9.225 seconds 

After Optimization: 
1.903 seconds 

Improvement: 
79.37% faster 

Heavy Join Query 
Before Optimization: 
362.725 seconds 

After Optimization: 
10.086 seconds 

Improvement: 
97.22% faster 

Key Technical Learnings 

. Indexes do not always improve query performance.  
. Low-cardinality columns such as state and category are poor candidates for indexing.  
. Covering indexes significantly reduce table I/O.  
. EXPLAIN ANALYZE is essential for identifying real bottlenecks.  
. Large analytical queries may require summary tables and ETL pipelines instead of additional indexes.  
. Query optimization should be driven by execution plan analysis and benchmarking. 

Business Insights 

1. Data-driven optimization is essential 

Testing showed that adding indexes blindly can increase execution time. Performance tuning requires analyzing execution plans and understanding data distribution. 

2. Covering indexes provide significant gains 

Composite indexes reduced expensive table lookups and improved reporting query performance by up to 97%. 

3. Large analytical workloads need architectural solutions 

For queries scanning millions of records, summary tables and scheduled ETL processes may provide better scalability than adding more indexes. 

Business Recommendations 

Short-Term Recommendations 

. Use EXPLAIN ANALYZE before implementing any SQL optimization.  

. Apply covering indexes on frequently joined and aggregated columns.  

. Remove unnecessary indexes that increase maintenance overhead. 

Long-Term Recommendations 

. Build pre-aggregated summary tables for dashboard reporting.  

. Schedule ETL jobs to refresh summary data.  

. Continuously monitor slow queries using database performance monitoring tools.  

. Establish query benchmarking standards before deploying optimizations. 

Power BI Dashboard Features 

The dashboard includes: 

. Total Queries Tested  
. Successful Optimizations  
. Failed Optimization Attempts  
. Before vs After Execution Time  
. Query Improvement Percentage  
. Optimization Result Distribution 
 
Project Outcome 

Successfully analyzed and optimized multiple analytical SQL workloads on large-scale datasets. Achieved up to 97% reduction in query execution time using covering indexes while identifying scenarios where indexing was not beneficial. 
