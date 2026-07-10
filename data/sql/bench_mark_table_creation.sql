#create benchmark table
CREATE TABLE query_benchmark (

    benchmark_id INT AUTO_INCREMENT PRIMARY KEY,

    query_name VARCHAR(100),

    execution_time_seconds DECIMAL(10,4),

    optimization_stage VARCHAR(50),

    test_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);