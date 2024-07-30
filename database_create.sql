CREATE OR REPLACE PROCEDURE setup_db()
language sql
as $$
DROP TABLE IF EXISTS athlete;
DROP TABLE IF EXISTS activity;
DROP TABLE IF EXISTS stream;

CREATE TABLE public.athlete (
    id bigint NOT NULL,
    client_id integer,
    city character varying(64),
    country character varying(64),
    created_at timestamp without time zone,
    firstname character varying(64),
    lastname character varying(64),
    premium Boolean,
    profile character varying(256),
    profile_medium character varying(256),
    sex char,
    updated_at timestamp without time zone,
    weight float8,
    max_heartrate integer,
    dateofbirth timestamp without time zone,
    PRIMARY KEY (id, updated_at)
);

ALTER TABLE public.athlete OWNER TO pi;

CREATE TABLE public.activity (
    id bigint NOT NULL,
    athlete_id bigint NOT NULL,
    description character varying(256),
    start_date timestamp without time zone,
    distance double precision,
    average_speed double precision,
    average_watts double precision,
    average_cadence double precision,
    average_heartrate double precision,
    weighted_average_watts double precision,
    kilojoules double precision,
    workout_type character varying(20),
    max_speed double precision,
    max_watts double precision,
    max_heartrate double precision,
    elev_low double precision,
    elev_high double precision,
    total_elevation_gain double precision,
    start_latlng character varying(32),
    moving_time double precision,
    device_name character varying(64),
    device_watts character varying(64),
    sport_type character varying(20),
    path_gpx character varying(256),
    PRIMARY KEY (id)
);

ALTER TABLE public.activity OWNER TO pi;

CREATE TABLE public.stream (
    id SERIAL NOT NULL PRIMARY KEY,
    activity_id bigint NOT NULL,
    "time" integer,
    watts double precision,
    moving boolean,
    latlng character varying(32),
    velocity_smooth double precision,
    grade_smooth double precision,
    cadence double precision,
    distance double precision,
    heartrate double precision,
    altitude double precision,
    PRIMARY KEY (id)
);

ALTER TABLE public.stream OWNER TO pi;

CREATE TABLE public.rtss (
    id SERIAL NOT NULL PRIMARY KEY,
    date date,
    rtss double precision,
    ctl double precision,
    atl double precision,
    tsb double precision,
    PRIMARY KEY (id)
);

ALTER TABLE public.rtss OWNER TO pi;
$$;