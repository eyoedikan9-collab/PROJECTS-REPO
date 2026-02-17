import psycopg2

conn = psycopg2.connect("dbname=school user=postgres password=justgetout")

cur = conn.cursor()
# cur.execute("DELETE FROM tasks;")

cur.execute("CREATE TABLE IF NOT EXISTS tasks (tasks_id serial PRIMARY KEY, task_name varchar,  description varchar, task_time datetime, duration_in_min integer, is_completed varchar not null default False);")
values = [("Team project", "Python in SQL", "02:00:00", 120)]
cur.executemany("INSERT INTO tasks (task_name, description, task_time, duration_in_min) VALUES (%s, %s, %s, %s)", values)
cur.execute("SELECT * FROM tasks;")
cur.execute("UPDATE tasks SET is_completed = True WHERE tasks_id = 10;")

out = cur.fetchall()
conn.commit()
print(out)

cur.close()
conn.close()