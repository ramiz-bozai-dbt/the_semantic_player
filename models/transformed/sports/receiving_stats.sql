select
md5(season_year||player_name) as id,
*

from {{ ref('stg_nfl__receiving_stats') }}
