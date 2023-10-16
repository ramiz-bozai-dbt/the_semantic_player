select
md5(appearance_date||rank||song||artist) as id,
*

from {{ ref('stg_billboard__charts') }}
