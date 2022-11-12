# DBT docs

To generate a docs of dbt project execute:

    1. dbt docs generate
    2. dbt dosc serve

# Hooks

- https://github.com/dbt-labs/dbt-event-logging


# state method<br>
comprarar modelos modificados versus la ultima vez ejecutado o creado el archivo manifest.json

    1. mv target/manifest.json .
    2. dbt compile
    3. modificar algun modelo
    4. dbt ls --models state:modified --state .
    5. dbt run --models state:modified --state .  (ejecutar solo el modelo modificado)


- https://docs.getdbt.com/reference/node-selection/methods#the-state-method
- https://docs.getdbt.com/reference/node-selection/state-comparison-caveats
- https://docs.getdbt.com/guides/legacy/understanding-state
- https://docs.getdbt.com/guides/best-practices/how-we-structure/1-guide-overview


# Virtual Enviroment Windows

Para crear el ambiente virtual, ejecutar:
- python -m venv .dbt-env
Activarlo con :
- .dbt-env/scripts/activate

1. git clone http...
2. cd {name folder}
3. pip install -r requirements.txt
4. git init {name project} --> crear un projecto dbt

> si registra problema de ejecucion de scrips usar --> Set-ExecutionPolicy Unrestricted en powershell