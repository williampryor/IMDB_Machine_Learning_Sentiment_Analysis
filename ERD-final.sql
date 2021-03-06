-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/3oPzdh
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Movie_info" (
    "movie_id" VARCHAR   NOT NULL,
    "movie_title" VARCHAR   NOT NULL,
    "rating" VARCHAR   NOT NULL,
    "nreviews" VARCHAR   NOT NULL,
    "genre1" VARCHAR   NOT NULL,
    "genre2" VARCHAR   NOT NULL,
    "genre3" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Movie_info" PRIMARY KEY (
        "movie_id"
     )
);

CREATE TABLE "Review_info" (
    "movie_id" VARCHAR   NOT NULL,
    "rating_ind" VARCHAR   NOT NULL,
    "rating_text" VARCHAR   NOT NULL
);

ALTER TABLE "Review_info" ADD CONSTRAINT "fk_Review_info_movie_id" FOREIGN KEY("movie_id")
REFERENCES "Movie_info" ("movie_id");

