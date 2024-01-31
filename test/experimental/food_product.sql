drop table food_product cascade constraints;
drop table product cascade constraints;
drop table categories_properties cascade constraints;
drop table category_properties cascade constraints;
drop table ecoscore_data cascade constraints;
drop table origins_of_ingredients cascade constraints;
drop table aggregated_origins cascade constraints;
drop table transportation_scores cascade constraints;
drop table transportation_values cascade constraints;
drop table the_values cascade constraints;
drop table packaging cascade constraints;
drop table packagings1 cascade constraints;
drop table production_system cascade constraints;
drop table agribalyse1 cascade constraints;
drop table grades cascade constraints;
drop table missing cascade constraints;
drop table previous_data cascade constraints;
drop table agribalyse2 cascade constraints;
drop table scores cascade constraints;
drop table impact cascade constraints;
drop table likeliest_impacts cascade constraints;
drop table likeliest_recipe cascade constraints;
drop table uncharacterized_ingredients_mass_proportion cascade constraints;
drop table uncharacterized_ingredients_ratio cascade constraints;
drop table front cascade constraints;
drop table full cascade constraints;
drop table front_en cascade constraints;
drop table full cascade constraints;
drop table ingredients1 cascade constraints;
drop table full cascade constraints;
drop table ingredients_en cascade constraints;
drop table full cascade constraints;
drop table nutrition cascade constraints;
drop table full cascade constraints;
drop table nutrition_en cascade constraints;
drop table full cascade constraints;
drop table ingredients2 cascade constraints;
drop table languages cascade constraints;
drop table languages_codes cascade constraints;
drop table nutrient_levels cascade constraints;
drop table nutriments cascade constraints;
drop table nutriscore_data cascade constraints;
drop table packagings2 cascade constraints;
drop table display cascade constraints;
drop table small cascade constraints;
drop table thumb cascade constraints;
drop table display cascade constraints;
drop table small cascade constraints;
drop table thumb cascade constraints;
drop table display cascade constraints;
drop table small cascade constraints;
drop table thumb cascade constraints;
-- create tables

create table packagings2 (
    material    varchar2(4000 char),
    shape       varchar2(4000 char)
);


create table full (
    h     number,
    w     number
);


create table packagings1 (
    ecoscore_material_score                 number,
    ecoscore_shape_ratio                    number,
    material                                varchar2(4000 char),
    non_recyclable_and_non_biodegradable    varchar2(4000 char),
    shape                                   varchar2(4000 char)
);


create table food_product (
    code              varchar2(4000 char),
    status            number,
    status_verbose    varchar2(4000 char)
);


create table product (
    id                                                 varchar2(32 char) not null
                                                       constraint product_id_pk primary key,
    packagings2_id                                     number
                                                       constraint product_packagings2_id_fk
                                                       references packagings2,
    food_product_id                                    number
                                                       constraint product_food_product_id_fk
                                                       references food_product,
    "_id"                                              number,
    "_keywords"                                        varchar2(4000 char),
    additives_n                                        number,
    additives_old_n                                    number,
    additives_old_tags                                 varchar2(4000 char),
    additives_original_tags                            varchar2(4000 char),
    additives_prev_original_tags                       varchar2(4000 char),
    additives_tags                                     varchar2(4000 char),
    allergens                                          varchar2(4000 char),
    allergens_from_ingredients                         varchar2(4000 char),
    allergens_from_user                                varchar2(4000 char),
    allergens_hierarchy                                varchar2(4000 char),
    allergens_lc                                       varchar2(4000 char),
    allergens_tags                                     varchar2(4000 char),
    brands                                             varchar2(4000 char),
    brands_tags                                        varchar2(4000 char),
    carbon_footprint_from_known_ingredients_debug      varchar2(4000 char),
    carbon_footprint_percent_of_known_ingredients      number,
    categories                                         varchar2(4000 char),
    categories_hierarchy                               varchar2(4000 char),
    categories_lc                                      varchar2(4000 char),
    categories_old                                     varchar2(4000 char),
    categories_properties_tags                         varchar2(4000 char),
    categories_tags                                    varchar2(4000 char),
    ciqual_food_name_tags                              varchar2(4000 char),
    code                                               varchar2(4000 char),
    codes_tags                                         varchar2(4000 char),
    compared_to_category                               varchar2(4000 char),
    complete                                           number,
    completeness                                       number,
    correctors_tags                                    varchar2(4000 char),
    countries                                          varchar2(4000 char),
    countries_hierarchy                                varchar2(4000 char),
    countries_lc                                       varchar2(4000 char),
    countries_tags                                     varchar2(4000 char),
    created_t                                          date,
    creator                                            varchar2(4000 char),
    data_quality_info_tags                             varchar2(4000 char),
    data_quality_tags                                  varchar2(4000 char),
    data_quality_warnings_tags                         varchar2(4000 char),
    data_sources                                       varchar2(4000 char),
    data_sources_tags                                  varchar2(4000 char),
    debug_param_sorted_langs                           varchar2(4000 char),
    ecoscore_extended_data_version                     varchar2(4000 char),
    ecoscore_grade                                     varchar2(4000 char),
    ecoscore_score                                     number,
    ecoscore_tags                                      varchar2(4000 char),
    editors                                            varchar2(4000 char),
    editors_tags                                       varchar2(4000 char),
    emb_codes                                          varchar2(4000 char),
    emb_codes_20141016                                 varchar2(4000 char),
    emb_codes_orig                                     varchar2(4000 char),
    entry_dates_tags                                   varchar2(4000 char),
    expiration_date                                    date,
    food_groups                                        varchar2(4000 char),
    food_groups_tags                                   varchar2(4000 char),
    "fruits-vegetables-nuts_100g_estimate"             number,
    generic_name                                       varchar2(255 char),
    generic_name_en                                    varchar2(4000 char),
    generic_name_fr                                    varchar2(4000 char),
    image_front_small_url                              varchar2(4000 char),
    image_front_thumb_url                              varchar2(4000 char),
    image_front_url                                    varchar2(4000 char),
    image_ingredients_small_url                        varchar2(4000 char),
    image_ingredients_thumb_url                        varchar2(4000 char),
    image_ingredients_url                              varchar2(4000 char),
    image_nutrition_small_url                          varchar2(4000 char),
    image_nutrition_thumb_url                          varchar2(4000 char),
    image_nutrition_url                                varchar2(4000 char),
    image_small_url                                    varchar2(4000 char),
    image_thumb_url                                    varchar2(4000 char),
    image_url                                          varchar2(4000 char),
    informers_tags                                     varchar2(4000 char),
    "en:non-vegan"                                     varchar2(4000 char),
    "en:palm-oil-content-unknown"                      varchar2(4000 char),
    "en:vegan-status-unknown"                          varchar2(4000 char),
    "en:vegetarian-status-unknown"                     varchar2(4000 char),
    ingredients_analysis_tags                          varchar2(4000 char),
    ingredients_debug                                  varchar2(4000 char),
    ingredients_from_or_that_may_be_from_palm_oil_n    number,
    ingredients_from_palm_oil_n                        number,
    ingredients_hierarchy                              varchar2(4000 char),
    ingredients_ids_debug                              varchar2(4000 char),
    ingredients_n                                      number,
    ingredients_n_tags                                 varchar2(4000 char),
    ingredients_original_tags                          varchar2(4000 char),
    ingredients_percent_analysis                       number,
    ingredients_tags                                   varchar2(4000 char),
    ingredients_text                                   varchar2(4000 char),
    ingredients_text_debug                             varchar2(4000 char),
    ingredients_text_en                                varchar2(4000 char),
    ingredients_text_fr                                varchar2(4000 char),
    ingredients_text_with_allergens                    varchar2(4000 char),
    ingredients_text_with_allergens_en                 varchar2(4000 char),
    ingredients_that_may_be_from_palm_oil_n            number,
    ingredients_with_specified_percent_n               number,
    ingredients_with_specified_percent_sum             number,
    ingredients_with_unspecified_percent_n             number,
    ingredients_with_unspecified_percent_sum           number,
    ingredients_without_ciqual_codes                   varchar2(4000 char),
    ingredients_without_ciqual_codes_n                 number,
    interface_version_created                          varchar2(4000 char),
    interface_version_modified                         varchar2(4000 char),
    known_ingredients_n                                number,
    labels                                             varchar2(4000 char),
    labels_hierarchy                                   varchar2(4000 char),
    labels_lc                                          varchar2(4000 char),
    labels_old                                         varchar2(4000 char),
    labels_tags                                        varchar2(4000 char),
    lang                                               varchar2(4000 char),
    languages_hierarchy                                varchar2(4000 char),
    languages_tags                                     varchar2(4000 char),
    last_edit_dates_tags                               varchar2(4000 char),
    last_editor                                        varchar2(4000 char),
    last_image_dates_tags                              varchar2(4000 char),
    last_image_t                                       number,
    last_modified_by                                   varchar2(4000 char),
    last_modified_t                                    number,
    lc                                                 varchar2(4000 char),
    link                                               varchar2(4000 char),
    manufacturing_places                               varchar2(4000 char),
    manufacturing_places_tags                          varchar2(4000 char),
    max_imgid                                          varchar2(4000 char),
    misc_tags                                          varchar2(4000 char),
    no_nutrition_data                                  varchar2(4000 char),
    nova_group                                         number,
    nova_group_debug                                   varchar2(4000 char),
    nova_groups                                        varchar2(4000 char),
    nova_groups_tags                                   varchar2(4000 char),
    nutrient_levels_tags                               varchar2(4000 char),
    nutriscore_2021_tags                               varchar2(4000 char),
    nutriscore_2023_tags                               varchar2(4000 char),
    nutriscore_grade                                   varchar2(4000 char),
    nutriscore_score                                   number,
    nutriscore_score_opposite                          number,
    nutriscore_tags                                    varchar2(4000 char),
    nutriscore_version                                 varchar2(4000 char),
    nutrition_data                                     varchar2(4000 char),
    nutrition_data_per                                 varchar2(4000 char),
    nutrition_data_prepared                            varchar2(4000 char),
    nutrition_data_prepared_per                        varchar2(4000 char),
    nutrition_grade_fr                                 varchar2(4000 char),
    nutrition_grades                                   varchar2(4000 char),
    nutrition_grades_tags                              varchar2(4000 char),
    nutrition_score_beverage                           number,
    nutrition_score_debug                              varchar2(4000 char),
    obsolete                                           varchar2(4000 char),
    obsolete_since_date                                date,
    origin                                             varchar2(4000 char),
    origin_en                                          varchar2(4000 char),
    origins                                            varchar2(4000 char),
    origins_lc                                         varchar2(4000 char),
    origins_old                                        varchar2(4000 char),
    packaging                                          varchar2(4000 char),
    packaging_hierarchy                                varchar2(4000 char),
    packaging_lc                                       varchar2(4000 char),
    packaging_materials_tags                           varchar2(4000 char),
    packaging_old                                      varchar2(4000 char),
    packaging_old_before_taxonomization                varchar2(4000 char),
    packaging_shapes_tags                              varchar2(4000 char),
    packaging_tags                                     varchar2(4000 char),
    packaging_text                                     varchar2(4000 char),
    packaging_text_en                                  varchar2(4000 char),
    packagings_complete                                number,
    packagings_n                                       number,
    photographers_tags                                 varchar2(4000 char),
    pnns_groups_1                                      varchar2(4000 char),
    pnns_groups_1_tags                                 varchar2(4000 char),
    pnns_groups_2                                      varchar2(4000 char),
    pnns_groups_2_tags                                 varchar2(4000 char),
    popularity_key                                     number,
    popularity_tags                                    varchar2(4000 char),
    product_name                                       varchar2(255 char),
    product_name_en                                    varchar2(4000 char),
    product_name_fr                                    varchar2(4000 char),
    product_quantity                                   varchar2(4000 char),
    purchase_places                                    varchar2(4000 char),
    quantity                                           number,
    rev                                                number,
    scans_n                                            number,
    serving_quantity                                   varchar2(4000 char),
    serving_size                                       varchar2(4000 char),
    sortkey                                            number,
    states                                             varchar2(4000 char),
    states_hierarchy                                   varchar2(4000 char),
    states_tags                                        varchar2(4000 char),
    stores                                             varchar2(4000 char),
    teams                                              varchar2(4000 char),
    teams_tags                                         varchar2(4000 char),
    traces                                             varchar2(4000 char),
    traces_from_ingredients                            varchar2(4000 char),
    traces_from_user                                   varchar2(4000 char),
    traces_lc                                          varchar2(4000 char),
    unique_scans_n                                     number,
    unknown_ingredients_n                              number,
    update_key                                         varchar2(4000 char)
);

-- table index
create index product_i1 on product (packagings2_id);

create index product_i2 on product (food_product_id);


create table categories_properties (
    product_id                   varchar2(32 char)
                                 constraint categories_properties_product_id_fk
                                 references product,
    "agribalyse_food_code:en"    varchar2(4000 char),
    "ciqual_food_code:en"        varchar2(4000 char)
);

-- table index
create index categories_properties_i1 on categories_properties (product_id);


create table category_properties (
    product_id               varchar2(32 char)
                             constraint category_properties_product_id_fk
                             references product,
    "ciqual_food_name:en"    varchar2(255 char),
    "ciqual_food_name:fr"    varchar2(255 char)
);

-- table index
create index category_properties_i1 on category_properties (product_id);


create table ecoscore_data (
    product_id              varchar2(32 char)
                            constraint ecoscore_data_product_id_fk
                            references product,
    grade                   varchar2(4000 char),
    missing_data_warning    number,
    score                   number,
    status                  varchar2(4000 char)
);

-- table index
create index ecoscore_data_i1 on ecoscore_data (product_id);


create table origins_of_ingredients (
    ecoscore_data_id              number
                                  constraint origins_of_ingredients_ecoscore_data_id_fk
                                  references ecoscore_data,
    epi_score                     number,
    epi_value                     number,
    origins_from_categories       varchar2(4000 char),
    origins_from_origins_field    varchar2(4000 char),
    transportation_score          number,
    transportation_value          number,
    value                         number,
    warning                       varchar2(4000 char)
);

-- table index
create index origins_of_ingredients_i1 on origins_of_ingredients (ecoscore_data_id);


create table aggregated_origins (
    origins_of_ingredient_id    number
                                constraint aggregated_origins_origins_of_ingredient_id_fk
                                references origins_of_ingredients,
    epi_score                   varchar2(4000 char),
    origin                      varchar2(4000 char),
    percent                     number,
    transportation_score        varchar2(4000 char)
);

-- table index
create index aggregated_origins_i1 on aggregated_origins (origins_of_ingredient_id);


create table transportation_scores (
    origins_of_ingredient_id    number
                                constraint transportation_scores_origins_of_ingredient_id_fk
                                references origins_of_ingredients,
    ad                          number,
    al                          number,
    va                          number,
    world                       number,
    xk                          number
);

-- table index
create index transportation_scores_i1 on transportation_scores (origins_of_ingredient_id);


create table transportation_values (
    origins_of_ingredient_id    number
                                constraint transportation_values_origins_of_ingredient_id_fk
                                references origins_of_ingredients,
    ad                          number,
    ua                          number,
    uk                          number,
    us                          number,
    va                          number,
    world                       number,
    xk                          number
);

-- table index
create index transportation_values_i1 on transportation_values (origins_of_ingredient_id);


create table the_values (
    origins_of_ingredient_id    number
                                constraint the_values_origins_of_ingredient_id_fk
                                references origins_of_ingredients,
    ad                          number,
    al                          number,
    at                          number,
    uk                          number,
    us                          number,
    va                          number,
    world                       number,
    xk                          number
);

-- table index
create index the_values_i1 on the_values (origins_of_ingredient_id);


create table packaging (
    packagings1_id                                    number
                                                      constraint packaging_packagings1_id_fk
                                                      references packagings1,
    ecoscore_data_id                                  number
                                                      constraint packaging_ecoscore_data_id_fk
                                                      references ecoscore_data,
    non_recyclable_and_non_biodegradable_materials    number,
    score                                             number,
    value                                             number
);

-- table index
create index packaging_i1 on packaging (packagings1_id);

create index packaging_i2 on packaging (ecoscore_data_id);


create table production_system (
    ecoscore_data_id    number
                        constraint production_system_ecoscore_data_id_fk
                        references ecoscore_data,
    value               number,
    warning             varchar2(4000 char)
);

-- table index
create index production_system_i1 on production_system (ecoscore_data_id);


create table agribalyse1 (
    ecoscore_data_id        number
                            constraint agribalyse1_ecoscore_data_id_fk
                            references ecoscore_data,
    agribalyse_food_code    varchar2(4000 char),
    co2_agriculture         number,
    co2_consumption         number,
    co2_distribution        number,
    co2_packaging           number,
    co2_processing          number,
    co2_total               number,
    co2_transportation      number,
    code                    varchar2(4000 char),
    dqr                     varchar2(4000 char),
    ef_agriculture          number,
    ef_consumption          number,
    ef_distribution         number,
    ef_packaging            number,
    ef_processing           number,
    ef_total                number,
    ef_transportation       number,
    is_beverage             number,
    name_en                 varchar2(255 char),
    name_fr                 varchar2(255 char),
    score                   number,
    version                 varchar2(4000 char)
);

-- table index
create index agribalyse1_i1 on agribalyse1 (ecoscore_data_id);


create table grades (
    ecoscore_data_id    number
                        constraint grades_ecoscore_data_id_fk
                        references ecoscore_data,
    ad                  varchar2(4000 char),
    al                  varchar2(4000 char),
    tr                  varchar2(4000 char),
    ua                  varchar2(4000 char),
    uk                  varchar2(4000 char),
    us                  varchar2(4000 char),
    va                  varchar2(4000 char),
    world               varchar2(4000 char),
    xk                  varchar2(4000 char)
);

-- table index
create index grades_i1 on grades (ecoscore_data_id);


create table missing (
    ecoscore_data_id    number
                        constraint missing_ecoscore_data_id_fk
                        references ecoscore_data,
    labels              number,
    origins             number
);

-- table index
create index missing_i1 on missing (ecoscore_data_id);


create table previous_data (
    ecoscore_data_id    number
                        constraint previous_data_ecoscore_data_id_fk
                        references ecoscore_data,
    grade               varchar2(4000 char),
    score               number
);

-- table index
create index previous_data_i1 on previous_data (ecoscore_data_id);


create table agribalyse2 (
    previous_data_id        number
                            constraint agribalyse2_previous_data_id_fk
                            references previous_data,
    agribalyse_food_code    varchar2(4000 char),
    co2_agriculture         number,
    co2_consumption         number,
    co2_distribution        number,
    co2_packaging           number,
    co2_processing          number,
    co2_total               number,
    co2_transportation      number,
    code                    varchar2(4000 char),
    dqr                     varchar2(4000 char),
    ef_agriculture          number,
    ef_consumption          number,
    ef_distribution         number,
    ef_packaging            number,
    ef_processing           number,
    ef_total                number,
    ef_transportation       number,
    is_beverage             number,
    name_en                 varchar2(255 char),
    name_fr                 varchar2(255 char),
    score                   number
);

-- table index
create index agribalyse2_i1 on agribalyse2 (previous_data_id);


create table scores (
    ecoscore_data_id    number
                        constraint scores_ecoscore_data_id_fk
                        references ecoscore_data,
    ad                  number,
    al                  number,
    at                  number,
    va                  number,
    world               number,
    xk                  number
);

-- table index
create index scores_i1 on scores (ecoscore_data_id);


create table impact (
    product_id                    varchar2(32 char)
                                  constraint impact_product_id_fk
                                  references product,
    ef_single_score_log_stddev    number,
    mass_ratio_uncharacterized    number,
    impact                        varchar2(4000 char),
    nutrition                     varchar2(4000 char),
    warnings                      varchar2(4000 char)
);

-- table index
create index impact_i1 on impact (product_id);


create table likeliest_impacts (
    impact_id          number
                       constraint likeliest_impacts_impact_id_fk
                       references impact,
    Climate_change     number,
    EF_single_score    number
);

-- table index
create index likeliest_impacts_i1 on likeliest_impacts (impact_id);


create table likeliest_recipe (
    impact_id                                  number
                                               constraint likeliest_recipe_impact_id_fk
                                               references impact,
    "en:Oak_smoked_sea_salti_yeast_extract"    number,
    "en:e160c"                                 number,
    "en:e330"                                  number,
    "en:flavouring"                            number,
    "en:garlic_powder"                         number,
    "en:milk"                                  number,
    "en:onion"                                 number,
    "en:potato"                                number,
    "en:potato_starch"                         number,
    "en:rice_flour"                            number,
    "en:salt"                                  number,
    "en:spice"                                 number,
    "en:sugar"                                 number,
    "en:sunflower_oil"                         number,
    "en:tomato_powder"                         number,
    "en:water"                                 number,
    "en:yeast_powder"                          number
);

-- table index
create index likeliest_recipe_i1 on likeliest_recipe (impact_id);


create table uncharacterized_ingredients_mass_proportion (
    impact_id    number
                 constraint uncharacterized_ingredients_mass_proportion_impact_id_fk
                 references impact,
    impact       number,
    nutrition    number
);

-- table index
create index uncharacterized_ingredients_mass_proportion_i1 on uncharacterized_ingredients_mass_proportion (impact_id);


create table uncharacterized_ingredients_ratio (
    impact_id    number
                 constraint uncharacterized_ingredients_ratio_impact_id_fk
                 references impact,
    impact       number,
    nutrition    number
);

-- table index
create index uncharacterized_ingredients_ratio_i1 on uncharacterized_ingredients_ratio (impact_id);


create table front (
    full_id        number
                   constraint front_full_id_fk
                   references full,
    product_id     varchar2(32 char)
                   constraint front_product_id_fk
                   references product,
    geometry       varchar2(4000 char),
    imgid          varchar2(4000 char),
    normalize      varchar2(4000 char),
    rev            varchar2(4000 char),
    white_magic    varchar2(4000 char)
);

-- table index
create index front_i1 on front (full_id);

create index front_i2 on front (product_id);


create table front_en (
    full_id                   number
                              constraint front_en_full_id_fk
                              references full,
    product_id                varchar2(32 char)
                              constraint front_en_product_id_fk
                              references product,
    angle                     number,
    coordinates_image_size    varchar2(4000 char),
    geometry                  varchar2(4000 char),
    imgid                     varchar2(4000 char),
    normalize                 varchar2(4000 char),
    rev                       varchar2(4000 char),
    white_magic               varchar2(4000 char),
    x1                        varchar2(4000 char),
    x2                        varchar2(4000 char),
    y1                        varchar2(4000 char),
    y2                        varchar2(4000 char)
);

-- table index
create index front_en_i1 on front_en (full_id);

create index front_en_i2 on front_en (product_id);


create table ingredients1 (
    full_id        number
                   constraint ingredients1_full_id_fk
                   references full,
    product_id     varchar2(32 char)
                   constraint ingredients1_product_id_fk
                   references product,
    geometry       varchar2(4000 char),
    imgid          varchar2(4000 char),
    normalize      varchar2(4000 char),
    ocr            number,
    orientation    varchar2(4000 char),
    rev            varchar2(4000 char),
    white_magic    varchar2(4000 char)
);

-- table index
create index ingredients1_i1 on ingredients1 (full_id);

create index ingredients1_i2 on ingredients1 (product_id);


create table ingredients_en (
    full_id        number
                   constraint ingredients_en_full_id_fk
                   references full,
    product_id     varchar2(32 char)
                   constraint ingredients_en_product_id_fk
                   references product,
    geometry       varchar2(4000 char),
    imgid          varchar2(4000 char),
    normalize      varchar2(4000 char),
    ocr            number,
    orientation    varchar2(4000 char),
    rev            varchar2(4000 char),
    white_magic    varchar2(4000 char)
);

-- table index
create index ingredients_en_i1 on ingredients_en (full_id);

create index ingredients_en_i2 on ingredients_en (product_id);


create table nutrition (
    full_id        number
                   constraint nutrition_full_id_fk
                   references full,
    product_id     varchar2(32 char)
                   constraint nutrition_product_id_fk
                   references product,
    geometry       varchar2(4000 char),
    imgid          varchar2(4000 char),
    normalize      varchar2(4000 char),
    ocr            number,
    orientation    varchar2(4000 char),
    rev            varchar2(4000 char),
    white_magic    varchar2(4000 char)
);

-- table index
create index nutrition_i1 on nutrition (full_id);

create index nutrition_i2 on nutrition (product_id);


create table nutrition_en (
    full_id                   number
                              constraint nutrition_en_full_id_fk
                              references full,
    product_id                varchar2(32 char)
                              constraint nutrition_en_product_id_fk
                              references product,
    angle                     number,
    coordinates_image_size    varchar2(4000 char),
    geometry                  varchar2(4000 char),
    imgid                     varchar2(4000 char),
    normalize                 varchar2(4000 char),
    rev                       varchar2(4000 char),
    white_magic               varchar2(4000 char),
    x1                        varchar2(4000 char),
    x2                        varchar2(4000 char),
    y1                        varchar2(4000 char),
    y2                        varchar2(4000 char)
);

-- table index
create index nutrition_en_i1 on nutrition_en (full_id);

create index nutrition_en_i2 on nutrition_en (product_id);


create table ingredients2 (
    id                  varchar2(32 char) not null
                        constraint ingredients2_id_pk primary key,
    product_id          varchar2(32 char)
                        constraint ingredients2_product_id_fk
                        references product,
    ciqual_food_code    varchar2(4000 char),
    percent             number,
    percent_estimate    number,
    percent_max         number,
    percent_min         number,
    processing          varchar2(4000 char),
    rank                number,
    text                varchar2(4000 char),
    vegan               varchar2(4000 char),
    vegetarian          varchar2(4000 char)
);

-- table index
create index ingredients2_i1 on ingredients2 (product_id);


create table languages (
    product_id      varchar2(32 char)
                    constraint languages_product_id_fk
                    references product,
    "en:english"    number
);

-- table index
create index languages_i1 on languages (product_id);


create table languages_codes (
    product_id    varchar2(32 char)
                  constraint languages_codes_product_id_fk
                  references product,
    en            number
);

-- table index
create index languages_codes_i1 on languages_codes (product_id);


create table nutrient_levels (
    product_id         varchar2(32 char)
                       constraint nutrient_levels_product_id_fk
                       references product,
    fat                varchar2(4000 char),
    salt               varchar2(4000 char),
    "saturated-fat"    varchar2(4000 char),
    sugars             varchar2(4000 char)
);

-- table index
create index nutrient_levels_i1 on nutrient_levels (product_id);


create table nutriments (
    product_id                                           varchar2(32 char)
                                                         constraint nutriments_product_id_fk
                                                         references product,
    carbohydrates                                        number,
    carbohydrates_100g                                   number,
    carbohydrates_serving                                number,
    carbohydrates_unit                                   varchar2(4000 char),
    carbohydrates_value                                  number,
    "carbon-footprint-from-known-ingredients_100g"       number,
    "carbon-footprint-from-known-ingredients_product"    number,
    salt                                                 number,
    salt_100g                                            number,
    salt_serving                                         number,
    salt_unit                                            varchar2(4000 char),
    salt_value                                           number,
    "saturated-fat"                                      number,
    "saturated-fat_100g"                                 number,
    "saturated-fat_serving"                              number,
    "saturated-fat_unit"                                 varchar2(4000 char),
    "saturated-fat_value"                                number,
    sodium                                               number,
    sodium_100g                                          number,
    sodium_serving                                       number,
    sodium_unit                                          varchar2(4000 char),
    sodium_value                                         number,
    sugars                                               number,
    sugars_100g                                          number,
    sugars_serving                                       number,
    sugars_unit                                          varchar2(4000 char),
    sugars_value                                         number
);

-- table index
create index nutriments_i1 on nutriments (product_id);


create table nutriscore_data (
    product_id                                               varchar2(32 char)
                                                             constraint nutriscore_data_product_id_fk
                                                             references product,
    energy                                                   number,
    energy_points                                            number,
    energy_value                                             number,
    fiber                                                    number,
    fiber_points                                             number,
    fiber_value                                              number,
    fruits_vegetables_nuts_colza_walnut_olive_oils           varchar2(4000 char),
    fruits_vegetables_nuts_colza_walnut_olive_oils_points    number,
    fruits_vegetables_nuts_colza_walnut_olive_oils_value     number,
    grade                                                    varchar2(4000 char),
    is_beverage                                              number,
    is_cheese                                                number,
    is_fat                                                   number,
    is_water                                                 number,
    negative_points                                          number,
    positive_points                                          number,
    proteins                                                 number,
    proteins_points                                          number,
    proteins_value                                           number,
    saturated_fat                                            number,
    saturated_fat_points                                     number,
    saturated_fat_value                                      number,
    score                                                    number,
    sodium                                                   number,
    sodium_points                                            number,
    sodium_value                                             number,
    sugars                                                   number,
    sugars_points                                            number,
    sugars_value                                             number
);

-- table index
create index nutriscore_data_i1 on nutriscore_data (product_id);


create table display (
    product_id    varchar2(32 char)
                  constraint display_product_id_fk
                  references product,
    en            varchar2(4000 char)
);

-- table index
create index display_i1 on display (product_id);


create table small (
    product_id    varchar2(32 char)
                  constraint small_product_id_fk
                  references product,
    en            varchar2(4000 char)
);

-- table index
create index small_i1 on small (product_id);


create table thumb (
    product_id    varchar2(32 char)
                  constraint thumb_product_id_fk
                  references product,
    en            varchar2(4000 char)
);

-- table index
create index thumb_i1 on thumb (product_id);



-- load data

insert into packagings2 (
    material,
    shape
) values (
    'en:plastic',
    'en:packet'
);
insert into packagings2 (
    material,
    shape
) values (
    'en:plastic',
    'en:packet'
);

commit;

insert into full (
    h,
    w
) values (
    1482,
    2000
);
insert into full (
    h,
    w
) values (
    1482,
    2000
);
insert into full (
    h,
    w
) values (
    1482,
    2000
);
insert into full (
    h,
    w
) values (
    1482,
    2000
);
insert into full (
    h,
    w
) values (
    1482,
    2000
);
insert into full (
    h,
    w
) values (
    1482,
    2000
);
insert into full (
    h,
    w
) values (
    846,
    1974
);
insert into full (
    h,
    w
) values (
    1140,
    930
);
insert into full (
    h,
    w
) values (
    569,
    1011
);
insert into full (
    h,
    w
) values (
    1825,
    1421
);
insert into full (
    h,
    w
) values (
    1140,
    930
);
insert into full (
    h,
    w
) values (
    526,
    1730
);
insert into full (
    h,
    w
) values (
    526,
    1730
);
insert into full (
    h,
    w
) values (
    920,
    1131
);
insert into full (
    h,
    w
) values (
    569,
    1011
);

commit;

insert into packagings1 (
    ecoscore_material_score,
    ecoscore_shape_ratio,
    material,
    non_recyclable_and_non_biodegradable,
    shape
) values (
    0,
    1,
    'en:plastic',
    'maybe',
    'en:packet'
);
insert into packagings1 (
    ecoscore_material_score,
    ecoscore_shape_ratio,
    material,
    non_recyclable_and_non_biodegradable,
    shape
) values (
    0,
    1,
    'en:plastic',
    'maybe',
    'en:packet'
);

commit;

insert into food_product (
    code,
    status,
    status_verbose
) values (
    '5060292302201',
    1,
    'product found'
);

commit;

insert into product (
    id,
    packagings2_id,
    food_product_id,
    "_id",
    "_keywords",
    additives_n,
    additives_old_n,
    additives_old_tags,
    additives_original_tags,
    additives_prev_original_tags,
    additives_tags,
    allergens,
    allergens_from_ingredients,
    allergens_from_user,
    allergens_hierarchy,
    allergens_lc,
    allergens_tags,
    brands,
    brands_tags,
    carbon_footprint_from_known_ingredients_debug,
    carbon_footprint_percent_of_known_ingredients,
    categories,
    categories_hierarchy,
    categories_lc,
    categories_old,
    categories_properties_tags,
    categories_tags,
    ciqual_food_name_tags,
    code,
    codes_tags,
    compared_to_category,
    complete,
    completeness,
    correctors_tags,
    countries,
    countries_hierarchy,
    countries_lc,
    countries_tags,
    created_t,
    creator,
    data_quality_info_tags,
    data_quality_tags,
    data_quality_warnings_tags,
    data_sources,
    data_sources_tags,
    debug_param_sorted_langs,
    ecoscore_extended_data_version,
    ecoscore_grade,
    ecoscore_score,
    ecoscore_tags,
    editors,
    editors_tags,
    emb_codes,
    emb_codes_20141016,
    emb_codes_orig,
    entry_dates_tags,
    expiration_date,
    food_groups,
    food_groups_tags,
    "fruits-vegetables-nuts_100g_estimate",
    generic_name,
    generic_name_en,
    generic_name_fr,
    image_front_small_url,
    image_front_thumb_url,
    image_front_url,
    image_ingredients_small_url,
    image_ingredients_thumb_url,
    image_ingredients_url,
    image_nutrition_small_url,
    image_nutrition_thumb_url,
    image_nutrition_url,
    image_small_url,
    image_thumb_url,
    image_url,
    informers_tags,
    "en:non-vegan",
    "en:palm-oil-content-unknown",
    "en:vegan-status-unknown",
    "en:vegetarian-status-unknown",
    ingredients_analysis_tags,
    ingredients_debug,
    ingredients_from_or_that_may_be_from_palm_oil_n,
    ingredients_from_palm_oil_n,
    ingredients_hierarchy,
    ingredients_ids_debug,
    ingredients_n,
    ingredients_n_tags,
    ingredients_original_tags,
    ingredients_percent_analysis,
    ingredients_tags,
    ingredients_text,
    ingredients_text_debug,
    ingredients_text_en,
    ingredients_text_fr,
    ingredients_text_with_allergens,
    ingredients_text_with_allergens_en,
    ingredients_that_may_be_from_palm_oil_n,
    ingredients_with_specified_percent_n,
    ingredients_with_specified_percent_sum,
    ingredients_with_unspecified_percent_n,
    ingredients_with_unspecified_percent_sum,
    ingredients_without_ciqual_codes,
    ingredients_without_ciqual_codes_n,
    interface_version_created,
    interface_version_modified,
    known_ingredients_n,
    labels,
    labels_hierarchy,
    labels_lc,
    labels_old,
    labels_tags,
    lang,
    languages_hierarchy,
    languages_tags,
    last_edit_dates_tags,
    last_editor,
    last_image_dates_tags,
    last_image_t,
    last_modified_by,
    last_modified_t,
    lc,
    link,
    manufacturing_places,
    manufacturing_places_tags,
    max_imgid,
    misc_tags,
    no_nutrition_data,
    nova_group,
    nova_group_debug,
    nova_groups,
    nova_groups_tags,
    nutrient_levels_tags,
    nutriscore_2021_tags,
    nutriscore_2023_tags,
    nutriscore_grade,
    nutriscore_score,
    nutriscore_score_opposite,
    nutriscore_tags,
    nutriscore_version,
    nutrition_data,
    nutrition_data_per,
    nutrition_data_prepared,
    nutrition_data_prepared_per,
    nutrition_grade_fr,
    nutrition_grades,
    nutrition_grades_tags,
    nutrition_score_beverage,
    nutrition_score_debug,
    obsolete,
    obsolete_since_date,
    origin,
    origin_en,
    origins,
    origins_lc,
    origins_old,
    packaging,
    packaging_hierarchy,
    packaging_lc,
    packaging_materials_tags,
    packaging_old,
    packaging_old_before_taxonomization,
    packaging_shapes_tags,
    packaging_tags,
    packaging_text,
    packaging_text_en,
    packagings_complete,
    packagings_n,
    photographers_tags,
    pnns_groups_1,
    pnns_groups_1_tags,
    pnns_groups_2,
    pnns_groups_2_tags,
    popularity_key,
    popularity_tags,
    product_name,
    product_name_en,
    product_name_fr,
    product_quantity,
    purchase_places,
    quantity,
    rev,
    scans_n,
    serving_quantity,
    serving_size,
    sortkey,
    states,
    states_hierarchy,
    states_tags,
    stores,
    teams,
    teams_tags,
    traces,
    traces_from_ingredients,
    traces_from_user,
    traces_lc,
    unique_scans_n,
    unknown_ingredients_n,
    update_key
) values (
    '5060292302201',
    2,
    1,
    84,
    'N/A',
    2,
    2,
    'N/A',
    'N/A',
    'N/A',
    'N/A',
    'en:milk',
    'en:milk, milk',
    '(en) en:milk',
    'N/A',
    'en',
    'N/A',
    'Popchips',
    'N/A',
    'en:potato 54% x 0.6 = 32.4 g - ',
    54,
    'Plant-based foods and beverages, Plant-based foods, Snacks, Cereals and potatoes, Salty snacks, Appetizers, Chips and fries, Crisps, Potato crisps, Potato crisps in sunflower oil',
    'N/A',
    'en',
    'Plant-based foods and beverages, Plant-based foods, Snacks, Cereals and potatoes, Salty snacks, Appetizers, Chips and fries, Crisps, Potato crisps, Potato crisps in sunflower oil',
    'N/A',
    'N/A',
    'Travis Ortega',
    '5060292302201',
    'N/A',
    'en:potato-crisps-in-sunflower-oil',
    0,
    0.8875,
    'N/A',
    'France,United Kingdom',
    'N/A',
    'en',
    'N/A',
    1433338177,
    'kyzh',
    'N/A',
    'N/A',
    'N/A',
    'App - yuka, Apps, App - Horizon',
    'N/A',
    'N/A',
    '4',
    'b',
    67,
    'N/A',
    'N/A',
    'N/A',
    '',
    '',
    '',
    'N/A',
    11/05/2016,
    'en:appetizers',
    'N/A',
    21,
    '',
    '',
    '',
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.200.jpg',
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.100.jpg',
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.400.jpg',
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.200.jpg',
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.100.jpg',
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.400.jpg',
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.200.jpg',
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.100.jpg',
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.400.jpg',
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.200.jpg',
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.100.jpg',
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.400.jpg',
    'N/A',
    'N/A',
    'N/A',
    'N/A',
    'N/A',
    'N/A',
    'N/A',
    0,
    0,
    'N/A',
    'N/A',
    20,
    'N/A',
    'N/A',
    1,
    'N/A',
    '54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [milk], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.',
    '54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [milk], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.',
    '54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [milk], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.',
    '',
    '54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [<span class="allergen">milk</span>], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.',
    '54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [<span class="allergen">milk</span>], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.',
    0,
    1,
    54,
    15,
    46,
    'N/A',
    9,
    '20120622',
    '20190830',
    36,
    'Vegetarian, No preservatives, No artificial anything',
    'N/A',
    'en',
    'Vegetarian,No preservatives,No artificial anything',
    'N/A',
    'en',
    'N/A',
    'N/A',
    'N/A',
    'aleene',
    'N/A',
    1656075071,
    'aleene',
    1679645675,
    'en',
    '',
    'European Union',
    'N/A',
    '9',
    'N/A',
    '',
    4,
    '',
    '4',
    'N/A',
    'N/A',
    'N/A',
    'N/A',
    'd',
    12,
    -12,
    'N/A',
    '2021',
    'on',
    '100g',
    '',
    '100g',
    'd',
    'd',
    'N/A',
    0,
    '',
    '',
    ,
    '',
    '',
    '',
    'en',
    '',
    'Plastic,Mixed plastic film-packet',
    'N/A',
    'en',
    'N/A',
    'Plastic, Mixed plastic-packet',
    'Plastic, en:mixed plastic-packet',
    'N/A',
    'N/A',
    '',
    '',
    0,
    2,
    'N/A',
    'Salty snacks',
    'N/A',
    'Appetizers',
    'N/A',
    21900000007,
    'N/A',
    'Barbeque Potato Chips',
    'Barbeque Potato Chips',
    '',
    '23',
    '',
    23 g,
    33,
    6,
    '23',
    '23 g',
    1535456524,
    'en:to-be-completed, en:nutrition-facts-completed, en:ingredients-completed, en:expiration-date-completed, en:packaging-code-to-be-completed, en:characteristics-to-be-completed, en:origins-to-be-completed, en:categories-completed, en:brands-completed, en:packaging-completed, en:quantity-completed, en:product-name-completed, en:photos-to-be-validated, en:packaging-photo-to-be-selected, en:nutrition-photo-selected, en:ingredients-photo-selected, en:front-photo-selected, en:photos-uploaded',
    'N/A',
    'N/A',
    '',
    'swipe-studio',
    'N/A',
    '',
    '',
    '(en) ',
    'en',
    4,
    1,
    'eco20231129'
);

commit;

insert into categories_properties (
    product_id,
    "agribalyse_food_code:en",
    "ciqual_food_code:en"
) values (
    1,
    'N/A',
    'N/A'
);

commit;

insert into category_properties (
    product_id,
    "ciqual_food_name:en",
    "ciqual_food_name:fr"
) values (
    1,
    'Pearl Reed',
    'Pearl Reed'
);

commit;

insert into ecoscore_data (
    product_id,
    grade,
    missing_data_warning,
    score,
    status
) values (
    1,
    'b',
    1,
    67,
    'known'
);

commit;

insert into origins_of_ingredients (
    ecoscore_data_id,
    epi_score,
    epi_value,
    origins_from_categories,
    origins_from_origins_field,
    transportation_score,
    transportation_value,
    value,
    warning
) values (
    1,
    0,
    -5,
    'N/A',
    'N/A',
    0,
    0,
    -5,
    'origins_are_100_percent_unknown'
);

commit;

insert into aggregated_origins (
    origins_of_ingredient_id,
    epi_score,
    origin,
    percent,
    transportation_score
) values (
    1,
    '0',
    'en:unknown',
    100,
    'N/A'
);

commit;

insert into transportation_scores (
    origins_of_ingredient_id,
    ad,
    al,
    va,
    world,
    xk
) values (
    1,
    0,
    0,
    0,
    0,
    0
);

commit;

insert into transportation_values (
    origins_of_ingredient_id,
    ad,
    ua,
    uk,
    us,
    va,
    world,
    xk
) values (
    1,
    0,
    0,
    0,
    0,
    0,
    0,
    0
);

commit;

insert into the_values (
    origins_of_ingredient_id,
    ad,
    al,
    at,
    uk,
    us,
    va,
    world,
    xk
) values (
    1,
    90,
    59,
    89,
    38,
    65,
    52,
    89,
    75
);

commit;

insert into packaging (
    packagings1_id,
    ecoscore_data_id,
    non_recyclable_and_non_biodegradable_materials,
    score,
    value
) values (
    1,
    1,
    2,
    -100,
    -15
);

commit;

insert into production_system (
    ecoscore_data_id,
    value,
    warning
) values (
    1,
    0,
    'no_label'
);

commit;

insert into agribalyse1 (
    ecoscore_data_id,
    agribalyse_food_code,
    co2_agriculture,
    co2_consumption,
    co2_distribution,
    co2_packaging,
    co2_processing,
    co2_total,
    co2_transportation,
    code,
    dqr,
    ef_agriculture,
    ef_consumption,
    ef_distribution,
    ef_packaging,
    ef_processing,
    ef_total,
    ef_transportation,
    is_beverage,
    name_en,
    name_fr,
    score,
    version
) values (
    1,
    '4004',
    0.82655583,
    0,
    0.019537154,
    0.28154442,
    0.23156851,
    1.543669164,
    0.18446325,
    '4004',
    '2.45',
    0.14029442,
    0,
    0.004831936,
    0.02370999,
    0.038707917,
    0.223317319,
    0.015773056,
    0,
    'Potato crisps',
    'Chips de pommes de terre, standard',
    87,
    '3.1'
);

commit;

insert into grades (
    ecoscore_data_id,
    ad,
    al,
    tr,
    ua,
    uk,
    us,
    va,
    world,
    xk
) values (
    1,
    'b',
    'b',
    'b',
    'b',
    'b',
    'b',
    'b',
    'b',
    'b'
);

commit;

insert into missing (
    ecoscore_data_id,
    labels,
    origins
) values (
    1,
    1,
    1
);

commit;

insert into previous_data (
    ecoscore_data_id,
    grade,
    score
) values (
    1,
    'b',
    63
);

commit;

insert into agribalyse2 (
    previous_data_id,
    agribalyse_food_code,
    co2_agriculture,
    co2_consumption,
    co2_distribution,
    co2_packaging,
    co2_processing,
    co2_total,
    co2_transportation,
    code,
    dqr,
    ef_agriculture,
    ef_consumption,
    ef_distribution,
    ef_packaging,
    ef_processing,
    ef_total,
    ef_transportation,
    is_beverage,
    name_en,
    name_fr,
    score
) values (
    1,
    '4004',
    1.2992636,
    0,
    0.029120657,
    0.28581962,
    0.39294234,
    2.2443641,
    0.23728203,
    '4004',
    '2.45',
    0.18214682,
    0,
    0.0098990521,
    0.021558384,
    0.057508389,
    0.29200269,
    0.020894187,
    0,
    'Potato crisps',
    'Chips de pommes de terre, standard',
    78
);

commit;

insert into scores (
    ecoscore_data_id,
    ad,
    al,
    at,
    va,
    world,
    xk
) values (
    1,
    67,
    67,
    67,
    67,
    67,
    67
);

commit;

insert into impact (
    product_id,
    ef_single_score_log_stddev,
    mass_ratio_uncharacterized,
    impact,
    nutrition,
    warnings
) values (
    1,
    0.0664290643574977,
    0.0244618467395455,
    'N/A',
    'N/A',
    'N/A'
);

commit;

insert into likeliest_impacts (
    impact_id,
    Climate_change,
    EF_single_score
) values (
    1,
    0.0835225930657116,
    0.0132996566234689
);

commit;

insert into likeliest_recipe (
    impact_id,
    "en:Oak_smoked_sea_salti_yeast_extract",
    "en:e160c",
    "en:e330",
    "en:flavouring",
    "en:garlic_powder",
    "en:milk",
    "en:onion",
    "en:potato",
    "en:potato_starch",
    "en:rice_flour",
    "en:salt",
    "en:spice",
    "en:sugar",
    "en:sunflower_oil",
    "en:tomato_powder",
    "en:water",
    "en:yeast_powder"
) values (
    1,
    56,
    0,
    88,
    14,
    14,
    4,
    21,
    82,
    90,
    48,
    50,
    52,
    63,
    71,
    85,
    59,
    95
);

commit;

insert into uncharacterized_ingredients_mass_proportion (
    impact_id,
    impact,
    nutrition
) values (
    1,
    0.0244618467395455,
    0.0106506947223728
);

commit;

insert into uncharacterized_ingredients_ratio (
    impact_id,
    impact,
    nutrition
) values (
    1,
    0.3125,
    0.125
);

commit;

insert into front (
    full_id,
    product_id,
    geometry,
    imgid,
    normalize,
    rev,
    white_magic
) values (
    3,
    1,
    'N/A',
    'N/A',
    'N/A',
    'N/A',
    'N/A'
);

commit;

insert into front_en (
    full_id,
    product_id,
    angle,
    coordinates_image_size,
    geometry,
    imgid,
    normalize,
    rev,
    white_magic,
    x1,
    x2,
    y1,
    y2
) values (
    6,
    '5060292302201',
    0,
    'full',
    '0x0--1--1',
    '8',
    'N/A',
    '23',
    'N/A',
    '-1',
    '-1',
    '-1',
    '-1'
);

commit;

insert into ingredients1 (
    full_id,
    product_id,
    geometry,
    imgid,
    normalize,
    ocr,
    orientation,
    rev,
    white_magic
) values (
    1,
    '5060292302201',
    '1730x526-125-304',
    '5',
    'false',
    1,
    '0',
    '11',
    'false'
);

commit;

insert into ingredients_en (
    full_id,
    product_id,
    geometry,
    imgid,
    normalize,
    ocr,
    orientation,
    rev,
    white_magic
) values (
    12,
    '5060292302201',
    '1730x526-125-304',
    '5',
    'false',
    1,
    '0',
    '11',
    'false'
);

commit;

insert into nutrition (
    full_id,
    product_id,
    geometry,
    imgid,
    normalize,
    ocr,
    orientation,
    rev,
    white_magic
) values (
    7,
    1,
    'N/A',
    'N/A',
    'N/A',
    72,
    'N/A',
    'N/A',
    'N/A'
);

commit;

insert into nutrition_en (
    full_id,
    product_id,
    angle,
    coordinates_image_size,
    geometry,
    imgid,
    normalize,
    rev,
    white_magic,
    x1,
    x2,
    y1,
    y2
) values (
    14,
    '5060292302201',
    0,
    'full',
    '0x0--1--1',
    '9',
    'N/A',
    '32',
    'N/A',
    '-1',
    '-1',
    '-1',
    '-1'
);

commit;

insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    '4003',
    54,
    54,
    54,
    54,
    'en:dried',
    1,
    'potatoes',
    'yes',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    '17440',
    39,
    28.75,
    46,
    11.5,
    'N/A',
    2,
    'sunflower oil',
    'yes',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    68,
    8.625,
    33.3333333333333,
    0,
    'N/A',
    3,
    'seasoning',
    'maybe',
    'maybe'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    '9520',
    12,
    4.3125,
    17.25,
    0,
    'N/A',
    4,
    'rice flour',
    'yes',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    35,
    4.3125,
    11.5,
    0,
    'N/A',
    5,
    'potato starch',
    'yes',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    48,
    4.3125,
    8.7,
    0,
    'N/A',
    96,
    'sugar',
    'yes',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    38,
    2.15625,
    8.7,
    0,
    'N/A',
    83,
    'whey powder',
    'no',
    'maybe'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    '11058',
    81,
    1.05,
    2.1,
    0,
    'N/A',
    54,
    'salt',
    'yes',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    '20034',
    21,
    0.553125,
    2.1,
    0,
    'en:powder',
    83,
    'onion',
    'yes',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    27,
    0.2765625,
    2.1,
    0,
    'N/A',
    36,
    'yeast powder',
    'yes',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    '11000',
    52,
    0.13828125,
    2.1,
    0,
    'en:powder',
    35,
    'garlic',
    'yes',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    '20047',
    81,
    0.0691406250000002,
    2.1,
    0,
    'en:powder',
    37,
    'tomato',
    'yes',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    47,
    0.0345703124999996,
    2.1,
    0,
    'N/A',
    90,
    'Oak smoked sea salti yeast extract',
    'N/A',
    'N/A'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    3,
    0.0172851562499998,
    2.1,
    0,
    'N/A',
    15,
    'flavourings',
    'maybe',
    'maybe'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    39,
    0.00864257812500036,
    2.1,
    0,
    'N/A',
    33,
    'spices',
    'yes',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    28,
    0.00432128906250018,
    2.1,
    0,
    'N/A',
    63,
    'acid',
    'N/A',
    'N/A'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    89,
    0.00432128906249929,
    2.1,
    0,
    'N/A',
    66,
    'colour',
    'N/A',
    'N/A'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    92,
    2.15625,
    8.7,
    0,
    'N/A',
    6,
    'milk',
    'no',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    91,
    0.00432128906250018,
    2.1,
    0,
    'N/A',
    27,
    'citric acid',
    'yes',
    'yes'
);
insert into ingredients2 (
    id,
    product_id,
    ciqual_food_code,
    percent,
    percent_estimate,
    percent_max,
    percent_min,
    processing,
    rank,
    text,
    vegan,
    vegetarian
) values (
    '5060292302201',
    '5060292302201',
    'N/A',
    87,
    0.00432128906249929,
    2.1,
    0,
    'N/A',
    26,
    'paprika extract',
    'yes',
    'yes'
);

commit;

insert into languages (
    product_id,
    "en:english"
) values (
    '5060292302201',
    63
);

commit;

insert into languages_codes (
    product_id,
    en
) values (
    '5060292302201',
    5
);

commit;

insert into nutrient_levels (
    product_id,
    fat,
    salt,
    "saturated-fat",
    sugars
) values (
    '5060292302201',
    'moderate',
    'high',
    'N/A',
    'moderate'
);

commit;

insert into nutriments (
    product_id,
    carbohydrates,
    carbohydrates_100g,
    carbohydrates_serving,
    carbohydrates_unit,
    carbohydrates_value,
    "carbon-footprint-from-known-ingredients_100g",
    "carbon-footprint-from-known-ingredients_product",
    salt,
    salt_100g,
    salt_serving,
    salt_unit,
    salt_value,
    "saturated-fat",
    "saturated-fat_100g",
    "saturated-fat_serving",
    "saturated-fat_unit",
    "saturated-fat_value",
    sodium,
    sodium_100g,
    sodium_serving,
    sodium_unit,
    sodium_value,
    sugars,
    sugars_100g,
    sugars_serving,
    sugars_unit,
    sugars_value
) values (
    '5060292302201',
    62,
    62,
    14.3,
    'g',
    62,
    63,
    28,
    2.1,
    2.1,
    0.483,
    'g',
    2.1,
    38,
    85,
    52,
    'N/A',
    36,
    0.84,
    0.84,
    0.193,
    'g',
    0.84,
    8.7,
    8.7,
    2,
    'g',
    8.7
);

commit;

insert into nutriscore_data (
    product_id,
    energy,
    energy_points,
    energy_value,
    fiber,
    fiber_points,
    fiber_value,
    fruits_vegetables_nuts_colza_walnut_olive_oils,
    fruits_vegetables_nuts_colza_walnut_olive_oils_points,
    fruits_vegetables_nuts_colza_walnut_olive_oils_value,
    grade,
    is_beverage,
    is_cheese,
    is_fat,
    is_water,
    negative_points,
    positive_points,
    proteins,
    proteins_points,
    proteins_value,
    saturated_fat,
    saturated_fat_points,
    saturated_fat_value,
    score,
    sodium,
    sodium_points,
    sodium_value,
    sugars,
    sugars_points,
    sugars_value
) values (
    '5060292302201',
    1759,
    5,
    1759,
    3.9,
    4,
    3.9,
    '0',
    0,
    0,
    'd',
    0,
    0,
    0,
    0,
    16,
    4,
    5.7,
    3,
    5.7,
    1.4,
    1,
    1.4,
    12,
    840,
    9,
    840,
    8.7,
    1,
    8.7
);

commit;

insert into display (
    en
) values (
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.400.jpg'
);
insert into display (
    en
) values (
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.400.jpg'
);
insert into display (
    en
) values (
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.400.jpg'
);

commit;

insert into small (
    en
) values (
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.200.jpg'
);
insert into small (
    en
) values (
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.200.jpg'
);
insert into small (
    en
) values (
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.200.jpg'
);

commit;

insert into thumb (
    en
) values (
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.100.jpg'
);
insert into thumb (
    en
) values (
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.100.jpg'
);
insert into thumb (
    en
) values (
    'https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.100.jpg'
);

commit;


-- Generated by Quick SQL development 1/30/2024, 11:20:40 AM

/*

food_product  /insert 1
   code
   product  /insert 1
      _id
      _keywords
      additives_n num
      additives_old_n num
      additives_old_tags
      additives_original_tags
      additives_prev_original_tags
      additives_tags
      allergens
      allergens_from_ingredients
      allergens_from_user
      allergens_hierarchy
      allergens_lc
      allergens_tags
      brands
      brands_tags
      carbon_footprint_from_known_ingredients_debug
      carbon_footprint_percent_of_known_ingredients num
      categories
      categories_hierarchy
      categories_lc
      categories_old
      categories_properties  /insert 1
         agribalyse_food_code:en
         ciqual_food_code:en
      categories_properties_tags
      categories_tags
      category_properties  /insert 1
         ciqual_food_name:en
         ciqual_food_name:fr
      ciqual_food_name_tags
      code
      codes_tags
      compared_to_category
      complete num
      completeness num
      correctors_tags
      countries
      countries_hierarchy
      countries_lc
      countries_tags
      created_t num
      creator
      data_quality_info_tags
      data_quality_tags
      data_quality_warnings_tags
      data_sources
      data_sources_tags
      debug_param_sorted_langs
      ecoscore_data  /insert 1
         origins_of_ingredients  /insert 1
            aggregated_origins  /insert 1
               epi_score
               origin
               percent num
               transportation_score
            epi_score num
            epi_value num
            origins_from_categories
            origins_from_origins_field
            transportation_score num
            transportation_scores  /insert 1
               ad num
               al num
               va num
               world num
               xk num
            transportation_value num
            transportation_values  /insert 1
               ad num
               ua num
               uk num
               us num
               va num
               world num
               xk num
            value num
            values  /insert 1
               ad num
               al num
               at num
               uk num
               us num
               va num
               world num
               xk num
            warning
         packaging  /insert 1
            non_recyclable_and_non_biodegradable_materials num
            >packagings1  /insert 2
               ecoscore_material_score num
               ecoscore_shape_ratio num
               material
               non_recyclable_and_non_biodegradable
               shape
            score num
            value num
         production_system  /insert 1
            value num
            warning
         agribalyse1  /insert 1
            agribalyse_food_code
            co2_agriculture num
            co2_consumption num
            co2_distribution num
            co2_packaging num
            co2_processing num
            co2_total num
            co2_transportation num
            code
            dqr
            ef_agriculture num
            ef_consumption num
            ef_distribution num
            ef_packaging num
            ef_processing num
            ef_total num
            ef_transportation num
            is_beverage num
            name_en
            name_fr
            score num
            version
         grade
         grades  /insert 1
            ad
            al
            tr
            ua
            uk
            us
            va
            world
            xk
         missing  /insert 1
            labels num
            origins num
         missing_data_warning num
         previous_data  /insert 1
            agribalyse2  /insert 1
               agribalyse_food_code
               co2_agriculture num
               co2_consumption num
               co2_distribution num
               co2_packaging num
               co2_processing num
               co2_total num
               co2_transportation num
               code
               dqr
               ef_agriculture num
               ef_consumption num
               ef_distribution num
               ef_packaging num
               ef_processing num
               ef_total num
               ef_transportation num
               is_beverage num
               name_en
               name_fr
               score num
            grade
            score num
         score num
         scores  /insert 1
            ad num
            al num
            at num
            va num
            world num
            xk num
         status
      impact  /insert 1
         ef_single_score_log_stddev num
         likeliest_impacts  /insert 1
            Climate_change num
            EF_single_score num
         likeliest_recipe  /insert 1
            en:Oak_smoked_sea_salti_yeast_extract num
            en:e160c num
            en:e330 num
            en:flavouring num
            en:garlic_powder num
            en:milk num
            en:onion num
            en:potato num
            en:potato_starch num
            en:rice_flour num
            en:salt num
            en:spice num
            en:sugar num
            en:sunflower_oil num
            en:tomato_powder num
            en:water num
            en:yeast_powder num
         mass_ratio_uncharacterized num
         impact
         nutrition
         uncharacterized_ingredients_mass_proportion  /insert 1
            impact num
            nutrition num
         uncharacterized_ingredients_ratio  /insert 1
            impact num
            nutrition num
         warnings
      ecoscore_extended_data_version
      ecoscore_grade
      ecoscore_score num
      ecoscore_tags
      editors
      editors_tags
      emb_codes
      emb_codes_20141016
      emb_codes_orig
      entry_dates_tags
      expiration_date
      food_groups
      food_groups_tags
      fruits-vegetables-nuts_100g_estimate num
      generic_name
      generic_name_en
      generic_name_fr
      id vc32 /pk
      image_front_small_url
      image_front_thumb_url
      image_front_url
      image_ingredients_small_url
      image_ingredients_thumb_url
      image_ingredients_url
      image_nutrition_small_url
      image_nutrition_thumb_url
      image_nutrition_url
      image_small_url
      image_thumb_url
      image_url
      front  /insert 1
         geometry
         imgid
         normalize
         rev
         >full  /insert 15
            h num
            w num
         white_magic
      front_en  /insert 1
         angle num
         coordinates_image_size
         geometry
         imgid
         normalize
         rev
         >full  /insert 15
            h num
            w num
         white_magic
         x1
         x2
         y1
         y2
      ingredients1  /insert 1
         geometry
         imgid
         normalize
         ocr num
         orientation
         rev
         >full  /insert 15
            h num
            w num
         white_magic
      ingredients_en  /insert 1
         geometry
         imgid
         normalize
         ocr num
         orientation
         rev
         >full  /insert 15
            h num
            w num
         white_magic
      nutrition  /insert 1
         geometry
         imgid
         normalize
         ocr num
         orientation
         rev
         >full  /insert 15
            h num
            w num
         white_magic
      nutrition_en  /insert 1
         angle num
         coordinates_image_size
         geometry
         imgid
         normalize
         rev
         >full  /insert 15
            h num
            w num
         white_magic
         x1
         x2
         y1
         y2
      informers_tags
      ingredients2  /insert 20
         ciqual_food_code
         id vc32 /pk
         percent num
         percent_estimate num
         percent_max num
         percent_min num
         processing
         rank num
         text
         vegan
         vegetarian
      en:non-vegan
      en:palm-oil-content-unknown
      en:vegan-status-unknown
      en:vegetarian-status-unknown
      ingredients_analysis_tags
      ingredients_debug
      ingredients_from_or_that_may_be_from_palm_oil_n num
      ingredients_from_palm_oil_n num
      ingredients_hierarchy
      ingredients_ids_debug
      ingredients_n num
      ingredients_n_tags
      ingredients_original_tags
      ingredients_percent_analysis num
      ingredients_tags
      ingredients_text
      ingredients_text_debug
      ingredients_text_en
      ingredients_text_fr
      ingredients_text_with_allergens
      ingredients_text_with_allergens_en
      ingredients_that_may_be_from_palm_oil_n num
      ingredients_with_specified_percent_n num
      ingredients_with_specified_percent_sum num
      ingredients_with_unspecified_percent_n num
      ingredients_with_unspecified_percent_sum num
      ingredients_without_ciqual_codes
      ingredients_without_ciqual_codes_n num
      interface_version_created
      interface_version_modified
      known_ingredients_n num
      labels
      labels_hierarchy
      labels_lc
      labels_old
      labels_tags
      lang
      languages  /insert 1
         en:english num
      languages_codes  /insert 1
         en num
      languages_hierarchy
      languages_tags
      last_edit_dates_tags
      last_editor
      last_image_dates_tags
      last_image_t num
      last_modified_by
      last_modified_t num
      lc
      link
      manufacturing_places
      manufacturing_places_tags
      max_imgid
      misc_tags
      no_nutrition_data
      nova_group num
      nova_group_debug
      nova_groups
      nova_groups_tags
      nutrient_levels  /insert 1
         fat
         salt
         saturated-fat
         sugars
      nutrient_levels_tags
      nutriments  /insert 1
         carbohydrates num
         carbohydrates_100g num
         carbohydrates_serving num
         carbohydrates_unit
         carbohydrates_value num
         carbon-footprint-from-known-ingredients_100g num
         carbon-footprint-from-known-ingredients_product num
         salt num
         salt_100g num
         salt_serving num
         salt_unit
         salt_value num
         saturated-fat num
         saturated-fat_100g num
         saturated-fat_serving num
         saturated-fat_unit
         saturated-fat_value num
         sodium num
         sodium_100g num
         sodium_serving num
         sodium_unit
         sodium_value num
         sugars num
         sugars_100g num
         sugars_serving num
         sugars_unit
         sugars_value num
      nutriscore_2021_tags
      nutriscore_2023_tags
      nutriscore_data  /insert 1
         energy num
         energy_points num
         energy_value num
         fiber num
         fiber_points num
         fiber_value num
         fruits_vegetables_nuts_colza_walnut_olive_oils
         fruits_vegetables_nuts_colza_walnut_olive_oils_points num
         fruits_vegetables_nuts_colza_walnut_olive_oils_value num
         grade
         is_beverage num
         is_cheese num
         is_fat num
         is_water num
         negative_points num
         positive_points num
         proteins num
         proteins_points num
         proteins_value num
         saturated_fat num
         saturated_fat_points num
         saturated_fat_value num
         score num
         sodium num
         sodium_points num
         sodium_value num
         sugars num
         sugars_points num
         sugars_value num
      nutriscore_grade
      nutriscore_score num
      nutriscore_score_opposite num
      nutriscore_tags
      nutriscore_version
      nutrition_data
      nutrition_data_per
      nutrition_data_prepared
      nutrition_data_prepared_per
      nutrition_grade_fr
      nutrition_grades
      nutrition_grades_tags
      nutrition_score_beverage num
      nutrition_score_debug
      obsolete
      obsolete_since_date
      origin
      origin_en
      origins
      origins_lc
      origins_old
      packaging
      packaging_hierarchy
      packaging_lc
      packaging_materials_tags
      packaging_old
      packaging_old_before_taxonomization
      packaging_shapes_tags
      packaging_tags
      packaging_text
      packaging_text_en
      >packagings2  /insert 2
         material
         shape
      packagings_complete num
      packagings_n num
      photographers_tags
      pnns_groups_1
      pnns_groups_1_tags
      pnns_groups_2
      pnns_groups_2_tags
      popularity_key num
      popularity_tags
      product_name
      product_name_en
      product_name_fr
      product_quantity
      purchase_places
      quantity
      rev num
      scans_n num
      display  /insert 3
         en
      small  /insert 3
         en
      thumb  /insert 3
         en
      display  /insert 3
         en
      small  /insert 3
         en
      thumb  /insert 3
         en
      display  /insert 3
         en
      small  /insert 3
         en
      thumb  /insert 3
         en
      serving_quantity
      serving_size
      sortkey num
      states
      states_hierarchy
      states_tags
      stores
      teams
      teams_tags
      traces
      traces_from_ingredients
      traces_from_user
      traces_lc
      unique_scans_n num
      unknown_ingredients_n num
      update_key
   status num
   status_verbose






{
   "_keywords": [
      {
         "0": "and",
         "1": "anything",
         "2": "appetizer",
         "3": "artificial",
         "4": "barbeque",
         "5": "beverage",
         "6": "potatoe",
         "7": "preservative",
         "8": "salty",
         "9": "snack",
         "10": "sunflower",
         "11": "vegetarian",
         "_id": "5060292302201"
      }
   ],
   "added_countries_tags": [],
   "additives_debug_tags": [],
   "additives_old_tags": [
      {
         "0": "en:e330",
         "1": "en:e160c",
         "_id": "5060292302201"
      }
   ],
   "additives_original_tags": [
      {
         "0": "en:e330",
         "1": "en:e160c",
         "_id": "5060292302201"
      }
   ],
   "additives_prev_original_tags": [
      {
         "0": "en:e330",
         "1": "en:e160c",
         "_id": "5060292302201"
      }
   ],
   "additives_tags": [
      {
         "0": "en:e160c",
         "1": "en:e330",
         "_id": "5060292302201"
      }
   ],
   "allergens_hierarchy": [
      {
         "0": "en:milk",
         "_id": "5060292302201"
      }
   ],
   "allergens_tags": [
      {
         "0": "en:milk",
         "_id": "5060292302201"
      }
   ],
   "amino_acids_prev_tags": [],
   "amino_acids_tags": [],
   "brands_tags": [
      {
         "0": "popchips",
         "_id": "5060292302201"
      }
   ],
   "categories_hierarchy": [
      {
         "0": "en:plant-based-foods-and-beverages",
         "1": "en:plant-based-foods",
         "2": "en:snacks",
         "3": "en:cereals-and-potatoes",
         "4": "en:salty-snacks",
         "5": "en:appetizers",
         "6": "en:chips-and-fries",
         "7": "en:crisps",
         "8": "en:potato-crisps",
         "9": "en:potato-crisps-in-sunflower-oil",
         "_id": "5060292302201"
      }
   ],
   "categories_properties": [
      {
         "agribalyse_food_code:en": "4004",
         "ciqual_food_code:en": "4004",
         "_id": "5060292302201"
      }
   ],
   "categories_properties_tags": [
      {
         "0": "all-products",
         "1": "categories-known",
         "2": "agribalyse-food-code-4004",
         "3": "agribalyse-food-code-known",
         "4": "agribalyse-proxy-food-code-unknown",
         "5": "ciqual-food-code-4004",
         "6": "ciqual-food-code-known",
         "7": "agribalyse-known",
         "8": "agribalyse-4004",
         "_id": "5060292302201"
      }
   ],
   "categories_tags": [
      {
         "0": "en:plant-based-foods-and-beverages",
         "1": "en:plant-based-foods",
         "2": "en:snacks",
         "3": "en:cereals-and-potatoes",
         "4": "en:salty-snacks",
         "5": "en:appetizers",
         "6": "en:chips-and-fries",
         "7": "en:crisps",
         "8": "en:potato-crisps",
         "9": "en:potato-crisps-in-sunflower-oil",
         "_id": "5060292302201"
      }
   ],
   "category_properties": [
      {
         "ciqual_food_name:en": "Potato crisps",
         "ciqual_food_name:fr": "Chips de pommes de terre, standard",
         "_id": "5060292302201"
      }
   ],
   "checkers_tags": [],
   "ciqual_food_name_tags": [
      {
         "0": "potato-crisps",
         "_id": "5060292302201"
      }
   ],
   "cities_tags": [],
   "codes_tags": [
      {
         "0": "code-13",
         "1": "5060292302xxx",
         "2": "506029230xxxx",
         "3": "50602923xxxxx",
         "4": "5060292xxxxxx",
         "5": "506029xxxxxxx",
         "6": "50602xxxxxxxx",
         "7": "5060xxxxxxxxx",
         "8": "506xxxxxxxxxx",
         "9": "50xxxxxxxxxxx",
         "10": "5xxxxxxxxxxxx",
         "_id": "5060292302201"
      }
   ],
   "correctors_tags": [
      {
         "0": "tacite",
         "1": "tacite-mass-editor",
         "2": "yuka.VjQwdU5yUUlpdmxUbjhWa3BFenc4ZGt1NDVLUFZtNm9NdWdOSWc9PQ",
         "3": "openfoodfacts-contributors",
         "4": "swipe-studio",
         "5": "yuka.sY2b0xO6T85zoF3NwEKvllZnctbb-gn-LDr4mHzUyem0FYPXMO5by7b5NKg",
         "6": "kiliweb",
         "7": "packbot",
         "8": "foodless",
         "9": "yuka.sY2b0xO6T85zoF3NwEKvlmBZVPXu-gnlBU3miFTQ-NeSIbDaMdUtu4fLGas",
         "10": "aleene",
         "_id": "5060292302201"
      }
   ],
   "countries_hierarchy": [
      {
         "0": "en:france",
         "1": "en:united-kingdom",
         "_id": "5060292302201"
      }
   ],
   "countries_tags": [
      {
         "0": "en:france",
         "1": "en:united-kingdom",
         "_id": "5060292302201"
      }
   ],
   "data_quality_bugs_tags": [],
   "data_quality_errors_tags": [],
   "data_quality_info_tags": [
      {
         "0": "en:packaging-data-incomplete",
         "1": "en:ingredients-percent-analysis-ok",
         "2": "en:carbon-footprint-from-known-ingredients-but-not-from-meat-or-fish",
         "3": "en:ecoscore-extended-data-computed",
         "4": "en:ecoscore-extended-data-less-precise-than-agribalyse",
         "5": "en:food-groups-1-known",
         "6": "en:food-groups-2-known",
         "7": "en:food-groups-3-unknown",
         "_id": "5060292302201"
      }
   ],
   "data_quality_tags": [
      {
         "0": "en:packaging-data-incomplete",
         "1": "en:ingredients-percent-analysis-ok",
         "2": "en:carbon-footprint-from-known-ingredients-but-not-from-meat-or-fish",
         "3": "en:ecoscore-extended-data-computed",
         "4": "en:ecoscore-extended-data-less-precise-than-agribalyse",
         "5": "en:food-groups-1-known",
         "6": "en:food-groups-2-known",
         "7": "en:food-groups-3-unknown",
         "8": "en:nutrition-value-very-low-for-category-energy",
         "9": "en:nutrition-value-very-low-for-category-fat",
         "10": "en:nutrition-value-very-high-for-category-sugars",
         "11": "en:vegetarian-label-but-could-not-confirm-for-all-ingredients",
         "12": "en:ecoscore-origins-of-ingredients-origins-are-100-percent-unknown",
         "13": "en:ecoscore-production-system-no-label",
         "_id": "5060292302201"
      }
   ],
   "data_quality_warnings_tags": [
      {
         "0": "en:nutrition-value-very-low-for-category-energy",
         "1": "en:nutrition-value-very-low-for-category-fat",
         "2": "en:nutrition-value-very-high-for-category-sugars",
         "3": "en:vegetarian-label-but-could-not-confirm-for-all-ingredients",
         "4": "en:ecoscore-origins-of-ingredients-origins-are-100-percent-unknown",
         "5": "en:ecoscore-production-system-no-label",
         "_id": "5060292302201"
      }
   ],
   "data_sources_tags": [
      {
         "0": "app-yuka",
         "1": "apps",
         "2": "app-horizon",
         "_id": "5060292302201"
      }
   ],
   "debug_param_sorted_langs": [
      {
         "0": "en",
         "_id": "5060292302201"
      }
   ],
   "aggregated_origins": [
      {
         "epi_score": "0",
         "origin": "en:unknown",
         "percent": 100,
         "transportation_score": null,
         "_id": "5060292302201"
      }
   ],
   "origins_from_categories": [
      {
         "0": "en:unknown",
         "_id": "5060292302201"
      }
   ],
   "origins_from_origins_field": [
      {
         "0": "en:unknown",
         "_id": "5060292302201"
      }
   ],
   "transportation_scores": [
      {
         "ad": 0,
         "al": 0,
         "va": 0,
         "world": 0,
         "xk": 0,
         "_id": "5060292302201"
      }
   ],
   "transportation_values": [
      {
         "ad": 0,
         "ua": 0,
         "uk": 0,
         "us": 0,
         "va": 0,
         "world": 0,
         "xk": 0,
         "_id": "5060292302201"
      }
   ],
   "values": [
      {
         "ad": -5,
         "al": -5,
         "at": -5,
         "uk": -5,
         "us": -5,
         "va": -5,
         "world": -5,
         "xk": -5,
         "_id": "5060292302201"
      }
   ],
   "origins_of_ingredients": [
      {
         "epi_score": 0,
         "epi_value": -5,
         "transportation_score": 0,
         "transportation_value": 0,
         "value": -5,
         "warning": "origins_are_100_percent_unknown",
         "_id": "5060292302201"
      }
   ],
   "packaging_packagings": [
      {
         "packaging_id": "5060292302201",
         "packagings1_id": 1
      },
      {
         "packaging_id": "5060292302201",
         "packagings1_id": 2
      }
   ],
   "packagings1": [
      {
         "ecoscore_material_score": 0,
         "ecoscore_shape_ratio": 1,
         "material": "en:plastic",
         "non_recyclable_and_non_biodegradable": "maybe",
         "shape": "en:packet",
         "id": 1
      },
      {
         "ecoscore_material_score": 0,
         "ecoscore_shape_ratio": 1,
         "material": "en:plastic",
         "non_recyclable_and_non_biodegradable": "maybe",
         "shape": "en:packet",
         "id": 2
      }
   ],
   "packaging": [
      {
         "non_recyclable_and_non_biodegradable_materials": 2,
         "score": -100,
         "value": -15,
         "_id": "5060292302201"
      }
   ],
   "labels": [],
   "production_system": [
      {
         "value": 0,
         "warning": "no_label",
         "_id": "5060292302201"
      }
   ],
   "threatened_species": [],
   "adjustments": [],
   "agribalyse1": [
      {
         "agribalyse_food_code": "4004",
         "co2_agriculture": 0.82655583,
         "co2_consumption": 0,
         "co2_distribution": 0.019537154,
         "co2_packaging": 0.28154442,
         "co2_processing": 0.23156851,
         "co2_total": 1.543669164,
         "co2_transportation": 0.18446325,
         "code": "4004",
         "dqr": "2.45",
         "ef_agriculture": 0.14029442,
         "ef_consumption": 0,
         "ef_distribution": 0.004831936,
         "ef_packaging": 0.02370999,
         "ef_processing": 0.038707917,
         "ef_total": 0.223317319,
         "ef_transportation": 0.015773056,
         "is_beverage": 0,
         "name_en": "Potato crisps",
         "name_fr": "Chips de pommes de terre, standard",
         "score": 87,
         "version": "3.1",
         "_id": "5060292302201"
      }
   ],
   "grades": [
      {
         "ad": "b",
         "al": "b",
         "tr": "b",
         "ua": "b",
         "uk": "b",
         "us": "b",
         "va": "b",
         "world": "b",
         "xk": "b",
         "_id": "5060292302201"
      }
   ],
   "missing": [
      {
         "labels": 1,
         "origins": 1,
         "_id": "5060292302201"
      }
   ],
   "agribalyse2": [
      {
         "agribalyse_food_code": "4004",
         "co2_agriculture": 1.2992636,
         "co2_consumption": 0,
         "co2_distribution": 0.029120657,
         "co2_packaging": 0.28581962,
         "co2_processing": 0.39294234,
         "co2_total": 2.2443641,
         "co2_transportation": 0.23728203,
         "code": "4004",
         "dqr": "2.45",
         "ef_agriculture": 0.18214682,
         "ef_consumption": 0,
         "ef_distribution": 0.0098990521,
         "ef_packaging": 0.021558384,
         "ef_processing": 0.057508389,
         "ef_total": 0.29200269,
         "ef_transportation": 0.020894187,
         "is_beverage": 0,
         "name_en": "Potato crisps",
         "name_fr": "Chips de pommes de terre, standard",
         "score": 78,
         "_id": "5060292302201"
      }
   ],
   "previous_data": [
      {
         "grade": "b",
         "score": 63,
         "_id": "5060292302201"
      }
   ],
   "scores": [
      {
         "ad": 67,
         "al": 67,
         "at": 67,
         "va": 67,
         "world": 67,
         "xk": 67,
         "_id": "5060292302201"
      }
   ],
   "ecoscore_data": [
      {
         "grade": "b",
         "missing_data_warning": 1,
         "score": 67,
         "status": "known",
         "_id": "5060292302201"
      }
   ],
   "likeliest_impacts": [
      {
         "Climate_change": 0.0835225930657116,
         "EF_single_score": 0.0132996566234689,
         "_id": "5060292302201"
      }
   ],
   "likeliest_recipe": [
      {
         "en:Oak_smoked_sea_salti_yeast_extract": 0.103505496656251,
         "en:e160c": 0.10350549665625,
         "en:e330": 0.10350549665625,
         "en:flavouring": 0.10350549665625,
         "en:garlic_powder": 0.103505496656251,
         "en:milk": 1.55847864453775,
         "en:onion": 0.15510736429208,
         "en:potato": 69.2208020730349,
         "en:potato_starch": 10.5320407294931,
         "en:rice_flour": 13.8595510001351,
         "en:salt": 1.3345917157533,
         "en:spice": 0.10350549665625,
         "en:sugar": 10.2883618334396,
         "en:sunflower_oil": 14.1645835312727,
         "en:tomato_powder": 0.10350549665625,
         "en:water": 6.24510964041154,
         "en:yeast_powder": 0.103505496656251,
         "_id": "5060292302201"
      }
   ],
   "impact": [
      {
         "ef_single_score_log_stddev": 0.0664290643574977,
         "mass_ratio_uncharacterized": 0.0244618467395455,
         "_id": "5060292302201"
      }
   ],
   "nutrition": [],
   "uncharacterized_ingredients": [],
   "uncharacterized_ingredients_mass_proportion": [
      {
         "impact": 0.0244618467395455,
         "nutrition": 0.0106506947223728,
         "_id": "5060292302201"
      }
   ],
   "uncharacterized_ingredients_ratio": [
      {
         "impact": 0.3125,
         "nutrition": 0.125,
         "_id": "5060292302201"
      }
   ],
   "warnings": [
      {
         "0": "Fermentation agents are present in the product (en:yeast-powder). Carbohydrates and sugars mass balance will not be considered to estimate potential recipes",
         "1": "The product has a high number of impact uncharacterized ingredients: 31%",
         "_id": "5060292302201"
      }
   ],
   "ecoscore_extended_data": [],
   "ecoscore_tags": [
      {
         "0": "b",
         "_id": "5060292302201"
      }
   ],
   "editors": [
      {
         "0": "kyzh",
         "1": "tacite",
         "_id": "5060292302201"
      }
   ],
   "editors_tags": [
      {
         "0": "kiliweb",
         "1": "openfoodfacts-contributors",
         "2": "aleene",
         "3": "tacite-mass-editor",
         "4": "yuka.sY2b0xO6T85zoF3NwEKvlmBZVPXu-gnlBU3miFTQ-NeSIbDaMdUtu4fLGas",
         "5": "kyzh",
         "6": "yuka.VjQwdU5yUUlpdmxUbjhWa3BFenc4ZGt1NDVLUFZtNm9NdWdOSWc9PQ",
         "7": "ecoscore-impact-estimator",
         "8": "tacite",
         "9": "foodless",
         "10": "yuka.sY2b0xO6T85zoF3NwEKvllZnctbb-gn-LDr4mHzUyem0FYPXMO5by7b5NKg",
         "11": "swipe-studio",
         "12": "packbot",
         "_id": "5060292302201"
      }
   ],
   "emb_codes_tags": [],
   "entry_dates_tags": [
      {
         "0": "2015-06-03",
         "1": "2015-06",
         "2": "2015",
         "_id": "5060292302201"
      }
   ],
   "food_groups_tags": [
      {
         "0": "en:salty-snacks",
         "1": "en:appetizers",
         "_id": "5060292302201"
      }
   ],
   "generic_name_fr_debug_tags": [],
   "sizes": [
      {
         "h": 74,
         "w": 100,
         "id": "5060292302201"
      },
      {
         "h": 296,
         "w": 400,
         "id": "5060292302201"
      },
      {
         "h": 43,
         "w": 100,
         "id": "5060292302201"
      },
      {
         "h": 171,
         "w": 400,
         "id": "5060292302201"
      },
      {
         "h": 100,
         "w": 82,
         "id": "5060292302201"
      },
      {
         "h": 400,
         "w": 326,
         "id": "5060292302201"
      },
      {
         "h": 56,
         "w": 100,
         "id": "5060292302201"
      },
      {
         "h": 225,
         "w": 400,
         "id": "5060292302201"
      },
      {
         "h": 100,
         "w": 78,
         "id": "5060292302201"
      },
      {
         "h": 200,
         "w": 156,
         "id": "5060292302201"
      },
      {
         "h": 400,
         "w": 311,
         "id": "5060292302201"
      },
      {
         "h": 200,
         "w": 163,
         "id": "5060292302201"
      },
      {
         "h": 30,
         "w": 100,
         "id": "5060292302201"
      },
      {
         "h": 61,
         "w": 200,
         "id": "5060292302201"
      },
      {
         "h": 122,
         "w": 400,
         "id": "5060292302201"
      },
      {
         "h": 81,
         "w": 100,
         "id": "5060292302201"
      },
      {
         "h": 163,
         "w": 200,
         "id": "5060292302201"
      },
      {
         "h": 325,
         "w": 400,
         "id": "5060292302201"
      },
      {
         "h": 113,
         "w": 200,
         "id": "5060292302201"
      }
   ],
   "nutrition_en_full": [
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 3
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 4
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 5
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 6
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 7
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 8
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 9
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 10
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 11
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 12
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 13
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 14
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 15
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 16
      },
      {
         "nutrition_en_id": "5060292302201",
         "full_id": 17
      }
   ],
   "full": [
      {
         "h": 1482,
         "w": 2000,
         "id": 3
      },
      {
         "h": 1482,
         "w": 2000,
         "id": 4
      },
      {
         "h": 1482,
         "w": 2000,
         "id": 5
      },
      {
         "h": 1482,
         "w": 2000,
         "id": 6
      },
      {
         "h": 1482,
         "w": 2000,
         "id": 7
      },
      {
         "h": 1482,
         "w": 2000,
         "id": 8
      },
      {
         "h": 846,
         "w": 1974,
         "id": 9
      },
      {
         "h": 1140,
         "w": 930,
         "id": 10
      },
      {
         "h": 569,
         "w": 1011,
         "id": 11
      },
      {
         "h": 1825,
         "w": 1421,
         "id": 12
      },
      {
         "h": 1140,
         "w": 930,
         "id": 13
      },
      {
         "h": 526,
         "w": 1730,
         "id": 14
      },
      {
         "h": 526,
         "w": 1730,
         "id": 15
      },
      {
         "h": 920,
         "w": 1131,
         "id": 16
      },
      {
         "h": 569,
         "w": 1011,
         "id": 17
      }
   ],
   "images": [
      {
         "uploaded_t": 1433338177,
         "uploader": "kyzh",
         "id": "5060292302201"
      },
      {
         "uploaded_t": 1433338194,
         "uploader": "kyzh",
         "id": "5060292302201"
      },
      {
         "uploaded_t": 1433338203,
         "uploader": "kyzh",
         "id": "5060292302201"
      },
      {
         "uploaded_t": 1433338215,
         "uploader": "kyzh",
         "id": "5060292302201"
      },
      {
         "uploaded_t": 1433338229,
         "uploader": "kyzh",
         "id": "5060292302201"
      },
      {
         "uploaded_t": 1433338245,
         "uploader": "kyzh",
         "id": "5060292302201"
      },
      {
         "uploaded_t": "1508236270",
         "uploader": "kiliweb",
         "id": "5060292302201"
      },
      {
         "uploaded_t": 1620505759,
         "uploader": "kiliweb",
         "id": "5060292302201"
      },
      {
         "uploaded_t": 1656075071,
         "uploader": "kiliweb",
         "id": "5060292302201"
      }
   ],
   "front": [],
   "front_en": [
      {
         "angle": 0,
         "coordinates_image_size": "full",
         "geometry": "0x0--1--1",
         "imgid": "8",
         "normalize": null,
         "rev": "23",
         "white_magic": null,
         "x1": "-1",
         "x2": "-1",
         "y1": "-1",
         "y2": "-1",
         "id": "5060292302201"
      }
   ],
   "ingredients1": [
      {
         "geometry": "1730x526-125-304",
         "imgid": "5",
         "normalize": "false",
         "ocr": 1,
         "orientation": "0",
         "rev": "11",
         "white_magic": "false",
         "id": "5060292302201"
      }
   ],
   "ingredients_en": [
      {
         "geometry": "1730x526-125-304",
         "imgid": "5",
         "normalize": "false",
         "ocr": 1,
         "orientation": "0",
         "rev": "11",
         "white_magic": "false",
         "id": "5060292302201"
      }
   ],
   "nutrition_en": [
      {
         "angle": 0,
         "coordinates_image_size": "full",
         "geometry": "0x0--1--1",
         "imgid": "9",
         "normalize": null,
         "rev": "32",
         "white_magic": null,
         "x1": "-1",
         "x2": "-1",
         "y1": "-1",
         "y2": "-1",
         "id": "5060292302201"
      }
   ],
   "informers_tags": [
      {
         "0": "kyzh",
         "1": "tacite",
         "2": "tacite-mass-editor",
         "3": "yuka.VjQwdU5yUUlpdmxUbjhWa3BFenc4ZGt1NDVLUFZtNm9NdWdOSWc9PQ",
         "4": "openfoodfacts-contributors",
         "5": "aleene",
         "id": "5060292302201"
      }
   ],
   "ingredients2": [
      {
         "ciqual_food_code": "4003",
         "id": "5060292302201",
         "percent": 54,
         "percent_estimate": 54,
         "percent_max": 54,
         "percent_min": 54,
         "processing": "en:dried",
         "rank": 1,
         "text": "potatoes",
         "vegan": "yes",
         "vegetarian": "yes"
      },
      {
         "ciqual_food_code": "17440",
         "from_palm_oil": "no",
         "id": "5060292302201",
         "percent_estimate": 28.75,
         "percent_max": 46,
         "percent_min": 11.5,
         "rank": 2,
         "text": "sunflower oil",
         "vegan": "yes",
         "vegetarian": "yes"
      },
      {
         "has_sub_ingredients": "yes",
         "id": "5060292302201",
         "percent_estimate": 8.625,
         "percent_max": 33.3333333333333,
         "percent_min": 0,
         "rank": 3,
         "text": "seasoning",
         "vegan": "maybe",
         "vegetarian": "maybe"
      },
      {
         "ciqual_food_code": "9520",
         "id": "5060292302201",
         "percent_estimate": 4.3125,
         "percent_max": 17.25,
         "percent_min": 0,
         "rank": 4,
         "text": "rice flour",
         "vegan": "yes",
         "vegetarian": "yes"
      },
      {
         "id": "5060292302201",
         "percent_estimate": 4.3125,
         "percent_max": 11.5,
         "percent_min": 0,
         "rank": 5,
         "text": "potato starch",
         "vegan": "yes",
         "vegetarian": "yes"
      },
      {
         "id": "5060292302201",
         "percent_estimate": 4.3125,
         "percent_max": 8.7,
         "percent_min": 0,
         "text": "sugar",
         "vegan": "yes",
         "vegetarian": "yes"
      },
      {
         "has_sub_ingredients": "yes",
         "id": "5060292302201",
         "percent_estimate": 2.15625,
         "percent_max": 8.7,
         "percent_min": 0,
         "text": "whey powder",
         "vegan": "no",
         "vegetarian": "maybe"
      },
      {
         "ciqual_food_code": "11058",
         "id": "5060292302201",
         "percent_estimate": 1.05,
         "percent_max": 2.1,
         "percent_min": 0,
         "text": "salt",
         "vegan": "yes",
         "vegetarian": "yes"
      },
      {
         "ciqual_food_code": "20034",
         "id": "5060292302201",
         "percent_estimate": 0.553125,
         "percent_max": 2.1,
         "percent_min": 0,
         "processing": "en:powder",
         "text": "onion",
         "vegan": "yes",
         "vegetarian": "yes"
      },
      {
         "id": "5060292302201",
         "percent_estimate": 0.2765625,
         "percent_max": 2.1,
         "percent_min": 0,
         "text": "yeast powder",
         "vegan": "yes",
         "vegetarian": "yes"
      },
      {
         "ciqual_food_code": "11000",
         "id": "5060292302201",
         "percent_estimate": 0.13828125,
         "percent_max": 2.1,
         "percent_min": 0,
         "processing": "en:powder",
         "text": "garlic",
         "vegan": "yes",
         "vegetarian": "yes"
      },
      {
         "ciqual_food_code": "20047",
         "id": "5060292302201",
         "percent_estimate": 0.0691406250000002,
         "percent_max": 2.1,
         "percent_min": 0,
         "processing": "en:powder",
         "text": "tomato",
         "vegan": "yes",
         "vegetarian": "yes"
      },
      {
         "id": "5060292302201",
         "percent_estimate": 0.0345703124999996,
         "percent_max": 2.1,
         "percent_min": 0,
         "text": "Oak smoked sea salti yeast extract"
      },
      {
         "id": "5060292302201",
         "percent_estimate": 0.0172851562499998,
         "percent_max": 2.1,
         "percent_min": 0,
         "text": "flavourings",
         "vegan": "maybe",
         "vegetarian": "maybe"
      },
      {
         "id": "5060292302201",
         "percent_estimate": 0.00864257812500036,
         "percent_max": 2.1,
         "percent_min": 0,
         "text": "spices",
         "vegan": "yes",
         "vegetarian": "yes"
      },
      {
         "has_sub_ingredients": "yes",
         "id": "5060292302201",
         "percent_estimate": 0.00432128906250018,
         "percent_max": 2.1,
         "percent_min": 0,
         "text": "acid"
      },
      {
         "has_sub_ingredients": "yes",
         "id": "5060292302201",
         "percent_estimate": 0.00432128906249929,
         "percent_max": 2.1,
         "percent_min": 0,
         "text": "colour"
      },
      {
         "id": "5060292302201",
         "percent_estimate": 2.15625,
         "percent_max": 8.7,
         "percent_min": 0,
         "text": "milk",
         "vegan": "no",
         "vegetarian": "yes"
      },
      {
         "id": "5060292302201",
         "percent_estimate": 0.00432128906250018,
         "percent_max": 2.1,
         "percent_min": 0,
         "text": "citric acid",
         "vegan": "yes",
         "vegetarian": "yes"
      },
      {
         "id": "5060292302201",
         "percent_estimate": 0.00432128906249929,
         "percent_max": 2.1,
         "percent_min": 0,
         "text": "paprika extract",
         "vegan": "yes",
         "vegetarian": "yes"
      }
   ],
   "en:non-vegan": [
      {
         "0": "en:whey-powder",
         "1": "en:milk",
         "id": "5060292302201"
      }
   ],
   "en:palm-oil-content-unknown": [
      {
         "0": "en:oak-smoked-sea-salti-yeast-extract",
         "id": "5060292302201"
      }
   ],
   "en:vegan-status-unknown": [
      {
         "0": "en:oak-smoked-sea-salti-yeast-extract",
         "id": "5060292302201"
      }
   ],
   "en:vegetarian-status-unknown": [
      {
         "0": "en:oak-smoked-sea-salti-yeast-extract",
         "id": "5060292302201"
      }
   ],
   "ingredients_analysis": [],
   "ingredients_analysis_tags": [
      {
         "0": "en:palm-oil-free",
         "1": "en:non-vegan",
         "2": "en:vegetarian",
         "id": "5060292302201"
      }
   ],
   "ingredients_debug": [
      {
         "0": "54% dried potatoes",
         "1": ",",
         "2": null,
         "3": null,
         "4": null,
         "5": " sunflower oil",
         "6": ",",
         "7": null,
         "8": null,
         "9": null,
         "10": " seasoning ",
         "11": "(",
         "12": "(",
         "13": null,
         "14": null,
         "15": "sugar",
         "16": ",",
         "17": null,
         "18": null,
         "19": null,
         "20": " whey powder ",
         "21": "[",
         "22": "[",
         "23": null,
         "24": null,
         "25": "milk]",
         "26": ",",
         "27": null,
         "28": null,
         "29": null,
         "30": " salt",
         "31": ",",
         "32": null,
         "33": null,
         "34": null,
         "35": " onion powder",
         "36": ",",
         "37": null,
         "38": null,
         "39": null,
         "40": " yeast powder",
         "41": ",",
         "42": null,
         "43": null,
         "44": null,
         "45": " garlic powder",
         "46": ",",
         "47": null,
         "48": null,
         "49": null,
         "50": " tomato powder",
         "51": ",",
         "52": null,
         "53": null,
         "54": null,
         "55": " Oak smoked sea salti yeast extract",
         "56": ",",
         "57": null,
         "58": null,
         "59": null,
         "60": " flavourings",
         "61": ",",
         "62": null,
         "63": null,
         "64": null,
         "65": " spices",
         "66": ",",
         "67": null,
         "68": null,
         "69": null,
         "70": " acid",
         "71": ":",
         "72": ":",
         "73": null,
         "74": null,
         "75": " citric acid",
         "76": ",",
         "77": null,
         "78": null,
         "79": null,
         "80": " colour",
         "81": ":",
         "82": ":",
         "83": null,
         "84": null,
         "85": " paprika extract)",
         "86": ",",
         "87": null,
         "88": null,
         "89": null,
         "90": " rice flour",
         "91": ",",
         "92": null,
         "93": null,
         "94": null,
         "95": " potato starch.",
         "id": "5060292302201"
      }
   ],
   "ingredients_from_palm_oil_tags": [],
   "ingredients_hierarchy": [
      {
         "0": "en:potato",
         "1": "en:vegetable",
         "2": "en:root-vegetable",
         "3": "en:tuber",
         "4": "en:sunflower-oil",
         "5": "en:oil-and-fat",
         "6": "en:spice",
         "7": "en:condiment",
         "8": "en:acid",
         "9": "en:colour",
         "10": "en:milk",
         "11": "en:e330",
         "12": "en:e160c",
         "id": "5060292302201"
      }
   ],
   "ingredients_ids_debug": [
      {
         "0": "54-dried-potatoes",
         "1": "sunflower-oil",
         "2": "seasoning",
         "3": "sugar",
         "4": "colour",
         "5": "paprika-extract",
         "6": "rice-flour",
         "7": "potato-starch",
         "id": "5060292302201"
      }
   ],
   "ingredients_n_tags": [
      {
         "0": "20",
         "1": "11-20",
         "id": "5060292302201"
      }
   ],
   "ingredients_original_tags": [
      {
         "0": "en:potato",
         "1": "en:sunflower-oil",
         "2": "en:coating",
         "3": "en:rice-flour",
         "4": "en:potato-starch",
         "5": "en:sugar",
         "6": "en:whey-powder",
         "7": "en:salt",
         "8": "en:onion",
         "9": "en:yeast-powder",
         "10": "en:garlic",
         "11": "en:tomato",
         "12": "en:oak-smoked-sea-salti-yeast-extract",
         "13": "en:flavouring",
         "14": "en:spice",
         "15": "en:acid",
         "16": "en:colour",
         "17": "en:milk",
         "18": "en:e330",
         "19": "en:e160c",
         "id": "5060292302201"
      }
   ],
   "ingredients_tags": [
      {
         "0": "en:potato",
         "1": "en:vegetable",
         "2": "en:root-vegetable",
         "3": "en:milk",
         "4": "en:e330",
         "5": "en:e160c",
         "id": "5060292302201"
      }
   ],
   "ingredients_text_debug_tags": [],
   "ingredients_text_fr_debug_tags": [],
   "ingredients_that_may_be_from_palm_oil_tags": [],
   "ingredients_without_ciqual_codes": [
      {
         "0": "en:e160c",
         "1": "en:e330",
         "2": "en:flavouring",
         "3": "en:milk",
         "4": "en:oak-smoked-sea-salti-yeast-extract",
         "5": "en:potato-starch",
         "6": "en:spice",
         "7": "en:sugar",
         "8": "en:yeast-powder",
         "id": "5060292302201"
      }
   ],
   "labels_hierarchy": [
      {
         "0": "en:vegetarian",
         "1": "en:no-preservatives",
         "2": "en:No artificial anything",
         "id": "5060292302201"
      }
   ],
   "labels_tags": [
      {
         "0": "en:vegetarian",
         "1": "en:no-preservatives",
         "2": "en:no-artificial-anything",
         "id": "5060292302201"
      }
   ],
   "languages": [
      {
         "en:english": 5,
         "id": "5060292302201"
      }
   ],
   "languages_codes": [
      {
         "en": 5,
         "id": "5060292302201"
      }
   ],
   "languages_hierarchy": [
      {
         "0": "en:english",
         "id": "5060292302201"
      }
   ],
   "languages_tags": [
      {
         "0": "en:english",
         "1": "en:1",
         "id": "5060292302201"
      }
   ],
   "last_edit_dates_tags": [
      {
         "0": "2023-03-24",
         "1": "2023-03",
         "2": "2023",
         "id": "5060292302201"
      }
   ],
   "last_image_dates_tags": [
      {
         "0": "2022-06-24",
         "1": "2022-06",
         "2": "2022",
         "id": "5060292302201"
      }
   ],
   "main_countries_tags": [],
   "manufacturing_places_tags": [
      {
         "0": "european-union",
         "id": "5060292302201"
      }
   ],
   "minerals_prev_tags": [],
   "minerals_tags": [],
   "misc_tags": [
      {
         "0": "en:nutriscore-computed",
         "1": "en:nutrition-fruits-vegetables-nuts-from-category",
         "2": "en:nutrition-fruits-vegetables-nuts-from-category-en-potato-crisps-in-sunflower-oil",
         "3": "en:nutrition-fruits-vegetables-legumes-from-category",
         "4": "en:nutrition-fruits-vegetables-legumes-from-category-en-potato-crisps-in-sunflower-oil",
         "5": "en:nutriscore-2021-same-as-2023",
         "6": "en:nutriscore-2021-d-2023-d",
         "7": "en:packagings-number-of-components-2",
         "8": "en:packagings-not-complete",
         "9": "en:packagings-not-empty-but-not-complete",
         "10": "en:packagings-not-empty",
         "11": "en:ecoscore-extended-data-computed",
         "12": "en:ecoscore-extended-data-version-4",
         "13": "en:ecoscore-missing-data-warning",
         "14": "en:ecoscore-missing-data-labels",
         "15": "en:ecoscore-missing-data-origins",
         "16": "en:ecoscore-computed",
         "17": "en:ecoscore-changed",
         "id": "5060292302201"
      }
   ],
   "nova_groups_markers": [
      {
         "0": "categories",
         "1": "en:salty-snacks",
         "id": "5060292302201"
      },
      {
         "0": "ingredients",
         "1": "en:salt",
         "id": "5060292302201"
      },
      {
         "0": "ingredients",
         "1": "en:starch",
         "id": "5060292302201"
      },
      {
         "0": "ingredients",
         "1": "en:sugar",
         "id": "5060292302201"
      },
      {
         "0": "ingredients",
         "1": "en:vegetable-oil",
         "id": "5060292302201"
      },
      {
         "0": "additives",
         "1": "en:e160c",
         "id": "5060292302201"
      },
      {
         "0": "ingredients",
         "1": "en:colour",
         "id": "5060292302201"
      },
      {
         "0": "ingredients",
         "1": "en:flavouring",
         "id": "5060292302201"
      },
      {
         "0": "ingredients",
         "1": "en:whey",
         "id": "5060292302201"
      }
   ],
   "nova_groups_tags": [
      {
         "0": "en:4-ultra-processed-food-and-drink-products",
         "id": "5060292302201"
      }
   ],
   "nucleotides_prev_tags": [],
   "nucleotides_tags": [],
   "nutrient_levels": [
      {
         "fat": "moderate",
         "salt": "high",
         "saturated-fat": "low",
         "sugars": "moderate",
         "id": "5060292302201"
      }
   ],
   "nutrient_levels_tags": [
      {
         "0": "en:fat-in-moderate-quantity",
         "1": "en:saturated-fat-in-low-quantity",
         "2": "en:sugars-in-moderate-quantity",
         "3": "en:salt-in-high-quantity",
         "id": "5060292302201"
      }
   ],
   "nutriments": [
      {
         "carbohydrates": 62,
         "carbohydrates_100g": 62,
         "carbohydrates_serving": 14.3,
         "carbohydrates_unit": "g",
         "carbohydrates_value": 62,
         "carbon-footprint-from-known-ingredients_100g": 32.4,
         "carbon-footprint-from-known-ingredients_product": 7.45,
         "salt": 2.1,
         "salt_100g": 2.1,
         "salt_serving": 0.483,
         "salt_unit": "g",
         "salt_value": 2.1,
         "saturated-fat": 1.4,
         "saturated-fat_100g": 1.4,
         "saturated-fat_serving": 0.322,
         "saturated-fat_unit": "g",
         "saturated-fat_value": 1.4,
         "sodium": 0.84,
         "sodium_100g": 0.84,
         "sodium_serving": 0.193,
         "sodium_unit": "g",
         "sodium_value": 0.84,
         "sugars": 8.7,
         "sugars_100g": 8.7,
         "sugars_serving": 2,
         "sugars_unit": "g",
         "sugars_value": 8.7,
         "id": "5060292302201"
      }
   ],
   "data": [
      {
         "count_proteins": 0,
         "count_proteins_reason": "negative_points_more_than_11",
         "energy": 1759,
         "is_red_meat_product": 0,
         "is_water": 0,
         "negative_points": 18,
         "positive_points": 1,
         "proteins": 5.7,
         "proteins_points": 2,
         "salt": 2.1,
         "salt_points": 10,
         "saturated_fat": 1.4,
         "saturated_fat_points": 1,
         "sugars": 8.7,
         "sugars_points": 2,
         "id": "5060292302201"
      }
   ],
   "nutriscore": [
      {
         "category_available": 1,
         "grade": "d",
         "nutrients_available": 1,
         "nutriscore_applicable": 1,
         "nutriscore_computed": 1,
         "score": 12,
         "id": "5060292302201"
      },
      {
         "category_available": 1,
         "grade": "d",
         "nutrients_available": 1,
         "nutriscore_applicable": 1,
         "nutriscore_computed": 1,
         "score": 17,
         "id": "5060292302201"
      }
   ],
   "negative_nutrients": [
      {
         "0": "energy",
         "1": "sugars",
         "2": "saturated_fat",
         "3": "salt",
         "4": "non_nutritive_sweeteners",
         "id": "5060292302201"
      }
   ],
   "positive_nutrients": [
      {
         "0": "fruits_vegetables_legumes",
         "1": "fiber",
         "id": "5060292302201"
      }
   ],
   "nutriscore_2021_tags": [
      {
         "0": "d",
         "id": "5060292302201"
      }
   ],
   "nutriscore_2023_tags": [
      {
         "0": "d",
         "id": "5060292302201"
      }
   ],
   "nutriscore_data": [
      {
         "energy": 1759,
         "energy_points": 5,
         "energy_value": 1759,
         "fiber": 3.9,
         "fiber_points": 4,
         "fiber_value": 3.9,
         "fruits_vegetables_nuts_colza_walnut_olive_oils": "0",
         "fruits_vegetables_nuts_colza_walnut_olive_oils_points": 0,
         "fruits_vegetables_nuts_colza_walnut_olive_oils_value": 0,
         "grade": "d",
         "is_beverage": 0,
         "is_cheese": 0,
         "is_fat": 0,
         "is_water": 0,
         "negative_points": 16,
         "positive_points": 4,
         "proteins": 5.7,
         "proteins_points": 3,
         "proteins_value": 5.7,
         "saturated_fat": 1.4,
         "saturated_fat_points": 1,
         "saturated_fat_value": 1.4,
         "score": 12,
         "sodium": 840,
         "sodium_points": 9,
         "sodium_value": 840,
         "sugars": 8.7,
         "sugars_points": 1,
         "sugars_value": 8.7,
         "id": "5060292302201"
      }
   ],
   "nutriscore_tags": [
      {
         "0": "d",
         "id": "5060292302201"
      }
   ],
   "nutrition_grades_tags": [
      {
         "0": "d",
         "id": "5060292302201"
      }
   ],
   "origins_hierarchy": [],
   "origins_tags": [],
   "other_nutritional_substances_tags": [],
   "packaging_hierarchy": [
      {
         "0": "en:plastic",
         "1": "en:Mixed plastic film-packet",
         "id": "5060292302201"
      }
   ],
   "packaging_materials_tags": [
      {
         "0": "en:plastic",
         "id": "5060292302201"
      }
   ],
   "packaging_recycling_tags": [],
   "packaging_shapes_tags": [
      {
         "0": "en:packet",
         "id": "5060292302201"
      }
   ],
   "packaging_tags": [
      {
         "0": "en:plastic",
         "1": "en:mixed-plastic-film-packet",
         "id": "5060292302201"
      }
   ],
   "product_packagings": [
      {
         "product_id": "5060292302201",
         "packagings2_id": 18
      },
      {
         "product_id": "5060292302201",
         "packagings2_id": 19
      }
   ],
   "packagings2": [
      {
         "material": "en:plastic",
         "shape": "en:packet",
         "id": 18
      },
      {
         "material": "en:plastic",
         "shape": "en:packet",
         "id": 19
      }
   ],
   "all": [],
   "en:plastic": [],
   "packagings_materials": [],
   "photographers_tags": [
      {
         "0": "kyzh",
         "1": "kiliweb",
         "id": "5060292302201"
      }
   ],
   "pnns_groups_1_tags": [
      {
         "0": "salty-snacks",
         "1": "known",
         "id": "5060292302201"
      }
   ],
   "pnns_groups_2_tags": [
      {
         "0": "appetizers",
         "1": "known",
         "id": "5060292302201"
      }
   ],
   "popularity_tags": [
      {
         "0": "bottom-25-percent-scans-2019",
         "1": "bottom-20-percent-scans-2019",
         "2": "top-100000-hk-scans-2022",
         "3": "top-10000-us-scans-2022",
         "4": "top-50000-us-scans-2022",
         "5": "top-100000-us-scans-2022",
         "id": "5060292302201"
      }
   ],
   "product_name_fr_debug_tags": [],
   "purchase_places_tags": [],
   "removed_countries_tags": [],
   "display": [
      {
         "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.400.jpg",
         "id": "5060292302201"
      },
      {
         "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.400.jpg",
         "id": "5060292302201"
      },
      {
         "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.400.jpg",
         "id": "5060292302201"
      }
   ],
   "small": [
      {
         "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.200.jpg",
         "id": "5060292302201"
      },
      {
         "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.200.jpg",
         "id": "5060292302201"
      },
      {
         "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.200.jpg",
         "id": "5060292302201"
      }
   ],
   "thumb": [
      {
         "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.100.jpg",
         "id": "5060292302201"
      },
      {
         "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.100.jpg",
         "id": "5060292302201"
      },
      {
         "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.100.jpg",
         "id": "5060292302201"
      }
   ],
   "ingredients-1": [],
   "selected_images": [],
   "states_hierarchy": [
      {
         "0": "en:to-be-completed",
         "1": "en:nutrition-facts-completed",
         "2": "en:ingredients-completed",
         "3": "en:ingredients-photo-selected",
         "4": "en:front-photo-selected",
         "5": "en:photos-uploaded",
         "id": "5060292302201"
      }
   ],
   "states_tags": [
      {
         "0": "en:to-be-completed",
         "1": "en:nutrition-facts-completed",
         "2": "en:ingredients-completed",
         "3": "en:ingredients-photo-selected",
         "4": "en:front-photo-selected",
         "5": "en:photos-uploaded",
         "id": "5060292302201"
      }
   ],
   "stores_tags": [],
   "teams_tags": [
      {
         "0": "swipe-studio",
         "id": "5060292302201"
      }
   ],
   "traces_hierarchy": [],
   "traces_tags": [],
   "unknown_nutrients_tags": [],
   "vitamins_prev_tags": [],
   "vitamins_tags": [],
   "weighers_tags": [],
   "product": [
      {
         "_id": "5060292302201",
         "additives_n": 2,
         "additives_old_n": 2,
         "allergens": "en:milk",
         "allergens_from_ingredients": "en:milk, milk",
         "allergens_from_user": "(en) en:milk",
         "allergens_lc": "en",
         "brands": "Popchips",
         "carbon_footprint_from_known_ingredients_debug": "en:potato 54% x 0.6 = 32.4 g - ",
         "carbon_footprint_percent_of_known_ingredients": 54,
         "categories": "Plant-based foods and beverages, Plant-based foods, Snacks, Cereals and potatoes, Salty snacks, Appetizers, Chips and fries, Crisps, Potato crisps, Potato crisps in sunflower oil",
         "categories_lc": "en",
         "categories_old": "Plant-based foods and beverages, Plant-based foods, Snacks, Cereals and potatoes, Salty snacks, Appetizers, Chips and fries, Crisps, Potato crisps, Potato crisps in sunflower oil",
         "code": "5060292302201",
         "compared_to_category": "en:potato-crisps-in-sunflower-oil",
         "complete": 0,
         "completeness": 0.8875,
         "countries": "France,United Kingdom",
         "countries_lc": "en",
         "created_t": 1433338177,
         "creator": "kyzh",
         "data_sources": "App - yuka, Apps, App - Horizon",
         "ecoscore_extended_data_version": "4",
         "ecoscore_grade": "b",
         "ecoscore_score": 67,
         "emb_codes": "",
         "emb_codes_20141016": "",
         "emb_codes_orig": "",
         "expiration_date": "11/05/2016",
         "food_groups": "en:appetizers",
         "fruits-vegetables-nuts_100g_estimate": 0,
         "generic_name": "",
         "generic_name_en": "",
         "generic_name_fr": "",
         "id": "5060292302201",
         "image_front_small_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.200.jpg",
         "image_front_thumb_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.100.jpg",
         "image_front_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.400.jpg",
         "image_ingredients_small_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.200.jpg",
         "image_ingredients_thumb_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.100.jpg",
         "image_ingredients_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.400.jpg",
         "image_nutrition_small_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.200.jpg",
         "image_nutrition_thumb_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.100.jpg",
         "image_nutrition_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.400.jpg",
         "image_small_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.200.jpg",
         "image_thumb_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.100.jpg",
         "image_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.400.jpg",
         "ingredients_from_or_that_may_be_from_palm_oil_n": 0,
         "ingredients_from_palm_oil_n": 0,
         "ingredients_n": 20,
         "ingredients_percent_analysis": 1,
         "ingredients_text": "54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [milk], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.",
         "ingredients_text_debug": "54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [milk], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.",
         "ingredients_text_en": "54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [milk], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.",
         "ingredients_text_fr": "",
         "ingredients_text_with_allergens": "54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [<span class=\"allergen\">milk</span>], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.",
         "ingredients_text_with_allergens_en": "54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [<span class=\"allergen\">milk</span>], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.",
         "ingredients_that_may_be_from_palm_oil_n": 0,
         "ingredients_with_specified_percent_n": 1,
         "ingredients_with_specified_percent_sum": 54,
         "ingredients_with_unspecified_percent_n": 15,
         "ingredients_with_unspecified_percent_sum": 46,
         "ingredients_without_ciqual_codes_n": 9,
         "interface_version_created": "20120622",
         "interface_version_modified": "20190830",
         "known_ingredients_n": 36,
         "labels": "Vegetarian, No preservatives, No artificial anything",
         "labels_lc": "en",
         "labels_old": "Vegetarian,No preservatives,No artificial anything",
         "lang": "en",
         "last_editor": "aleene",
         "last_image_t": 1656075071,
         "last_modified_by": "aleene",
         "last_modified_t": 1679645675,
         "lc": "en",
         "link": "",
         "manufacturing_places": "European Union",
         "max_imgid": "9",
         "no_nutrition_data": "",
         "nova_group": 4,
         "nova_group_debug": "",
         "nova_groups": "4",
         "nutriscore_grade": "d",
         "nutriscore_score": 12,
         "nutriscore_score_opposite": -12,
         "nutriscore_version": "2021",
         "nutrition_data": "on",
         "nutrition_data_per": "100g",
         "nutrition_data_prepared": "",
         "nutrition_data_prepared_per": "100g",
         "nutrition_grade_fr": "d",
         "nutrition_grades": "d",
         "nutrition_score_beverage": 0,
         "nutrition_score_debug": "",
         "obsolete": "",
         "obsolete_since_date": "",
         "origin": "",
         "origin_en": "",
         "origins": "",
         "origins_lc": "en",
         "origins_old": "",
         "packaging": "Plastic,Mixed plastic film-packet",
         "packaging_lc": "en",
         "packaging_old": "Plastic, Mixed plastic-packet",
         "packaging_old_before_taxonomization": "Plastic, en:mixed plastic-packet",
         "packaging_text": "",
         "packaging_text_en": "",
         "packagings_complete": 0,
         "packagings_n": 2,
         "pnns_groups_1": "Salty snacks",
         "pnns_groups_2": "Appetizers",
         "popularity_key": 21900000007,
         "product_name": "Barbeque Potato Chips",
         "product_name_en": "Barbeque Potato Chips",
         "product_name_fr": "",
         "product_quantity": "23",
         "purchase_places": "",
         "quantity": "23 g",
         "rev": 33,
         "scans_n": 6,
         "serving_quantity": "23",
         "serving_size": "23 g",
         "sortkey": 1535456524,
         "states": "en:to-be-completed, en:nutrition-facts-completed, en:ingredients-completed, en:expiration-date-completed, en:packaging-code-to-be-completed, en:characteristics-to-be-completed, en:origins-to-be-completed, en:categories-completed, en:brands-completed, en:packaging-completed, en:quantity-completed, en:product-name-completed, en:photos-to-be-validated, en:packaging-photo-to-be-selected, en:nutrition-photo-selected, en:ingredients-photo-selected, en:front-photo-selected, en:photos-uploaded",
         "stores": "",
         "teams": "swipe-studio",
         "traces": "",
         "traces_from_ingredients": "",
         "traces_from_user": "(en) ",
         "traces_lc": "en",
         "unique_scans_n": 4,
         "unknown_ingredients_n": 1,
         "update_key": "eco20231129"
      }
   ],
   "food_product": [
      {
         "code": "5060292302201",
         "status": 1,
         "status_verbose": "product found"
      }
   ]
}


-- Generated by json2qsql.js development 1/30/2024, 11:19:56 AM



{
   "code": "5060292302201",
   "product": {
      "_id": "5060292302201",
      "_keywords": [
         "and",
         "anything",
         "appetizer",
         "artificial",
         "barbeque",
         "beverage",
         "potatoe",
         "preservative",
         "salty",
         "snack",
         "sunflower",
         "vegetarian"
      ],
      "added_countries_tags": [],
      "additives_debug_tags": [],
      "additives_n": 2,
      "additives_old_n": 2,
      "additives_old_tags": [
         "en:e330",
         "en:e160c"
      ],
      "additives_original_tags": [
         "en:e330",
         "en:e160c"
      ],
      "additives_prev_original_tags": [
         "en:e330",
         "en:e160c"
      ],
      "additives_tags": [
         "en:e160c",
         "en:e330"
      ],
      "allergens": "en:milk",
      "allergens_from_ingredients": "en:milk, milk",
      "allergens_from_user": "(en) en:milk",
      "allergens_hierarchy": [
         "en:milk"
      ],
      "allergens_lc": "en",
      "allergens_tags": [
         "en:milk"
      ],
      "amino_acids_prev_tags": [],
      "amino_acids_tags": [],
      "brands": "Popchips",
      "brands_tags": [
         "popchips"
      ],
      "carbon_footprint_from_known_ingredients_debug": "en:potato 54% x 0.6 = 32.4 g - ",
      "carbon_footprint_percent_of_known_ingredients": 54,
      "categories": "Plant-based foods and beverages, Plant-based foods, Snacks, Cereals and potatoes, Salty snacks, Appetizers, Chips and fries, Crisps, Potato crisps, Potato crisps in sunflower oil",
      "categories_hierarchy": [
         "en:plant-based-foods-and-beverages",
         "en:plant-based-foods",
         "en:snacks",
         "en:cereals-and-potatoes",
         "en:salty-snacks",
         "en:appetizers",
         "en:chips-and-fries",
         "en:crisps",
         "en:potato-crisps",
         "en:potato-crisps-in-sunflower-oil"
      ],
      "categories_lc": "en",
      "categories_old": "Plant-based foods and beverages, Plant-based foods, Snacks, Cereals and potatoes, Salty snacks, Appetizers, Chips and fries, Crisps, Potato crisps, Potato crisps in sunflower oil",
      "categories_properties": {
         "agribalyse_food_code:en": "4004",
         "ciqual_food_code:en": "4004"
      },
      "categories_properties_tags": [
         "all-products",
         "categories-known",
         "agribalyse-food-code-4004",
         "agribalyse-food-code-known",
         "agribalyse-proxy-food-code-unknown",
         "ciqual-food-code-4004",
         "ciqual-food-code-known",
         "agribalyse-known",
         "agribalyse-4004"
      ],
      "categories_tags": [
         "en:plant-based-foods-and-beverages",
         "en:plant-based-foods",
         "en:snacks",
         "en:cereals-and-potatoes",
         "en:salty-snacks",
         "en:appetizers",
         "en:chips-and-fries",
         "en:crisps",
         "en:potato-crisps",
         "en:potato-crisps-in-sunflower-oil"
      ],
      "category_properties": {
         "ciqual_food_name:en": "Potato crisps",
         "ciqual_food_name:fr": "Chips de pommes de terre, standard"
      },
      "checkers_tags": [],
      "ciqual_food_name_tags": [
         "potato-crisps"
      ],
      "cities_tags": [],
      "code": "5060292302201",
      "codes_tags": [
         "code-13",
         "5060292302xxx",
         "506029230xxxx",
         "50602923xxxxx",
         "5060292xxxxxx",
         "506029xxxxxxx",
         "50602xxxxxxxx",
         "5060xxxxxxxxx",
         "506xxxxxxxxxx",
         "50xxxxxxxxxxx",
         "5xxxxxxxxxxxx"
      ],
      "compared_to_category": "en:potato-crisps-in-sunflower-oil",
      "complete": 0,
      "completeness": 0.8875,
      "correctors_tags": [
         "tacite",
         "tacite-mass-editor",
         "yuka.VjQwdU5yUUlpdmxUbjhWa3BFenc4ZGt1NDVLUFZtNm9NdWdOSWc9PQ",
         "openfoodfacts-contributors",
         "swipe-studio",
         "yuka.sY2b0xO6T85zoF3NwEKvllZnctbb-gn-LDr4mHzUyem0FYPXMO5by7b5NKg",
         "kiliweb",
         "packbot",
         "foodless",
         "yuka.sY2b0xO6T85zoF3NwEKvlmBZVPXu-gnlBU3miFTQ-NeSIbDaMdUtu4fLGas",
         "aleene"
      ],
      "countries": "France,United Kingdom",
      "countries_hierarchy": [
         "en:france",
         "en:united-kingdom"
      ],
      "countries_lc": "en",
      "countries_tags": [
         "en:france",
         "en:united-kingdom"
      ],
      "created_t": 1433338177,
      "creator": "kyzh",
      "data_quality_bugs_tags": [],
      "data_quality_errors_tags": [],
      "data_quality_info_tags": [
         "en:packaging-data-incomplete",
         "en:ingredients-percent-analysis-ok",
         "en:carbon-footprint-from-known-ingredients-but-not-from-meat-or-fish",
         "en:ecoscore-extended-data-computed",
         "en:ecoscore-extended-data-less-precise-than-agribalyse",
         "en:food-groups-1-known",
         "en:food-groups-2-known",
         "en:food-groups-3-unknown"
      ],
      "data_quality_tags": [
         "en:packaging-data-incomplete",
         "en:ingredients-percent-analysis-ok",
         "en:carbon-footprint-from-known-ingredients-but-not-from-meat-or-fish",
         "en:ecoscore-extended-data-computed",
         "en:ecoscore-extended-data-less-precise-than-agribalyse",
         "en:food-groups-1-known",
         "en:food-groups-2-known",
         "en:food-groups-3-unknown",
         "en:nutrition-value-very-low-for-category-energy",
         "en:nutrition-value-very-low-for-category-fat",
         "en:nutrition-value-very-high-for-category-sugars",
         "en:vegetarian-label-but-could-not-confirm-for-all-ingredients",
         "en:ecoscore-origins-of-ingredients-origins-are-100-percent-unknown",
         "en:ecoscore-production-system-no-label"
      ],
      "data_quality_warnings_tags": [
         "en:nutrition-value-very-low-for-category-energy",
         "en:nutrition-value-very-low-for-category-fat",
         "en:nutrition-value-very-high-for-category-sugars",
         "en:vegetarian-label-but-could-not-confirm-for-all-ingredients",
         "en:ecoscore-origins-of-ingredients-origins-are-100-percent-unknown",
         "en:ecoscore-production-system-no-label"
      ],
      "data_sources": "App - yuka, Apps, App - Horizon",
      "data_sources_tags": [
         "app-yuka",
         "apps",
         "app-horizon"
      ],
      "debug_param_sorted_langs": [
         "en"
      ],
      "ecoscore_data": {
         "adjustments": {
            "origins_of_ingredients": {
               "aggregated_origins": [
                  {
                     "epi_score": "0",
                     "origin": "en:unknown",
                     "percent": 100,
                     "transportation_score": null
                  }
               ],
               "epi_score": 0,
               "epi_value": -5,
               "origins_from_categories": [
                  "en:unknown"
               ],
               "origins_from_origins_field": [
                  "en:unknown"
               ],
               "transportation_score": 0,
               "transportation_scores": {
                  "ad": 0,
                  "al": 0,
                  "va": 0,
                  "world": 0,
                  "xk": 0
               },
               "transportation_value": 0,
               "transportation_values": {
                  "ad": 0,
                  "ua": 0,
                  "uk": 0,
                  "us": 0,
                  "va": 0,
                  "world": 0,
                  "xk": 0
               },
               "value": -5,
               "values": {
                  "ad": -5,
                  "al": -5,
                  "at": -5,
                  "uk": -5,
                  "us": -5,
                  "va": -5,
                  "world": -5,
                  "xk": -5
               },
               "warning": "origins_are_100_percent_unknown"
            },
            "packaging": {
               "non_recyclable_and_non_biodegradable_materials": 2,
               "packagings": [
                  {
                     "ecoscore_material_score": 0,
                     "ecoscore_shape_ratio": 1,
                     "material": "en:plastic",
                     "non_recyclable_and_non_biodegradable": "maybe",
                     "shape": "en:packet"
                  },
                  {
                     "ecoscore_material_score": 0,
                     "ecoscore_shape_ratio": 1,
                     "material": "en:plastic",
                     "non_recyclable_and_non_biodegradable": "maybe",
                     "shape": "en:packet"
                  }
               ],
               "score": -100,
               "value": -15
            },
            "production_system": {
               "labels": [],
               "value": 0,
               "warning": "no_label"
            },
            "threatened_species": {}
         },
         "agribalyse": {
            "agribalyse_food_code": "4004",
            "co2_agriculture": 0.82655583,
            "co2_consumption": 0,
            "co2_distribution": 0.019537154,
            "co2_packaging": 0.28154442,
            "co2_processing": 0.23156851,
            "co2_total": 1.543669164,
            "co2_transportation": 0.18446325,
            "code": "4004",
            "dqr": "2.45",
            "ef_agriculture": 0.14029442,
            "ef_consumption": 0,
            "ef_distribution": 0.004831936,
            "ef_packaging": 0.02370999,
            "ef_processing": 0.038707917,
            "ef_total": 0.223317319,
            "ef_transportation": 0.015773056,
            "is_beverage": 0,
            "name_en": "Potato crisps",
            "name_fr": "Chips de pommes de terre, standard",
            "score": 87,
            "version": "3.1"
         },
         "grade": "b",
         "grades": {
            "ad": "b",
            "al": "b",
            "tr": "b",
            "ua": "b",
            "uk": "b",
            "us": "b",
            "va": "b",
            "world": "b",
            "xk": "b"
         },
         "missing": {
            "labels": 1,
            "origins": 1
         },
         "missing_data_warning": 1,
         "previous_data": {
            "agribalyse": {
               "agribalyse_food_code": "4004",
               "co2_agriculture": 1.2992636,
               "co2_consumption": 0,
               "co2_distribution": 0.029120657,
               "co2_packaging": 0.28581962,
               "co2_processing": 0.39294234,
               "co2_total": 2.2443641,
               "co2_transportation": 0.23728203,
               "code": "4004",
               "dqr": "2.45",
               "ef_agriculture": 0.18214682,
               "ef_consumption": 0,
               "ef_distribution": 0.0098990521,
               "ef_packaging": 0.021558384,
               "ef_processing": 0.057508389,
               "ef_total": 0.29200269,
               "ef_transportation": 0.020894187,
               "is_beverage": 0,
               "name_en": "Potato crisps",
               "name_fr": "Chips de pommes de terre, standard",
               "score": 78
            },
            "grade": "b",
            "score": 63
         },
         "score": 67,
         "scores": {
            "ad": 67,
            "al": 67,
            "at": 67,
            "va": 67,
            "world": 67,
            "xk": 67
         },
         "status": "known"
      },
      "ecoscore_extended_data": {
         "impact": {
            "ef_single_score_log_stddev": 0.0664290643574977,
            "likeliest_impacts": {
               "Climate_change": 0.0835225930657116,
               "EF_single_score": 0.0132996566234689
            },
            "likeliest_recipe": {
               "en:Oak_smoked_sea_salti_yeast_extract": 0.103505496656251,
               "en:e160c": 0.10350549665625,
               "en:e330": 0.10350549665625,
               "en:flavouring": 0.10350549665625,
               "en:garlic_powder": 0.103505496656251,
               "en:milk": 1.55847864453775,
               "en:onion": 0.15510736429208,
               "en:potato": 69.2208020730349,
               "en:potato_starch": 10.5320407294931,
               "en:rice_flour": 13.8595510001351,
               "en:salt": 1.3345917157533,
               "en:spice": 0.10350549665625,
               "en:sugar": 10.2883618334396,
               "en:sunflower_oil": 14.1645835312727,
               "en:tomato_powder": 0.10350549665625,
               "en:water": 6.24510964041154,
               "en:yeast_powder": 0.103505496656251
            },
            "mass_ratio_uncharacterized": 0.0244618467395455,
            "uncharacterized_ingredients": {
               "impact": [
                  "en:yeast-powder",
                  "en:flavouring",
                  "en:Oak smoked sea salti yeast extract",
                  "en:e160c",
                  "en:e330"
               ],
               "nutrition": [
                  "en:flavouring",
                  "en:Oak smoked sea salti yeast extract"
               ]
            },
            "uncharacterized_ingredients_mass_proportion": {
               "impact": 0.0244618467395455,
               "nutrition": 0.0106506947223728
            },
            "uncharacterized_ingredients_ratio": {
               "impact": 0.3125,
               "nutrition": 0.125
            },
            "warnings": [
               "Fermentation agents are present in the product (en:yeast-powder). Carbohydrates and sugars mass balance will not be considered to estimate potential recipes",
               "The product has a high number of impact uncharacterized ingredients: 31%"
            ]
         }
      },
      "ecoscore_extended_data_version": "4",
      "ecoscore_grade": "b",
      "ecoscore_score": 67,
      "ecoscore_tags": [
         "b"
      ],
      "editors": [
         "kyzh",
         "tacite"
      ],
      "editors_tags": [
         "kiliweb",
         "openfoodfacts-contributors",
         "aleene",
         "tacite-mass-editor",
         "yuka.sY2b0xO6T85zoF3NwEKvlmBZVPXu-gnlBU3miFTQ-NeSIbDaMdUtu4fLGas",
         "kyzh",
         "yuka.VjQwdU5yUUlpdmxUbjhWa3BFenc4ZGt1NDVLUFZtNm9NdWdOSWc9PQ",
         "ecoscore-impact-estimator",
         "tacite",
         "foodless",
         "yuka.sY2b0xO6T85zoF3NwEKvllZnctbb-gn-LDr4mHzUyem0FYPXMO5by7b5NKg",
         "swipe-studio",
         "packbot"
      ],
      "emb_codes": "",
      "emb_codes_20141016": "",
      "emb_codes_orig": "",
      "emb_codes_tags": [],
      "entry_dates_tags": [
         "2015-06-03",
         "2015-06",
         "2015"
      ],
      "expiration_date": "11/05/2016",
      "food_groups": "en:appetizers",
      "food_groups_tags": [
         "en:salty-snacks",
         "en:appetizers"
      ],
      "fruits-vegetables-nuts_100g_estimate": 0,
      "generic_name": "",
      "generic_name_en": "",
      "generic_name_fr": "",
      "generic_name_fr_debug_tags": [],
      "id": "5060292302201",
      "image_front_small_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.200.jpg",
      "image_front_thumb_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.100.jpg",
      "image_front_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.400.jpg",
      "image_ingredients_small_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.200.jpg",
      "image_ingredients_thumb_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.100.jpg",
      "image_ingredients_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.400.jpg",
      "image_nutrition_small_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.200.jpg",
      "image_nutrition_thumb_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.100.jpg",
      "image_nutrition_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.400.jpg",
      "image_small_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.200.jpg",
      "image_thumb_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.100.jpg",
      "image_url": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.400.jpg",
      "images": {
         "1": {
            "sizes": {
               "100": {
                  "h": 74,
                  "w": 100
               },
               "400": {
                  "h": 296,
                  "w": 400
               },
               "full": {
                  "h": 1482,
                  "w": 2000
               }
            },
            "uploaded_t": 1433338177,
            "uploader": "kyzh"
         },
         "2": {
            "sizes": {
               "100": {
                  "h": 74,
                  "w": 100
               },
               "400": {
                  "h": 296,
                  "w": 400
               },
               "full": {
                  "h": 1482,
                  "w": 2000
               }
            },
            "uploaded_t": 1433338194,
            "uploader": "kyzh"
         },
         "3": {
            "sizes": {
               "100": {
                  "h": 74,
                  "w": 100
               },
               "400": {
                  "h": 296,
                  "w": 400
               },
               "full": {
                  "h": 1482,
                  "w": 2000
               }
            },
            "uploaded_t": 1433338203,
            "uploader": "kyzh"
         },
         "4": {
            "sizes": {
               "100": {
                  "h": 74,
                  "w": 100
               },
               "400": {
                  "h": 296,
                  "w": 400
               },
               "full": {
                  "h": 1482,
                  "w": 2000
               }
            },
            "uploaded_t": 1433338215,
            "uploader": "kyzh"
         },
         "5": {
            "sizes": {
               "100": {
                  "h": 74,
                  "w": 100
               },
               "400": {
                  "h": 296,
                  "w": 400
               },
               "full": {
                  "h": 1482,
                  "w": 2000
               }
            },
            "uploaded_t": 1433338229,
            "uploader": "kyzh"
         },
         "6": {
            "sizes": {
               "100": {
                  "h": 74,
                  "w": 100
               },
               "400": {
                  "h": 296,
                  "w": 400
               },
               "full": {
                  "h": 1482,
                  "w": 2000
               }
            },
            "uploaded_t": 1433338245,
            "uploader": "kyzh"
         },
         "7": {
            "sizes": {
               "100": {
                  "h": 43,
                  "w": 100
               },
               "400": {
                  "h": 171,
                  "w": 400
               },
               "full": {
                  "h": 846,
                  "w": 1974
               }
            },
            "uploaded_t": "1508236270",
            "uploader": "kiliweb"
         },
         "8": {
            "sizes": {
               "100": {
                  "h": 100,
                  "w": 82
               },
               "400": {
                  "h": 400,
                  "w": 326
               },
               "full": {
                  "h": 1140,
                  "w": 930
               }
            },
            "uploaded_t": 1620505759,
            "uploader": "kiliweb"
         },
         "9": {
            "sizes": {
               "100": {
                  "h": 56,
                  "w": 100
               },
               "400": {
                  "h": 225,
                  "w": 400
               },
               "full": {
                  "h": 569,
                  "w": 1011
               }
            },
            "uploaded_t": 1656075071,
            "uploader": "kiliweb"
         },
         "front": {
            "geometry": "1421x1825-0-95",
            "imgid": "1",
            "normalize": "false",
            "rev": "9",
            "sizes": {
               "100": {
                  "h": 100,
                  "w": 78
               },
               "200": {
                  "h": 200,
                  "w": 156
               },
               "400": {
                  "h": 400,
                  "w": 311
               },
               "full": {
                  "h": 1825,
                  "w": 1421
               }
            },
            "white_magic": "true"
         },
         "front_en": {
            "angle": 0,
            "coordinates_image_size": "full",
            "geometry": "0x0--1--1",
            "imgid": "8",
            "normalize": null,
            "rev": "23",
            "sizes": {
               "100": {
                  "h": 100,
                  "w": 82
               },
               "200": {
                  "h": 200,
                  "w": 163
               },
               "400": {
                  "h": 400,
                  "w": 326
               },
               "full": {
                  "h": 1140,
                  "w": 930
               }
            },
            "white_magic": null,
            "x1": "-1",
            "x2": "-1",
            "y1": "-1",
            "y2": "-1"
         },
         "ingredients": {
            "geometry": "1730x526-125-304",
            "imgid": "5",
            "normalize": "false",
            "ocr": 1,
            "orientation": "0",
            "rev": "11",
            "sizes": {
               "100": {
                  "h": 30,
                  "w": 100
               },
               "200": {
                  "h": 61,
                  "w": 200
               },
               "400": {
                  "h": 122,
                  "w": 400
               },
               "full": {
                  "h": 526,
                  "w": 1730
               }
            },
            "white_magic": "false"
         },
         "ingredients_en": {
            "geometry": "1730x526-125-304",
            "imgid": "5",
            "normalize": "false",
            "ocr": 1,
            "orientation": "0",
            "rev": "11",
            "sizes": {
               "100": {
                  "h": 30,
                  "w": 100
               },
               "200": {
                  "h": 61,
                  "w": 200
               },
               "400": {
                  "h": 122,
                  "w": 400
               },
               "full": {
                  "h": 526,
                  "w": 1730
               }
            },
            "white_magic": "false"
         },
         "nutrition": {
            "geometry": "1131x920-150-794",
            "imgid": "3",
            "normalize": "false",
            "ocr": 1,
            "orientation": "0",
            "rev": "10",
            "sizes": {
               "100": {
                  "h": 81,
                  "w": 100
               },
               "200": {
                  "h": 163,
                  "w": 200
               },
               "400": {
                  "h": 325,
                  "w": 400
               },
               "full": {
                  "h": 920,
                  "w": 1131
               }
            },
            "white_magic": "false"
         },
         "nutrition_en": {
            "angle": 0,
            "coordinates_image_size": "full",
            "geometry": "0x0--1--1",
            "imgid": "9",
            "normalize": null,
            "rev": "32",
            "sizes": {
               "100": {
                  "h": 56,
                  "w": 100
               },
               "200": {
                  "h": 113,
                  "w": 200
               },
               "400": {
                  "h": 225,
                  "w": 400
               },
               "full": {
                  "h": 569,
                  "w": 1011
               }
            },
            "white_magic": null,
            "x1": "-1",
            "x2": "-1",
            "y1": "-1",
            "y2": "-1"
         }
      },
      "informers_tags": [
         "kyzh",
         "tacite",
         "tacite-mass-editor",
         "yuka.VjQwdU5yUUlpdmxUbjhWa3BFenc4ZGt1NDVLUFZtNm9NdWdOSWc9PQ",
         "openfoodfacts-contributors",
         "aleene"
      ],
      "ingredients": [
         {
            "ciqual_food_code": "4003",
            "id": "en:potato",
            "percent": 54,
            "percent_estimate": 54,
            "percent_max": 54,
            "percent_min": 54,
            "processing": "en:dried",
            "rank": 1,
            "text": "potatoes",
            "vegan": "yes",
            "vegetarian": "yes"
         },
         {
            "ciqual_food_code": "17440",
            "from_palm_oil": "no",
            "id": "en:sunflower-oil",
            "percent_estimate": 28.75,
            "percent_max": 46,
            "percent_min": 11.5,
            "rank": 2,
            "text": "sunflower oil",
            "vegan": "yes",
            "vegetarian": "yes"
         },
         {
            "has_sub_ingredients": "yes",
            "id": "en:coating",
            "percent_estimate": 8.625,
            "percent_max": 33.3333333333333,
            "percent_min": 0,
            "rank": 3,
            "text": "seasoning",
            "vegan": "maybe",
            "vegetarian": "maybe"
         },
         {
            "ciqual_food_code": "9520",
            "id": "en:rice-flour",
            "percent_estimate": 4.3125,
            "percent_max": 17.25,
            "percent_min": 0,
            "rank": 4,
            "text": "rice flour",
            "vegan": "yes",
            "vegetarian": "yes"
         },
         {
            "id": "en:potato-starch",
            "percent_estimate": 4.3125,
            "percent_max": 11.5,
            "percent_min": 0,
            "rank": 5,
            "text": "potato starch",
            "vegan": "yes",
            "vegetarian": "yes"
         },
         {
            "id": "en:sugar",
            "percent_estimate": 4.3125,
            "percent_max": 8.7,
            "percent_min": 0,
            "text": "sugar",
            "vegan": "yes",
            "vegetarian": "yes"
         },
         {
            "has_sub_ingredients": "yes",
            "id": "en:whey-powder",
            "percent_estimate": 2.15625,
            "percent_max": 8.7,
            "percent_min": 0,
            "text": "whey powder",
            "vegan": "no",
            "vegetarian": "maybe"
         },
         {
            "ciqual_food_code": "11058",
            "id": "en:salt",
            "percent_estimate": 1.05,
            "percent_max": 2.1,
            "percent_min": 0,
            "text": "salt",
            "vegan": "yes",
            "vegetarian": "yes"
         },
         {
            "ciqual_food_code": "20034",
            "id": "en:onion",
            "percent_estimate": 0.553125,
            "percent_max": 2.1,
            "percent_min": 0,
            "processing": "en:powder",
            "text": "onion",
            "vegan": "yes",
            "vegetarian": "yes"
         },
         {
            "id": "en:yeast-powder",
            "percent_estimate": 0.2765625,
            "percent_max": 2.1,
            "percent_min": 0,
            "text": "yeast powder",
            "vegan": "yes",
            "vegetarian": "yes"
         },
         {
            "ciqual_food_code": "11000",
            "id": "en:garlic",
            "percent_estimate": 0.13828125,
            "percent_max": 2.1,
            "percent_min": 0,
            "processing": "en:powder",
            "text": "garlic",
            "vegan": "yes",
            "vegetarian": "yes"
         },
         {
            "ciqual_food_code": "20047",
            "id": "en:tomato",
            "percent_estimate": 0.0691406250000002,
            "percent_max": 2.1,
            "percent_min": 0,
            "processing": "en:powder",
            "text": "tomato",
            "vegan": "yes",
            "vegetarian": "yes"
         },
         {
            "id": "en:oak-smoked-sea-salti-yeast-extract",
            "percent_estimate": 0.0345703124999996,
            "percent_max": 2.1,
            "percent_min": 0,
            "text": "Oak smoked sea salti yeast extract"
         },
         {
            "id": "en:flavouring",
            "percent_estimate": 0.0172851562499998,
            "percent_max": 2.1,
            "percent_min": 0,
            "text": "flavourings",
            "vegan": "maybe",
            "vegetarian": "maybe"
         },
         {
            "id": "en:spice",
            "percent_estimate": 0.00864257812500036,
            "percent_max": 2.1,
            "percent_min": 0,
            "text": "spices",
            "vegan": "yes",
            "vegetarian": "yes"
         },
         {
            "has_sub_ingredients": "yes",
            "id": "en:acid",
            "percent_estimate": 0.00432128906250018,
            "percent_max": 2.1,
            "percent_min": 0,
            "text": "acid"
         },
         {
            "has_sub_ingredients": "yes",
            "id": "en:colour",
            "percent_estimate": 0.00432128906249929,
            "percent_max": 2.1,
            "percent_min": 0,
            "text": "colour"
         },
         {
            "id": "en:milk",
            "percent_estimate": 2.15625,
            "percent_max": 8.7,
            "percent_min": 0,
            "text": "milk",
            "vegan": "no",
            "vegetarian": "yes"
         },
         {
            "id": "en:e330",
            "percent_estimate": 0.00432128906250018,
            "percent_max": 2.1,
            "percent_min": 0,
            "text": "citric acid",
            "vegan": "yes",
            "vegetarian": "yes"
         },
         {
            "id": "en:e160c",
            "percent_estimate": 0.00432128906249929,
            "percent_max": 2.1,
            "percent_min": 0,
            "text": "paprika extract",
            "vegan": "yes",
            "vegetarian": "yes"
         }
      ],
      "ingredients_analysis": {
         "en:non-vegan": [
            "en:whey-powder",
            "en:milk"
         ],
         "en:palm-oil-content-unknown": [
            "en:oak-smoked-sea-salti-yeast-extract"
         ],
         "en:vegan-status-unknown": [
            "en:oak-smoked-sea-salti-yeast-extract"
         ],
         "en:vegetarian-status-unknown": [
            "en:oak-smoked-sea-salti-yeast-extract"
         ]
      },
      "ingredients_analysis_tags": [
         "en:palm-oil-free",
         "en:non-vegan",
         "en:vegetarian"
      ],
      "ingredients_debug": [
         "54% dried potatoes",
         ",",
         null,
         null,
         null,
         " sunflower oil",
         ",",
         null,
         null,
         null,
         " seasoning ",
         "(",
         "(",
         null,
         null,
         "sugar",
         ",",
         null,
         null,
         null,
         " whey powder ",
         "[",
         "[",
         null,
         null,
         "milk]",
         ",",
         null,
         null,
         null,
         " salt",
         ",",
         null,
         null,
         null,
         " onion powder",
         ",",
         null,
         null,
         null,
         " yeast powder",
         ",",
         null,
         null,
         null,
         " garlic powder",
         ",",
         null,
         null,
         null,
         " tomato powder",
         ",",
         null,
         null,
         null,
         " Oak smoked sea salti yeast extract",
         ",",
         null,
         null,
         null,
         " flavourings",
         ",",
         null,
         null,
         null,
         " spices",
         ",",
         null,
         null,
         null,
         " acid",
         ":",
         ":",
         null,
         null,
         " citric acid",
         ",",
         null,
         null,
         null,
         " colour",
         ":",
         ":",
         null,
         null,
         " paprika extract)",
         ",",
         null,
         null,
         null,
         " rice flour",
         ",",
         null,
         null,
         null,
         " potato starch."
      ],
      "ingredients_from_or_that_may_be_from_palm_oil_n": 0,
      "ingredients_from_palm_oil_n": 0,
      "ingredients_from_palm_oil_tags": [],
      "ingredients_hierarchy": [
         "en:potato",
         "en:vegetable",
         "en:root-vegetable",
         "en:tuber",
         "en:sunflower-oil",
         "en:oil-and-fat",
         "en:spice",
         "en:condiment",
         "en:acid",
         "en:colour",
         "en:milk",
         "en:e330",
         "en:e160c"
      ],
      "ingredients_ids_debug": [
         "54-dried-potatoes",
         "sunflower-oil",
         "seasoning",
         "sugar",
         "colour",
         "paprika-extract",
         "rice-flour",
         "potato-starch"
      ],
      "ingredients_n": 20,
      "ingredients_n_tags": [
         "20",
         "11-20"
      ],
      "ingredients_original_tags": [
         "en:potato",
         "en:sunflower-oil",
         "en:coating",
         "en:rice-flour",
         "en:potato-starch",
         "en:sugar",
         "en:whey-powder",
         "en:salt",
         "en:onion",
         "en:yeast-powder",
         "en:garlic",
         "en:tomato",
         "en:oak-smoked-sea-salti-yeast-extract",
         "en:flavouring",
         "en:spice",
         "en:acid",
         "en:colour",
         "en:milk",
         "en:e330",
         "en:e160c"
      ],
      "ingredients_percent_analysis": 1,
      "ingredients_tags": [
         "en:potato",
         "en:vegetable",
         "en:root-vegetable",
         "en:milk",
         "en:e330",
         "en:e160c"
      ],
      "ingredients_text": "54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [milk], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.",
      "ingredients_text_debug": "54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [milk], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.",
      "ingredients_text_debug_tags": [],
      "ingredients_text_en": "54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [milk], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.",
      "ingredients_text_fr": "",
      "ingredients_text_fr_debug_tags": [],
      "ingredients_text_with_allergens": "54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [<span class=\"allergen\">milk</span>], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.",
      "ingredients_text_with_allergens_en": "54% dried potatoes, sunflower oil, seasoning (sugar, whey powder [<span class=\"allergen\">milk</span>], salt, onion powder, yeast powder, garlic powder, tomato powder, Oak smoked sea salti yeast extract, flavourings, spices, acid: citric acid, colour: paprika extract), rice flour, potato starch.",
      "ingredients_that_may_be_from_palm_oil_n": 0,
      "ingredients_that_may_be_from_palm_oil_tags": [],
      "ingredients_with_specified_percent_n": 1,
      "ingredients_with_specified_percent_sum": 54,
      "ingredients_with_unspecified_percent_n": 15,
      "ingredients_with_unspecified_percent_sum": 46,
      "ingredients_without_ciqual_codes": [
         "en:e160c",
         "en:e330",
         "en:flavouring",
         "en:milk",
         "en:oak-smoked-sea-salti-yeast-extract",
         "en:potato-starch",
         "en:spice",
         "en:sugar",
         "en:yeast-powder"
      ],
      "ingredients_without_ciqual_codes_n": 9,
      "interface_version_created": "20120622",
      "interface_version_modified": "20190830",
      "known_ingredients_n": 36,
      "labels": "Vegetarian, No preservatives, No artificial anything",
      "labels_hierarchy": [
         "en:vegetarian",
         "en:no-preservatives",
         "en:No artificial anything"
      ],
      "labels_lc": "en",
      "labels_old": "Vegetarian,No preservatives,No artificial anything",
      "labels_tags": [
         "en:vegetarian",
         "en:no-preservatives",
         "en:no-artificial-anything"
      ],
      "lang": "en",
      "languages": {
         "en:english": 5
      },
      "languages_codes": {
         "en": 5
      },
      "languages_hierarchy": [
         "en:english"
      ],
      "languages_tags": [
         "en:english",
         "en:1"
      ],
      "last_edit_dates_tags": [
         "2023-03-24",
         "2023-03",
         "2023"
      ],
      "last_editor": "aleene",
      "last_image_dates_tags": [
         "2022-06-24",
         "2022-06",
         "2022"
      ],
      "last_image_t": 1656075071,
      "last_modified_by": "aleene",
      "last_modified_t": 1679645675,
      "lc": "en",
      "link": "",
      "main_countries_tags": [],
      "manufacturing_places": "European Union",
      "manufacturing_places_tags": [
         "european-union"
      ],
      "max_imgid": "9",
      "minerals_prev_tags": [],
      "minerals_tags": [],
      "misc_tags": [
         "en:nutriscore-computed",
         "en:nutrition-fruits-vegetables-nuts-from-category",
         "en:nutrition-fruits-vegetables-nuts-from-category-en-potato-crisps-in-sunflower-oil",
         "en:nutrition-fruits-vegetables-legumes-from-category",
         "en:nutrition-fruits-vegetables-legumes-from-category-en-potato-crisps-in-sunflower-oil",
         "en:nutriscore-2021-same-as-2023",
         "en:nutriscore-2021-d-2023-d",
         "en:packagings-number-of-components-2",
         "en:packagings-not-complete",
         "en:packagings-not-empty-but-not-complete",
         "en:packagings-not-empty",
         "en:ecoscore-extended-data-computed",
         "en:ecoscore-extended-data-version-4",
         "en:ecoscore-missing-data-warning",
         "en:ecoscore-missing-data-labels",
         "en:ecoscore-missing-data-origins",
         "en:ecoscore-computed",
         "en:ecoscore-changed"
      ],
      "no_nutrition_data": "",
      "nova_group": 4,
      "nova_group_debug": "",
      "nova_groups": "4",
      "nova_groups_markers": {
         "3": [
            [
               "categories",
               "en:salty-snacks"
            ],
            [
               "ingredients",
               "en:salt"
            ],
            [
               "ingredients",
               "en:starch"
            ],
            [
               "ingredients",
               "en:sugar"
            ],
            [
               "ingredients",
               "en:vegetable-oil"
            ]
         ],
         "4": [
            [
               "additives",
               "en:e160c"
            ],
            [
               "ingredients",
               "en:colour"
            ],
            [
               "ingredients",
               "en:flavouring"
            ],
            [
               "ingredients",
               "en:whey"
            ]
         ]
      },
      "nova_groups_tags": [
         "en:4-ultra-processed-food-and-drink-products"
      ],
      "nucleotides_prev_tags": [],
      "nucleotides_tags": [],
      "nutrient_levels": {
         "fat": "moderate",
         "salt": "high",
         "saturated-fat": "low",
         "sugars": "moderate"
      },
      "nutrient_levels_tags": [
         "en:fat-in-moderate-quantity",
         "en:saturated-fat-in-low-quantity",
         "en:sugars-in-moderate-quantity",
         "en:salt-in-high-quantity"
      ],
      "nutriments": {
         "carbohydrates": 62,
         "carbohydrates_100g": 62,
         "carbohydrates_serving": 14.3,
         "carbohydrates_unit": "g",
         "carbohydrates_value": 62,
         "carbon-footprint-from-known-ingredients_100g": 32.4,
         "carbon-footprint-from-known-ingredients_product": 7.45,
         "salt": 2.1,
         "salt_100g": 2.1,
         "salt_serving": 0.483,
         "salt_unit": "g",
         "salt_value": 2.1,
         "saturated-fat": 1.4,
         "saturated-fat_100g": 1.4,
         "saturated-fat_serving": 0.322,
         "saturated-fat_unit": "g",
         "saturated-fat_value": 1.4,
         "sodium": 0.84,
         "sodium_100g": 0.84,
         "sodium_serving": 0.193,
         "sodium_unit": "g",
         "sodium_value": 0.84,
         "sugars": 8.7,
         "sugars_100g": 8.7,
         "sugars_serving": 2,
         "sugars_unit": "g",
         "sugars_value": 8.7
      },
      "nutriscore": {
         "2021": {
            "category_available": 1,
            "data": {
               "energy": 1759,
               "energy_points": 5,
               "energy_value": 1759,
               "fiber": 3.9,
               "fiber_points": 4,
               "sugars": 8.7,
               "sugars_points": 1,
               "sugars_value": 8.7
            },
            "grade": "d",
            "nutrients_available": 1,
            "nutriscore_applicable": 1,
            "nutriscore_computed": 1,
            "score": 12
         },
         "2023": {
            "category_available": 1,
            "data": {
               "count_proteins": 0,
               "count_proteins_reason": "negative_points_more_than_11",
               "energy": 1759,
               "is_red_meat_product": 0,
               "is_water": 0,
               "negative_nutrients": [
                  "energy",
                  "sugars",
                  "saturated_fat",
                  "salt",
                  "non_nutritive_sweeteners"
               ],
               "negative_points": 18,
               "positive_nutrients": [
                  "fruits_vegetables_legumes",
                  "fiber"
               ],
               "positive_points": 1,
               "proteins": 5.7,
               "proteins_points": 2,
               "salt": 2.1,
               "salt_points": 10,
               "saturated_fat": 1.4,
               "saturated_fat_points": 1,
               "sugars": 8.7,
               "sugars_points": 2
            },
            "grade": "d",
            "nutrients_available": 1,
            "nutriscore_applicable": 1,
            "nutriscore_computed": 1,
            "score": 17
         }
      },
      "nutriscore_2021_tags": [
         "d"
      ],
      "nutriscore_2023_tags": [
         "d"
      ],
      "nutriscore_data": {
         "energy": 1759,
         "energy_points": 5,
         "energy_value": 1759,
         "fiber": 3.9,
         "fiber_points": 4,
         "fiber_value": 3.9,
         "fruits_vegetables_nuts_colza_walnut_olive_oils": "0",
         "fruits_vegetables_nuts_colza_walnut_olive_oils_points": 0,
         "fruits_vegetables_nuts_colza_walnut_olive_oils_value": 0,
         "grade": "d",
         "is_beverage": 0,
         "is_cheese": 0,
         "is_fat": 0,
         "is_water": 0,
         "negative_points": 16,
         "positive_points": 4,
         "proteins": 5.7,
         "proteins_points": 3,
         "proteins_value": 5.7,
         "saturated_fat": 1.4,
         "saturated_fat_points": 1,
         "saturated_fat_value": 1.4,
         "score": 12,
         "sodium": 840,
         "sodium_points": 9,
         "sodium_value": 840,
         "sugars": 8.7,
         "sugars_points": 1,
         "sugars_value": 8.7
      },
      "nutriscore_grade": "d",
      "nutriscore_score": 12,
      "nutriscore_score_opposite": -12,
      "nutriscore_tags": [
         "d"
      ],
      "nutriscore_version": "2021",
      "nutrition_data": "on",
      "nutrition_data_per": "100g",
      "nutrition_data_prepared": "",
      "nutrition_data_prepared_per": "100g",
      "nutrition_grade_fr": "d",
      "nutrition_grades": "d",
      "nutrition_grades_tags": [
         "d"
      ],
      "nutrition_score_beverage": 0,
      "nutrition_score_debug": "",
      "obsolete": "",
      "obsolete_since_date": "",
      "origin": "",
      "origin_en": "",
      "origins": "",
      "origins_hierarchy": [],
      "origins_lc": "en",
      "origins_old": "",
      "origins_tags": [],
      "other_nutritional_substances_tags": [],
      "packaging": "Plastic,Mixed plastic film-packet",
      "packaging_hierarchy": [
         "en:plastic",
         "en:Mixed plastic film-packet"
      ],
      "packaging_lc": "en",
      "packaging_materials_tags": [
         "en:plastic"
      ],
      "packaging_old": "Plastic, Mixed plastic-packet",
      "packaging_old_before_taxonomization": "Plastic, en:mixed plastic-packet",
      "packaging_recycling_tags": [],
      "packaging_shapes_tags": [
         "en:packet"
      ],
      "packaging_tags": [
         "en:plastic",
         "en:mixed-plastic-film-packet"
      ],
      "packaging_text": "",
      "packaging_text_en": "",
      "packagings": [
         {
            "material": "en:plastic",
            "shape": "en:packet"
         },
         {
            "material": "en:plastic",
            "shape": "en:packet"
         }
      ],
      "packagings_complete": 0,
      "packagings_materials": {
         "all": {},
         "en:plastic": {}
      },
      "packagings_n": 2,
      "photographers_tags": [
         "kyzh",
         "kiliweb"
      ],
      "pnns_groups_1": "Salty snacks",
      "pnns_groups_1_tags": [
         "salty-snacks",
         "known"
      ],
      "pnns_groups_2": "Appetizers",
      "pnns_groups_2_tags": [
         "appetizers",
         "known"
      ],
      "popularity_key": 21900000007,
      "popularity_tags": [
         "bottom-25-percent-scans-2019",
         "bottom-20-percent-scans-2019",
         "top-100000-hk-scans-2022",
         "top-10000-us-scans-2022",
         "top-50000-us-scans-2022",
         "top-100000-us-scans-2022"
      ],
      "product_name": "Barbeque Potato Chips",
      "product_name_en": "Barbeque Potato Chips",
      "product_name_fr": "",
      "product_name_fr_debug_tags": [],
      "product_quantity": "23",
      "purchase_places": "",
      "purchase_places_tags": [],
      "quantity": "23 g",
      "removed_countries_tags": [],
      "rev": 33,
      "scans_n": 6,
      "selected_images": {
         "front": {
            "display": {
               "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.400.jpg"
            },
            "small": {
               "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.200.jpg"
            },
            "thumb": {
               "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/front_en.23.100.jpg"
            }
         },
         "ingredients": {
            "display": {
               "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.400.jpg"
            },
            "small": {
               "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.200.jpg"
            },
            "thumb": {
               "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/ingredients_en.11.100.jpg"
            }
         },
         "nutrition": {
            "display": {
               "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.400.jpg"
            },
            "small": {
               "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.200.jpg"
            },
            "thumb": {
               "en": "https://images.openfoodfacts.org/images/products/506/029/230/2201/nutrition_en.32.100.jpg"
            }
         }
      },
      "serving_quantity": "23",
      "serving_size": "23 g",
      "sortkey": 1535456524,
      "states": "en:to-be-completed, en:nutrition-facts-completed, en:ingredients-completed, en:expiration-date-completed, en:packaging-code-to-be-completed, en:characteristics-to-be-completed, en:origins-to-be-completed, en:categories-completed, en:brands-completed, en:packaging-completed, en:quantity-completed, en:product-name-completed, en:photos-to-be-validated, en:packaging-photo-to-be-selected, en:nutrition-photo-selected, en:ingredients-photo-selected, en:front-photo-selected, en:photos-uploaded",
      "states_hierarchy": [
         "en:to-be-completed",
         "en:nutrition-facts-completed",
         "en:ingredients-completed",
         "en:ingredients-photo-selected",
         "en:front-photo-selected",
         "en:photos-uploaded"
      ],
      "states_tags": [
         "en:to-be-completed",
         "en:nutrition-facts-completed",
         "en:ingredients-completed",
         "en:ingredients-photo-selected",
         "en:front-photo-selected",
         "en:photos-uploaded"
      ],
      "stores": "",
      "stores_tags": [],
      "teams": "swipe-studio",
      "teams_tags": [
         "swipe-studio"
      ],
      "traces": "",
      "traces_from_ingredients": "",
      "traces_from_user": "(en) ",
      "traces_hierarchy": [],
      "traces_lc": "en",
      "traces_tags": [],
      "unique_scans_n": 4,
      "unknown_ingredients_n": 1,
      "unknown_nutrients_tags": [],
      "update_key": "eco20231129",
      "vitamins_prev_tags": [],
      "vitamins_tags": [],
      "weighers_tags": []
   },
   "status": 1,
   "status_verbose": "product found"
}


 Non-default options:
# settings = {"genpk":false,"drop":true}

*/