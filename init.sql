CREATE TABLE public.jobs (
    id integer PRIMARY KEY,
    title text,
    longDesc text
);

CREATE TABLE candidates (
    id integer PRIMARY KEY,
    candidateName text,
    skill text[]
);

INSERT INTO public.jobs (id, title, longDesc) VALUES 
    (1, 'Developer', 'Java required, R nice to have'),
    (2, 'Manager', 'Organisation required'),
    (3, 'Analyst', 'Power BI');

INSERT INTO candidates (id, candidateName, skill) VALUES
    (1, 'Asterix', ARRAY ['Quick thinking', 'Roman fighting']),
    (2, 'Obelix', ARRAY ['Roman fighting', 'Super strength', 'Menhir production']),
    (3, 'Getafix', ARRAY ['Healing', 'Potion brewing']);
