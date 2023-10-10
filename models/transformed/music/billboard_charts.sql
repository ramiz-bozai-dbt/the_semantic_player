select
md5(appearance_date||song) as id,
*

from {{ ref('stg_billboard__charts') }}
