import psycopg2

conn = psycopg2.connect(
    dbname="audiobooks",
    user="postgres",
    password="123",
    host="localhost",
    port="5432"
)

cursor = conn.cursor()

cursor.execute("SELECT * FROM Player")
result = cursor.fetchall()

# Imprimir os valores
for row in result:
    print(row)

# Fechar cursor e conexão
cursor.close()
conn.close()
