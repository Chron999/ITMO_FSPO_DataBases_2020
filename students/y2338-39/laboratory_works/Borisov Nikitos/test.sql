PGDMP                     
    x            12.03    12.2    12.2 (    F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            I           1262    16393    12.03    DATABASE     �   CREATE DATABASE "12.03" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE "12.03";
                postgres    false            �            1259    16394    Class    TABLE     e   CREATE TABLE public."Class" (
    class_number text NOT NULL,
    student_amount integer NOT NULL
);
    DROP TABLE public."Class";
       public         heap    postgres    false            �            1259    16400 	   Exer_room    TABLE     g   CREATE TABLE public."Exer_room" (
    "Cab_id" integer NOT NULL,
    "Lecturer_id" integer NOT NULL
);
    DROP TABLE public."Exer_room";
       public         heap    postgres    false            �            1259    16403    Grade    TABLE     B   CREATE TABLE public."Grade" (
    "Grade_for_exercise" integer
);
    DROP TABLE public."Grade";
       public         heap    postgres    false            �            1259    16406    Grade_4_quarter    TABLE     �   CREATE TABLE public."Grade_4_quarter" (
    "Grade_id" integer NOT NULL,
    "Is_set_off" boolean,
    lecture_id integer,
    "Student_Name" text
);
 %   DROP TABLE public."Grade_4_quarter";
       public         heap    postgres    false            �            1259    16412 
   Lecture_id    TABLE     �   CREATE TABLE public."Lecture_id" (
    "Lecture_id" integer NOT NULL,
    "Subj_id" integer NOT NULL,
    "Lecturer_id" integer NOT NULL
);
     DROP TABLE public."Lecture_id";
       public         heap    postgres    false            �            1259    16415    Lecturer    TABLE     �   CREATE TABLE public."Lecturer" (
    "Lecturer_ID" integer NOT NULL,
    "Experience" daterange,
    "Cab" integer,
    "Is_head_teacher" boolean,
    "Lecturer_Name" text NOT NULL,
    "Subject" text NOT NULL,
    "TimeTable" text NOT NULL
);
    DROP TABLE public."Lecturer";
       public         heap    postgres    false            �            1259    16421    Schedule    TABLE       CREATE TABLE public."Schedule" (
    "Schedule_ID" integer NOT NULL,
    "Teacher_id" integer NOT NULL,
    "Cabinet_id" integer NOT NULL,
    class_number "char" NOT NULL,
    "Lecture_Id" integer NOT NULL,
    "Day" date NOT NULL,
    lesson_number integer NOT NULL
);
    DROP TABLE public."Schedule";
       public         heap    postgres    false            �            1259    16424    Student    TABLE     t   CREATE TABLE public."Student" (
    "Name" text NOT NULL,
    class_number text,
    student_id integer NOT NULL
);
    DROP TABLE public."Student";
       public         heap    postgres    false            �            1259    16499    Student_color_id_seq    SEQUENCE     �   ALTER TABLE public."Student" ALTER COLUMN student_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Student_color_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    209            �            1259    16430    Subject    TABLE     w   CREATE TABLE public."Subject" (
    "Subject_ID" integer NOT NULL,
    "Time" date NOT NULL,
    subject_title text
);
    DROP TABLE public."Subject";
       public         heap    postgres    false            :          0    16394    Class 
   TABLE DATA           ?   COPY public."Class" (class_number, student_amount) FROM stdin;
    public          postgres    false    202   #.       ;          0    16400 	   Exer_room 
   TABLE DATA           >   COPY public."Exer_room" ("Cab_id", "Lecturer_id") FROM stdin;
    public          postgres    false    203   R.       <          0    16403    Grade 
   TABLE DATA           7   COPY public."Grade" ("Grade_for_exercise") FROM stdin;
    public          postgres    false    204   {.       =          0    16406    Grade_4_quarter 
   TABLE DATA           a   COPY public."Grade_4_quarter" ("Grade_id", "Is_set_off", lecture_id, "Student_Name") FROM stdin;
    public          postgres    false    205   �.       >          0    16412 
   Lecture_id 
   TABLE DATA           N   COPY public."Lecture_id" ("Lecture_id", "Subj_id", "Lecturer_id") FROM stdin;
    public          postgres    false    206   /       ?          0    16415    Lecturer 
   TABLE DATA           �   COPY public."Lecturer" ("Lecturer_ID", "Experience", "Cab", "Is_head_teacher", "Lecturer_Name", "Subject", "TimeTable") FROM stdin;
    public          postgres    false    207   F/       @          0    16421    Schedule 
   TABLE DATA           �   COPY public."Schedule" ("Schedule_ID", "Teacher_id", "Cabinet_id", class_number, "Lecture_Id", "Day", lesson_number) FROM stdin;
    public          postgres    false    208   /0       A          0    16424    Student 
   TABLE DATA           E   COPY public."Student" ("Name", class_number, student_id) FROM stdin;
    public          postgres    false    209   L0       B          0    16430    Subject 
   TABLE DATA           H   COPY public."Subject" ("Subject_ID", "Time", subject_title) FROM stdin;
    public          postgres    false    210   g1       J           0    0    Student_color_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Student_color_id_seq"', 60, true);
          public          postgres    false    211            �
           2606    16437    Class Class_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Class"
    ADD CONSTRAINT "Class_pkey" PRIMARY KEY (class_number);
 >   ALTER TABLE ONLY public."Class" DROP CONSTRAINT "Class_pkey";
       public            postgres    false    202            �
           2606    16439    Exer_room Exer_room_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Exer_room"
    ADD CONSTRAINT "Exer_room_pkey" PRIMARY KEY ("Cab_id");
 F   ALTER TABLE ONLY public."Exer_room" DROP CONSTRAINT "Exer_room_pkey";
       public            postgres    false    203            �
           2606    16441 $   Grade_4_quarter Grade_4_quarter_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Grade_4_quarter"
    ADD CONSTRAINT "Grade_4_quarter_pkey" PRIMARY KEY ("Grade_id");
 R   ALTER TABLE ONLY public."Grade_4_quarter" DROP CONSTRAINT "Grade_4_quarter_pkey";
       public            postgres    false    205            �
           2606    16443    Lecture_id Lecture_id_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Lecture_id"
    ADD CONSTRAINT "Lecture_id_pkey" PRIMARY KEY ("Lecture_id");
 H   ALTER TABLE ONLY public."Lecture_id" DROP CONSTRAINT "Lecture_id_pkey";
       public            postgres    false    206            �
           2606    16445    Lecturer Lecturer_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Lecturer"
    ADD CONSTRAINT "Lecturer_pkey" PRIMARY KEY ("Lecturer_ID");
 D   ALTER TABLE ONLY public."Lecturer" DROP CONSTRAINT "Lecturer_pkey";
       public            postgres    false    207            �
           2606    16447    Schedule Schedule_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Schedule"
    ADD CONSTRAINT "Schedule_pkey" PRIMARY KEY ("Schedule_ID");
 D   ALTER TABLE ONLY public."Schedule" DROP CONSTRAINT "Schedule_pkey";
       public            postgres    false    208            �
           2606    16449    Student Student_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Student"
    ADD CONSTRAINT "Student_pkey" PRIMARY KEY ("Name");
 B   ALTER TABLE ONLY public."Student" DROP CONSTRAINT "Student_pkey";
       public            postgres    false    209            �
           2606    16451    Subject Subject_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Subject"
    ADD CONSTRAINT "Subject_pkey" PRIMARY KEY ("Subject_ID");
 B   ALTER TABLE ONLY public."Subject" DROP CONSTRAINT "Subject_pkey";
       public            postgres    false    210            �
           2606    16452    Exer_room Lctrtr    FK CONSTRAINT     �   ALTER TABLE ONLY public."Exer_room"
    ADD CONSTRAINT "Lctrtr" FOREIGN KEY ("Lecturer_id") REFERENCES public."Lecturer"("Lecturer_ID");
 >   ALTER TABLE ONLY public."Exer_room" DROP CONSTRAINT "Lctrtr";
       public          postgres    false    203    207    2733            �
           2606    16457    Lecture_id Subj_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Lecture_id"
    ADD CONSTRAINT "Subj_id" FOREIGN KEY ("Subj_id") REFERENCES public."Subject"("Subject_ID");
 @   ALTER TABLE ONLY public."Lecture_id" DROP CONSTRAINT "Subj_id";
       public          postgres    false    210    206    2739            �
           2606    16462    Lecture_id Tchr_ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Lecture_id"
    ADD CONSTRAINT "Tchr_ID" FOREIGN KEY ("Lecturer_id") REFERENCES public."Lecturer"("Lecturer_ID");
 @   ALTER TABLE ONLY public."Lecture_id" DROP CONSTRAINT "Tchr_ID";
       public          postgres    false    207    2733    206            �
           2606    16467    Schedule cabinet    FK CONSTRAINT     �   ALTER TABLE ONLY public."Schedule"
    ADD CONSTRAINT cabinet FOREIGN KEY ("Cabinet_id") REFERENCES public."Exer_room"("Cab_id");
 <   ALTER TABLE ONLY public."Schedule" DROP CONSTRAINT cabinet;
       public          postgres    false    208    2727    203            �
           2606    16472    Schedule class_nmbr    FK CONSTRAINT     �   ALTER TABLE ONLY public."Schedule"
    ADD CONSTRAINT class_nmbr FOREIGN KEY (class_number) REFERENCES public."Class"(class_number);
 ?   ALTER TABLE ONLY public."Schedule" DROP CONSTRAINT class_nmbr;
       public          postgres    false    208    2725    202            �
           2606    16477    Grade_4_quarter lctr_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Grade_4_quarter"
    ADD CONSTRAINT lctr_id FOREIGN KEY (lecture_id) REFERENCES public."Lecture_id"("Lecture_id");
 C   ALTER TABLE ONLY public."Grade_4_quarter" DROP CONSTRAINT lctr_id;
       public          postgres    false    2731    205    206            �
           2606    16482    Schedule lecture_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Schedule"
    ADD CONSTRAINT lecture_id FOREIGN KEY ("Lecture_Id") REFERENCES public."Lecture_id"("Lecture_id");
 ?   ALTER TABLE ONLY public."Schedule" DROP CONSTRAINT lecture_id;
       public          postgres    false    208    2731    206            �
           2606    16487    Schedule prepod    FK CONSTRAINT     �   ALTER TABLE ONLY public."Schedule"
    ADD CONSTRAINT prepod FOREIGN KEY ("Teacher_id") REFERENCES public."Lecturer"("Lecturer_ID");
 ;   ALTER TABLE ONLY public."Schedule" DROP CONSTRAINT prepod;
       public          postgres    false    2733    207    208            :      x��p�42�p�42�p�42����� -R      ;      x�340�4�246�4����� N]      <      x������ � �      =   q   x�}�;� E�zX�+0��kg�%��D1ND&A����?��U����y8]䱘�:�,G�NU�!b��h�Ɠ� [4	4��s��B�=��.����Ot��}z�k��z��C&      >      x�3�4�4�2�F\ƜF��\1z\\\ !��      ?   �   x�=��K�0��s�W�*,��ѫR:al�(�Ӧ]h�H�J����p�;|~_��5 HP��� ��z{Ǵ2�eKbr^Tn�aF.�X�Rc:�3&��z��,��z��Wn��H�J0Y57UA��~�����'t���Ǒ����p3C����ZH�@�d)���J���)����c�m���ǵ���)F��s@�M�Yz���:��DL�Hc+�����gUd      @      x������ � �      A     x�=��N�0���S�Z;V��J��?����j5M�$+�n\y��i4^!}�%q�-}����k#���55d8����$uGU�%$x�q���}Zr����J�\D,��*4>R�7��/�V��ؽu�XTO���Zw��UA���o3,��	�҉5W�V8s�Y�+C+���xfĳ6=;�+`��_H�xOUoLU��,�����	+z�eK����g�I:����ߍ�~;������P������~�1���	>#��Jv�      B   b   x�3�4200�50�54�*-.�L̋/.M�JM.�2J�X�9sK2R�Df2�1\�Д� ��83���*h2��ɋ�*`�kd�������� r��     