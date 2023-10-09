with 

source as (

    select * from {{ source('nfl', 'passing_stats') }}

),

renamed as (

    select
        to_timestamp(year, 'YYYY') as season_year,
        regexp_replace(player, '[^a-zA-Z0-9 ]', '') as player_name,
        tm as team,
        age,
        pos as position,
        cmp as completions,
        att as attempts,
        yds as yards,
        td

    from source

)

select * from renamed
