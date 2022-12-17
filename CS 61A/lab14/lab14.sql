create table pizzas as
  select "Pizzahhh" as name, 12 as open, 15 as close union
  select "La Val's"        , 11        , 22          union
  select "Sliver"          , 11        , 20          union
  select "Cheeseboard"     , 16        , 23          union
  select "Emilia's"        , 13        , 18;

create table meals as
  select "breakfast" as meal, 11 as time union
  select "lunch"            , 13         union
  select "dinner"           , 19         union
  select "snack"            , 22;


-- Pizza places that open before 1pm in alphabetical order
create table opening as 
  select name from pizzas where  open < 13;
  


-- Two meals at the same place
create table double as
select a.meal, b.meal, name from meals as a, meals as b, 
  pizzas where open <= a.time and a.time <= close and 
  open <= b.time and b.time<= close and b.time> a.time+ 6;

