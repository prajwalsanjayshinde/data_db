from dagster import job, op, execute_job
from dagster_dbt import dbt_cli_resource, load_assets_from_dbt_project
import os

# Path to your dbt project
dbt_project_path = os.path.join(os.path.dirname(__file__), "../../")

# Load dbt assets
dbt_assets = load_assets_from_dbt_project(
    dbt_project_dir=dbt_project_path,
)

@job(resource_defs={"dbt": dbt_cli_resource.configured({"project_dir": dbt_project_path})})
def my_dbt_job():
    """Run dbt"""
    pass
