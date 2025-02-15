-- recursive themes
with CTEthemes AS (
    select id, name, cast(name as varchar) as cadena, 1 as level
    from rebrickable.themes where parent_id is null

    UNION ALL

    select t.id, t.name, cast(cadena+' -> '+t.name as varchar), level+1
    from rebrickable.themes t 
    inner join CTEthemes c 
    ON t.parent_id = c.id
)

create view v_themes as
    select id, name, cadena, level, num_parts
    from CTEthemes c 
    inner join rebrickable.sets s 
    on c.id = s.theme_id

select * from v_themes