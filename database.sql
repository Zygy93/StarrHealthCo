CREATE TABLE "users" (
  "id" serial primary key,
  "username" varchar(80) not null UNIQUE,
  "password" varchar(240) not null,
  "user_role" INT
);

CREATE TABLE "student_bio" (
	"student_id" serial primary key,
	"id" int REFERENCES users ON DELETE CASCADE not null,
	"coach_id" int REFERENCES coach_bio,
	"disclaimer" boolean,
	"first_name" char(25),
	"last_name" char(30),
	"date_of_birth" date,
	"relationship_status" char(25),
	"skype_id" varchar(40),
	"email" varchar(50),
	"phone_number" bigint,
	"school_name" varchar(40),
	"school_code" varchar(10),
	"sessions_used" int,
	"total_sessions" int,
	"primary_goal" char(20),
	"other_goals" varchar(500),
	"other_barriers" varchar(500),
	"other_professionals" boolean,
	"other_professionals_explanation" varchar(250),
	"other_information" boolean,
	"other_information_explanation" varchar(500),
    "student_bio" varchar(500)
);

CREATE TABLE "barriers" (
	"barrier_id" serial primary key,
	"barrier_name" varchar(100) not null
);

CREATE TABLE "user_barriers" (
	"id" int REFERENCES users ON DELETE CASCADE not null,
	"barrier_id" int REFERENCES barriers ON DELETE CASCADE not null
);

CREATE TABLE "coach_bio" (
	"coach_id" serial primary key,
	"id" int REFERENCES users ON DELETE CASCADE not null,
	"first_name" char(25),
    "last_name" char(30),
	"email" varchar(50),
	"job_title" char(30),
	"specialties" varchar(500),
	"certifications" varchar(500),
	"coach_bio" varchar(500),
	"coach_photo" varchar(75)
);