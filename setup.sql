CREATE TABLE IF NOT EXISTS jsa (
  id serial PRIMARY KEY,
  tugas text NOT NULL,
  pembuat text,
  pengawas text,
  atasan text,
  klasifikasi text NOT NULL,
  tanggal date,
  alat text,
  lokasi text,
  dept text,
  langkah integer,
  crew text,
  created_at timestamp NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS jsa_file (
  id serial PRIMARY KEY,
  jsa_id integer NOT NULL REFERENCES jsa(id) ON DELETE CASCADE,
  mime text,
  nama text,
  data text NOT NULL
);
