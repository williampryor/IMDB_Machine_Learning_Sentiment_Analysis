-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/3oPzdh
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Movie_info" (
    "movie_id" VARCHAR   NOT NULL,
    "movie_title" VARCHAR   NOT NULL,
    "rating" DECIMAL   NOT NULL,
    "pos_neg" INT   NOT NULL,
    "nreviews" INT   NOT NULL,
    CONSTRAINT "pk_Movie_info" PRIMARY KEY (
        "movie_id"
     )
);

CREATE TABLE "Genre_info" (
    "movie_id" VARCHAR   NOT NULL,
    "Action" VARCHAR   NOT NULL,
    "Adventure" VARCHAR   NOT NULL,
    "Animation" VARCHAR   NOT NULL,
    "Biography" VARCHAR   NOT NULL,
    "Comedy" VARCHAR   NOT NULL,
    "Crime" VARCHAR   NOT NULL,
    "Documentary" VARCHAR   NOT NULL,
    "Drama" VARCHAR   NOT NULL,
    "Family" VARCHAR   NOT NULL,
    "Fantasy" VARCHAR   NOT NULL,
    "Film_Noir" VARCHAR   NOT NULL,
    "Game_Show" VARCHAR   NOT NULL,
    "History" VARCHAR   NOT NULL,
    "Horror" VARCHAR   NOT NULL,
    "Music" VARCHAR   NOT NULL,
    "Musical" VARCHAR   NOT NULL,
    "Mystery" VARCHAR   NOT NULL,
    "News" VARCHAR   NOT NULL,
    "Reality_TV" VARCHAR   NOT NULL,
    "Romance" VARCHAR   NOT NULL,
    "Sci_Fi" VARCHAR   NOT NULL,
    "Sport" VARCHAR   NOT NULL,
    "Talk_Show" VARCHAR   NOT NULL,
    "Thriller" VARCHAR   NOT NULL,
    "War" VARCHAR   NOT NULL,
    "Western" VARCHAR   NOT NULL
);

CREATE TABLE "Review_info" (
    "movie_id" VARCHAR   NOT NULL,
    "rating_ind" DECIMAL   NOT NULL,
    "pos_neg_ind" INT   NOT NULL,
    "rating_text" VARCHAR   NOT NULL
);

ALTER TABLE "Genre_info" ADD CONSTRAINT "fk_Genre_info_movie_id" FOREIGN KEY("movie_id")
REFERENCES "Movie_info" ("movie_id");

ALTER TABLE "Review_info" ADD CONSTRAINT "fk_Review_info_movie_id" FOREIGN KEY("movie_id")
REFERENCES "Movie_info" ("movie_id");

