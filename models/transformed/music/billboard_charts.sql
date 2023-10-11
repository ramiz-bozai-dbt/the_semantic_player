select
md5(appearance_date||song||artist) as id,
*

from {{ ref('stg_billboard__charts') }}
