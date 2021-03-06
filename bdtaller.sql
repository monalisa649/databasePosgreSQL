PGDMP     1    +                x            bdtaller    12.4    12.4 ,    >           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            @           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            A           1262    16410    bdtaller    DATABASE     �   CREATE DATABASE bdtaller WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE bdtaller;
                postgres    false            �            1259    16423    alumno    TABLE     �   CREATE TABLE public.alumno (
    cod_a integer NOT NULL,
    nom_a character varying(20) NOT NULL,
    dir_a character varying(30) NOT NULL,
    tel_a character varying(20) NOT NULL
);
    DROP TABLE public.alumno;
       public         heap    postgres    false            �            1259    16421    alumno_cod_a_seq    SEQUENCE     �   CREATE SEQUENCE public.alumno_cod_a_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.alumno_cod_a_seq;
       public          postgres    false    203            B           0    0    alumno_cod_a_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.alumno_cod_a_seq OWNED BY public.alumno.cod_a;
          public          postgres    false    202            �            1259    16576    bibliografia    TABLE     a   CREATE TABLE public.bibliografia (
    cod_m integer NOT NULL,
    isbn character varying(12)
);
     DROP TABLE public.bibliografia;
       public         heap    postgres    false            �            1259    16526    ejemplar    TABLE     ]   CREATE TABLE public.ejemplar (
    cod_i integer NOT NULL,
    isbn character varying(12)
);
    DROP TABLE public.ejemplar;
       public         heap    postgres    false            �            1259    16524    ejemplar_cod_i_seq    SEQUENCE     �   CREATE SEQUENCE public.ejemplar_cod_i_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ejemplar_cod_i_seq;
       public          postgres    false    208            C           0    0    ejemplar_cod_i_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ejemplar_cod_i_seq OWNED BY public.ejemplar.cod_i;
          public          postgres    false    207            �            1259    16474    inscripcion    TABLE     �   CREATE TABLE public.inscripcion (
    cod_a integer NOT NULL,
    cod_m integer NOT NULL,
    grupo character varying(2) NOT NULL,
    nota1 numeric NOT NULL,
    nota2 numeric NOT NULL,
    nota3 numeric NOT NULL
);
    DROP TABLE public.inscripcion;
       public         heap    postgres    false            �            1259    16534    libro    TABLE     �   CREATE TABLE public.libro (
    ejm integer NOT NULL,
    isbn character varying(12),
    titulo character varying(30) NOT NULL,
    autor character varying(20) NOT NULL
);
    DROP TABLE public.libro;
       public         heap    postgres    false            �            1259    16433    materia    TABLE        CREATE TABLE public.materia (
    cod_m integer NOT NULL,
    nom_m character varying(30) NOT NULL,
    ih integer NOT NULL
);
    DROP TABLE public.materia;
       public         heap    postgres    false            �            1259    16431    materia_cod_m_seq    SEQUENCE     �   CREATE SEQUENCE public.materia_cod_m_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.materia_cod_m_seq;
       public          postgres    false    205            D           0    0    materia_cod_m_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.materia_cod_m_seq OWNED BY public.materia.cod_m;
          public          postgres    false    204            �            1259    16548    prestamo    TABLE     �   CREATE TABLE public.prestamo (
    cod_a integer NOT NULL,
    cod_i integer NOT NULL,
    f_prestamo date,
    f_entrega date
);
    DROP TABLE public.prestamo;
       public         heap    postgres    false            �
           2604    16426    alumno cod_a    DEFAULT     l   ALTER TABLE ONLY public.alumno ALTER COLUMN cod_a SET DEFAULT nextval('public.alumno_cod_a_seq'::regclass);
 ;   ALTER TABLE public.alumno ALTER COLUMN cod_a DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    16529    ejemplar cod_i    DEFAULT     p   ALTER TABLE ONLY public.ejemplar ALTER COLUMN cod_i SET DEFAULT nextval('public.ejemplar_cod_i_seq'::regclass);
 =   ALTER TABLE public.ejemplar ALTER COLUMN cod_i DROP DEFAULT;
       public          postgres    false    208    207    208            �
           2604    16436    materia cod_m    DEFAULT     n   ALTER TABLE ONLY public.materia ALTER COLUMN cod_m SET DEFAULT nextval('public.materia_cod_m_seq'::regclass);
 <   ALTER TABLE public.materia ALTER COLUMN cod_m DROP DEFAULT;
       public          postgres    false    204    205    205            3          0    16423    alumno 
   TABLE DATA           <   COPY public.alumno (cod_a, nom_a, dir_a, tel_a) FROM stdin;
    public          postgres    false    203   �0       ;          0    16576    bibliografia 
   TABLE DATA           3   COPY public.bibliografia (cod_m, isbn) FROM stdin;
    public          postgres    false    211   �1       8          0    16526    ejemplar 
   TABLE DATA           /   COPY public.ejemplar (cod_i, isbn) FROM stdin;
    public          postgres    false    208   �1       6          0    16474    inscripcion 
   TABLE DATA           O   COPY public.inscripcion (cod_a, cod_m, grupo, nota1, nota2, nota3) FROM stdin;
    public          postgres    false    206   	2       9          0    16534    libro 
   TABLE DATA           9   COPY public.libro (ejm, isbn, titulo, autor) FROM stdin;
    public          postgres    false    209   �2       5          0    16433    materia 
   TABLE DATA           3   COPY public.materia (cod_m, nom_m, ih) FROM stdin;
    public          postgres    false    205   X3       :          0    16548    prestamo 
   TABLE DATA           G   COPY public.prestamo (cod_a, cod_i, f_prestamo, f_entrega) FROM stdin;
    public          postgres    false    210   �3       E           0    0    alumno_cod_a_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.alumno_cod_a_seq', 5, true);
          public          postgres    false    202            F           0    0    ejemplar_cod_i_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ejemplar_cod_i_seq', 11, true);
          public          postgres    false    207            G           0    0    materia_cod_m_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.materia_cod_m_seq', 5, true);
          public          postgres    false    204            �
           2606    16430    alumno alumno_nom_a_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_nom_a_key UNIQUE (nom_a);
 A   ALTER TABLE ONLY public.alumno DROP CONSTRAINT alumno_nom_a_key;
       public            postgres    false    203            �
           2606    16428    alumno alumno_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_pkey PRIMARY KEY (cod_a);
 <   ALTER TABLE ONLY public.alumno DROP CONSTRAINT alumno_pkey;
       public            postgres    false    203            �
           2606    16533    ejemplar ejemplar_isbn_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.ejemplar
    ADD CONSTRAINT ejemplar_isbn_key UNIQUE (isbn);
 D   ALTER TABLE ONLY public.ejemplar DROP CONSTRAINT ejemplar_isbn_key;
       public            postgres    false    208            �
           2606    16531    ejemplar ejemplar_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ejemplar
    ADD CONSTRAINT ejemplar_pkey PRIMARY KEY (cod_i);
 @   ALTER TABLE ONLY public.ejemplar DROP CONSTRAINT ejemplar_pkey;
       public            postgres    false    208            �
           2606    16538    libro libro_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (ejm);
 :   ALTER TABLE ONLY public.libro DROP CONSTRAINT libro_pkey;
       public            postgres    false    209            �
           2606    16440    materia materia_nom_m_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_nom_m_key UNIQUE (nom_m);
 C   ALTER TABLE ONLY public.materia DROP CONSTRAINT materia_nom_m_key;
       public            postgres    false    205            �
           2606    16438    materia materia_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (cod_m);
 >   ALTER TABLE ONLY public.materia DROP CONSTRAINT materia_pkey;
       public            postgres    false    205            �
           2606    16579 $   bibliografia bibliografia_cod_m_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bibliografia
    ADD CONSTRAINT bibliografia_cod_m_fkey FOREIGN KEY (cod_m) REFERENCES public.materia(cod_m);
 N   ALTER TABLE ONLY public.bibliografia DROP CONSTRAINT bibliografia_cod_m_fkey;
       public          postgres    false    2726    211    205            �
           2606    16584 #   bibliografia bibliografia_isbn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bibliografia
    ADD CONSTRAINT bibliografia_isbn_fkey FOREIGN KEY (isbn) REFERENCES public.ejemplar(isbn);
 M   ALTER TABLE ONLY public.bibliografia DROP CONSTRAINT bibliografia_isbn_fkey;
       public          postgres    false    2728    208    211            �
           2606    16480 "   inscripcion inscripcion_cod_a_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscripcion
    ADD CONSTRAINT inscripcion_cod_a_fkey FOREIGN KEY (cod_a) REFERENCES public.alumno(cod_a);
 L   ALTER TABLE ONLY public.inscripcion DROP CONSTRAINT inscripcion_cod_a_fkey;
       public          postgres    false    206    203    2722            �
           2606    16485 "   inscripcion inscripcion_cod_m_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscripcion
    ADD CONSTRAINT inscripcion_cod_m_fkey FOREIGN KEY (cod_m) REFERENCES public.materia(cod_m);
 L   ALTER TABLE ONLY public.inscripcion DROP CONSTRAINT inscripcion_cod_m_fkey;
       public          postgres    false    206    2726    205            �
           2606    16539    libro libro_isbn_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.libro
    ADD CONSTRAINT libro_isbn_fkey FOREIGN KEY (isbn) REFERENCES public.ejemplar(isbn);
 ?   ALTER TABLE ONLY public.libro DROP CONSTRAINT libro_isbn_fkey;
       public          postgres    false    2728    209    208            �
           2606    16551    prestamo prestamo_cod_a_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_cod_a_fkey FOREIGN KEY (cod_a) REFERENCES public.alumno(cod_a);
 F   ALTER TABLE ONLY public.prestamo DROP CONSTRAINT prestamo_cod_a_fkey;
       public          postgres    false    2722    210    203            �
           2606    16556    prestamo prestamo_cod_i_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.prestamo
    ADD CONSTRAINT prestamo_cod_i_fkey FOREIGN KEY (cod_i) REFERENCES public.ejemplar(cod_i);
 F   ALTER TABLE ONLY public.prestamo DROP CONSTRAINT prestamo_cod_i_fkey;
       public          postgres    false    210    208    2730            3   �   x�-�1
�0��Y:���K%�V<6��t1$��i��KO�$t�����Z!��R��@DK��ϗ.�y�� Iɑ�W��1h0p�Zi�Q�u,>*���gA�{��y�ɉ��u1���CiuY"���9��YЄ�"� ��%�      ;   4   x�3�] �2��͑�f\FHj���aUc��6�2��6Cb[p��qqq ��      8   *   x�3�].#8۔��6�2��͹L�l�=... ���      6   �   x�]�[
!��aD��.{�sl�'���IJ:�M|ֵy�%�)���}�lg�`�� 	������g��ѳ�Xy�{����)�ge�Y/�]f�A�=�y�FOp�I�+i�=^IG��A�n������A�������Ƃ�y���ɮY��E��;8�      9   �   x�=ͽ�0��~��@�����B%�vd��Zjl���Oȭ�鮁������g�dt4���ĨK��.�ka�sL���w��E��V,��0dV��@�pWL�D�F���?�1�චZ�Q��~+&�������� ���6�      5   S   x�ʻ� ��y
&�B$Z,₏e��#��;1�jc���.<9ݘZ��3�*m�t��0Ē���9��o�"���      :   ]   x�u���0D�3�Ò`�&� ��!����~��Mt��=�ld+�h���!xز�s��#���x�)1�%N�Y^i����+.����y0�ޔ!V     