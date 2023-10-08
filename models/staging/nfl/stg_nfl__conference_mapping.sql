with 

source as (

    select * from {{ source('nfl', 'conference_mapping') }}

),

renamed as (

    select
        tm as team,
        conf as conference

    from source

)

select * from renamed
