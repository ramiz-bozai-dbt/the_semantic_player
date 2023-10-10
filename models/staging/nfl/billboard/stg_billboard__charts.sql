with source as (

    select * from {{ source('billboard', 'charts') }}

),

renamed as (

    select
        to_date(date) as appearance_date,
        rank,
        song,
        artist,
        last_week,
        peak_rank,
        weeks_on_board,
        loaded_at

    from source

)

select * from renamed