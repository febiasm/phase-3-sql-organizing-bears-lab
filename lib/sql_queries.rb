def selects_all_female_bears_return_name_and_age
  "Write your SQL query here"
  <<-SQL
    SELECT
        bears.name,
        bears.age
        FROM
          beares
          WHERE
          bears.sex = 'F';
  SQL

def selects_all_bears_names_and_orders_in_alphabetical_order
  <<-SQL
    SELECT
    bears.name,
    FROM
    bears
    ORDER BY
      name ASC;

      SQL
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  "Write your SQL query here"
  <<-SQL
  SELECT
    bears.name,
    bears.age,
    FROM
    bears
    WHERE
    bears.alive = '1'
    ORDER BY
    age ASC;
    SQL

end

def selects_oldest_bear_and_returns_name_and_age
  "Write your SQL query here"
  <<-SQL
  SELECT
    bears.name,
    bears.age,
      FROM
      bears
      WHERE
      bears.name IS NOT NULL AND bears.age = (SELECT MAX(bears.age) FROM bears);
      SQL

end

def select_youngest_bear_and_returns_name_and_age
  "Write your SQL query here"
  <<-SQL
  SELECT bears.name,
     bears.age
      FROM bears
        WHERE bears.age = (SELECT MIN(bears.age) FROM bears);
  SQL
end
