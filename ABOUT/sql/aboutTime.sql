
DROP TABLE MEMBER1 CASCADE CONSTRAINT;
DROP TABLE HASHPHOTO CASCADE CONSTRAINT;
DROP TABLE HASHVIDEO CASCADE CONSTRAINT;
DROP TABLE VIDEO CASCADE CONSTRAINT;
DROP TABLE PHOTO CASCADE CONSTRAINT;
DROP TABLE DOCUMENT CASCADE CONSTRAINT;

DROP SEQUENCE PHOTO_SQ;
DROP SEQUENCE DOCUMENT_SQ;
DROP SEQUENCE VIDEO_SQ;
DROP SEQUENCE HASHPHOTO_SQ;
DROP SEQUENCE HASHVIDEO_SQ;

--시퀀스생성
CREATE SEQUENCE PHOTO_SQ
START WITH 0
MINVALUE 0
MAXVALUE 99999
NOCACHE
NOCYCLE
ORDER;

CREATE SEQUENCE DOCUMENT_SQ
START WITH 0
MINVALUE 0
MAXVALUE 99999
NOCACHE
NOCYCLE
ORDER;

CREATE SEQUENCE VIDEO_SQ
START WITH 0
MINVALUE 0
MAXVALUE 99999
NOCACHE
NOCYCLE
ORDER;

CREATE SEQUENCE HASHPHOTO_SQ
START WITH 0
MINVALUE 0
MAXVALUE 99999
NOCACHE
NOCYCLE
ORDER;

CREATE SEQUENCE HASHVIDEO_SQ
START WITH 0
MINVALUE 0
MAXVALUE 99999
NOCACHE
NOCYCLE
ORDER;


--테이블생성 MEMBER1을 MEMBER로 바꿔서 실행하세용!!!!!!
CREATE TABLE MEMBER1(
email varchar2(20) constraint member_email_pk primary key,
name varchar2(20) not null,
pw varchar2(20) not null
);

INSERT INTO MEMBER1 VALUES('about@kodb.com', '이현우', 'time');

CREATE TABLE PHOTO(
seq_pkey number(10) constraint photo_pkey_pk primary key,
p_name varchar2(100),
p_size number(15),
p_path varchar2(100),
p_year varchar2(4),
p_month varchar2(2),
p_day varchar2(2),
p_comment varchar2(255),
email varchar2(100)
);

CREATE TABLE DOCUMENT(
seq_dkey number(10) constraint document_dkey_pk primary key,
d_name varchar2(100),
d_size number(15),
d_path varchar2(100),
d_year varchar2(4),
d_month varchar2(2),
d_day varchar2(2),
d_comment varchar2(255),
email varchar2(100)
);

CREATE TABLE VIDEO(
seq_vkey number(10) constraint video_vkey_pk primary key,
v_name varchar2(100),
v_size number(15),
v_path varchar2(100),
v_year varchar2(4),
v_month varchar2(2),
v_day varchar2(2),
v_comment varchar2(255),
email varchar2(100) 
);

-- 연습
CREATE TABLE HASHPHOTO(
seq_hpkey number(10) constraint hashphoto_hpKey_pk primary key,
hp_name varchar2(30),
p_key number(10) constraint photo_id_fk references photo(seq_pkey),
email varchar2(100)
);

CREATE TABLE HASHVIDEO(
seq_hvkey number(10) constraint hashvideo_hvkey_pk primary key,
hv_name varchar2(30),
v_key number(10) constraint video_id_fk references video(seq_vkey),
email varchar2(100)
);


ALTER TABLE photo
ADD CONSTRAINT photo_email_fk
FOREIGN KEY(email) REFERENCES member1(email);

ALTER TABLE video
ADD CONSTRAINT video_email_fk
FOREIGN KEY(email) REFERENCES member1(email);

ALTER TABLE document
ADD CONSTRAINT document_email_fk
FOREIGN KEY(email) REFERENCES member1(email);

ALTER TABLE hashphoto
ADD CONSTRAINT hashphoto_email_fk
FOREIGN KEY(email) REFERENCES member1(email);

ALTER TABLE hashvideo
ADD CONSTRAINT hashvideo_email_fk
FOREIGN KEY(email) REFERENCES member1(email);

-- view

DROP VIEW photo_hash_view;
DROP VIEW video_hash_view;

CREATE VIEW photo_hash_view
AS SELECT p.email, p.p_path, p.p_year, p.p_month, p.p_day, p.p_comment, hp.hp_name
FROM photo p, hashphoto hp
WHERE p.seq_pkey = hp.p_key;

CREATE VIEW video_hash_view
AS SELECT v.email, v.v_path, v.v_year, v.v_month, v.v_day, v.v_comment, hv.hv_name
FROM video v, hashvideo hv
WHERE v.seq_vkey=hv.v_key;

COMMIT;

