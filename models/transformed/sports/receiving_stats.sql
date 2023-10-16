select
md5(season_year||team||player_name) as id,
*

from {{ ref('stg_nfl__receiving_stats') }}
