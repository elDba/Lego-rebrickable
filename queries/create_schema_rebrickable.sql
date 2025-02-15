CREATE SCHEMA rebrickable
GO

CREATE TABLE rebrickable.inventories (
    id int primary key,
    [version] int,
    set_num varchar(20)
)
GO
CREATE TABLE rebrickable.inventory_parts (
    inventory_id int,
    part_num varchar(20),
    color_id int,
    quantity int,
    is_spare bit,
    img_url varchar(256) 
)
GO
CREATE TABLE rebrickable.inventory_minifigs (
    inventory_id int,
    fig_num varchar(20),
    quantity int
)
GO
CREATE TABLE rebrickable.inventory_sets (
    inventory_id int,
    set_num varchar(20),
    quantity int
)
GO
CREATE TABLE rebrickable.part_categories (
    id int PRIMARY KEY,
    [name] varchar(200)
)
GO
CREATE TABLE rebrickable.parts (
    part_num varchar(20),
    [name] varchar(250),
    part_cat_id int,
    part_material varchar(50)
)
GO
CREATE TABLE rebrickable.colors (
    id int primary key,
    [name] varchar(200),
    rgb varchar(6),
    is_trans bit,
    num_parts int,
    num_sets int,
    y1 int,
    y2 int
)
GO
CREATE TABLE rebrickable.minifigs (
    fig_num varchar(20),
    [name] varchar(256),
    num_parts int,
    img_url varchar(256)
)
CREATE TABLE rebrickable.sets (
    set_num varchar(20),
    [name] varchar(256),
    [year] int,
    theme_id int,
    num_parts int,
    img_url varchar(256)
)
GO
CREATE TABLE rebrickable.part_relationships (
    rel_type varchar(1),
    child_part_num varchar(20),
    parent_part_num varchar(20)
)
GO
CREATE TABLE rebrickable.elements (
    element_id varchar(10),
    part_num varchar(20),
    color_id int,
    design_id int
)
GO
CREATE TABLE rebrickable.themes (
    id int primary key,
    [name] varchar(50),
    parent_id int
)
GO

-- CREA TABLA CON NOMBRES DE TABLAS
CREATE TABLE dbo.rebrickable (
    [name] varchar(40)
)
GO
insert into dbo.rebrickable values ('inventories'),('colors'),('elements'),('inventory_parts'),('inventory_minifigs'),('inventory_sets'),('part_categories'),('parts'),('part_relationships'),('sets'),('themes'),('minifigs')
GO