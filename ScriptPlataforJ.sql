/* Create Tables */

CREATE TABLE "jugador"
(
	"id" integer NOT NULL,
	"nickname" varchar(25)	 NOT NULL,
	"password" varchar(50)	 NOT NULL,
	"nombre" varchar(50)	 NOT NULL,
	"apellido" varchar(50)	 NOT NULL,
	"email" varchar(50)	 NOT NULL,
	"avatar" varchar(150)	 NULL
)
;

CREATE TABLE "juego"
(
	"id" integer NOT NULL,
	"nombre" varchar(50)	 NOT NULL,
	"descripcion" varchar(4000)	 NOT NULL,
	"portada" varchar(150)	 NOT NULL,
	"n_jugadores" numeric(2) NOT NULL,
	"pegi" integer NOT NULL
)
;

CREATE TABLE "categoria"
(
	"id" integer NOT NULL,
	"nombre" varchar(50)	 NOT NULL,
	"descripcion" varchar(4000)	 NOT NULL
)
;

CREATE TABLE "juego_categoria"
(
	"id" integer NOT NULL,
	"juego" integer NOT NULL,
	"categoria" integer NOT NULL
)
;

CREATE TABLE "puntaje"
(
	"id" integer NOT NULL,
	"juego" integer NOT NULL,
	"jugador" integer NOT NULL,
	"fecha" timestamp NOT NULL,
	"puntaje" numeric(200) NOT NULL
)
;

CREATE TABLE "pegi"
(
	"id" integer NOT NULL,
	"nombre" varchar(50)	 NOT NULL,
	"descripcion" varchar(4000)	 NOT NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "jugador" ADD CONSTRAINT "PK_Jugador"
	PRIMARY KEY ("id")
;

ALTER TABLE "juego" ADD CONSTRAINT "PK_Juego"
	PRIMARY KEY ("id")
;

CREATE INDEX "IXFK_juego_juego_categoria" ON "juego" ("id" ASC)
;

CREATE INDEX "IXFK_juego_pegi" ON "juego" ("pegi" ASC)
;

ALTER TABLE "categoria" ADD CONSTRAINT "PK_categoria"
	PRIMARY KEY ("id")
;

ALTER TABLE "juego_categoria" ADD CONSTRAINT "PK_juego_categoria"
	PRIMARY KEY ("id")
;

CREATE INDEX "IXFK_juego_categoria_categoria" ON "juego_categoria" ("categoria" ASC)
;

CREATE INDEX "IXFK_juego_categoria_juego" ON "juego_categoria" ("juego" ASC)
;

CREATE INDEX "IXFK_juego_categoria_juego_02" ON "juego_categoria" ("juego" ASC)
;

ALTER TABLE "puntaje" ADD CONSTRAINT "PK_puntaje"
	PRIMARY KEY ("id")
;

CREATE INDEX "IXFK_puntaje_juego" ON "puntaje" ("juego" ASC)
;

CREATE INDEX "IXFK_puntaje_jugador" ON "puntaje" ("jugador" ASC)
;

ALTER TABLE "pegi" ADD CONSTRAINT "PK_pegi"
	PRIMARY KEY ("id")
;

/* Create Foreign Key Constraints */


ALTER TABLE "juego" ADD CONSTRAINT "FK_juego_pegi"
	FOREIGN KEY ("pegi") REFERENCES "pegi" ("id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "juego_categoria" ADD CONSTRAINT "FK_juego_categoria_categoria"
	FOREIGN KEY ("categoria") REFERENCES "categoria" ("id") ON DELETE No Action ON UPDATE No Action
;



ALTER TABLE "juego_categoria" ADD CONSTRAINT "FK_juego_categoria_juego_02"
	FOREIGN KEY ("juego") REFERENCES "juego" ("id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "puntaje" ADD CONSTRAINT "FK_puntaje_juego"
	FOREIGN KEY ("juego") REFERENCES "juego" ("id") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "puntaje" ADD CONSTRAINT "FK_puntaje_jugador"
	FOREIGN KEY ("jugador") REFERENCES "jugador" ("id") ON DELETE No Action ON UPDATE No Action
;
