PGDMP          
        	    {            Partidos-Qatar    16.0    16.0 O    B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            E           1262    16552    Partidos-Qatar    DATABASE     �   CREATE DATABASE "Partidos-Qatar" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';
     DROP DATABASE "Partidos-Qatar";
                postgres    false            �            1259    16677 	   01partido    TABLE     �   CREATE TABLE public."01partido" (
    "codigo-partido" integer NOT NULL,
    instancia integer,
    fecha integer,
    duracion character varying,
    arbitro integer,
    equipo1 integer,
    equipo2 integer,
    estadio integer,
    hinchas integer
);
    DROP TABLE public."01partido";
       public         heap    postgres    false            �            1259    16676    01partido_codigo-partido_seq    SEQUENCE     �   CREATE SEQUENCE public."01partido_codigo-partido_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."01partido_codigo-partido_seq";
       public          postgres    false    232            F           0    0    01partido_codigo-partido_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."01partido_codigo-partido_seq" OWNED BY public."01partido"."codigo-partido";
          public          postgres    false    231            �            1259    16563    Fecha    TABLE     t   CREATE TABLE public."Fecha" (
    "codigo-Fecha" integer NOT NULL,
    "Dia" character varying,
    "Fecha" date
);
    DROP TABLE public."Fecha";
       public         heap    postgres    false            �            1259    16562    Fecha_codigo-Fecha_seq    SEQUENCE     �   CREATE SEQUENCE public."Fecha_codigo-Fecha_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Fecha_codigo-Fecha_seq";
       public          postgres    false    218            G           0    0    Fecha_codigo-Fecha_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Fecha_codigo-Fecha_seq" OWNED BY public."Fecha"."codigo-Fecha";
          public          postgres    false    217            �            1259    16572    arbitro    TABLE     �   CREATE TABLE public.arbitro (
    "codigo-arbitro" integer NOT NULL,
    nombre name,
    apellido name,
    pais character varying,
    "años-actividad" "char",
    pasaporte character varying,
    "arbitro-remplazo" integer
);
    DROP TABLE public.arbitro;
       public         heap    postgres    false            �            1259    16571    arbitro_codigo-arbitro_seq    SEQUENCE     �   CREATE SEQUENCE public."arbitro_codigo-arbitro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."arbitro_codigo-arbitro_seq";
       public          postgres    false    220            H           0    0    arbitro_codigo-arbitro_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."arbitro_codigo-arbitro_seq" OWNED BY public.arbitro."codigo-arbitro";
          public          postgres    false    219            �            1259    16654    equipo    TABLE     �   CREATE TABLE public.equipo (
    "codigo-seleccion" real NOT NULL,
    dt character varying,
    "lugar-entreno" character varying,
    "cuerpo-tecnico" character varying,
    jugadores integer,
    selecion character varying
);
    DROP TABLE public.equipo;
       public         heap    postgres    false            �            1259    16653    equipo_seleccion_seq    SEQUENCE     �   CREATE SEQUENCE public.equipo_seleccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.equipo_seleccion_seq;
       public          postgres    false    228            I           0    0    equipo_seleccion_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public.equipo_seleccion_seq OWNED BY public.equipo."codigo-seleccion";
          public          postgres    false    227            �            1259    16640    estadio    TABLE     .  CREATE TABLE public.estadio (
    "codigo-estadio" integer NOT NULL,
    nombre name,
    ciudad character varying,
    capacidad character varying(6),
    "capacidad-maxima" character varying(6),
    "capacidad-habitada" character varying,
    policias character varying,
    "hinchas(FK)" integer
);
    DROP TABLE public.estadio;
       public         heap    postgres    false            �            1259    16639    estadio_codigo-estadio_seq    SEQUENCE     �   CREATE SEQUENCE public."estadio_codigo-estadio_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."estadio_codigo-estadio_seq";
       public          postgres    false    226            J           0    0    estadio_codigo-estadio_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."estadio_codigo-estadio_seq" OWNED BY public.estadio."codigo-estadio";
          public          postgres    false    225            �            1259    16581    hinchas    TABLE     {   CREATE TABLE public.hinchas (
    "N*-Ticket" integer NOT NULL,
    vestimenta character varying,
    ubicacion integer
);
    DROP TABLE public.hinchas;
       public         heap    postgres    false            �            1259    16580    hinchas_N*-Ticket_seq    SEQUENCE     �   CREATE SEQUENCE public."hinchas_N*-Ticket_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."hinchas_N*-Ticket_seq";
       public          postgres    false    222            K           0    0    hinchas_N*-Ticket_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."hinchas_N*-Ticket_seq" OWNED BY public.hinchas."N*-Ticket";
          public          postgres    false    221            �            1259    16554 	   instancia    TABLE     v   CREATE TABLE public.instancia (
    "codigo-instancia" integer NOT NULL,
    "Instancia-partido" character varying
);
    DROP TABLE public.instancia;
       public         heap    postgres    false            �            1259    16553    instancia_codigo-instancia_seq    SEQUENCE     �   CREATE SEQUENCE public."instancia_codigo-instancia_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."instancia_codigo-instancia_seq";
       public          postgres    false    216            L           0    0    instancia_codigo-instancia_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."instancia_codigo-instancia_seq" OWNED BY public.instancia."codigo-instancia";
          public          postgres    false    215            �            1259    16663 	   jugadores    TABLE     �   CREATE TABLE public.jugadores (
    "numero-camiseta" integer NOT NULL,
    posicion character varying,
    nombre name,
    apellido name,
    apodo name,
    "Equipo/FK" integer
);
    DROP TABLE public.jugadores;
       public         heap    postgres    false            �            1259    16662    jugadores_numero-camiseta_seq    SEQUENCE     �   CREATE SEQUENCE public."jugadores_numero-camiseta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."jugadores_numero-camiseta_seq";
       public          postgres    false    230            M           0    0    jugadores_numero-camiseta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."jugadores_numero-camiseta_seq" OWNED BY public.jugadores."numero-camiseta";
          public          postgres    false    229            �            1259    16590 	   ubicacion    TABLE     �   CREATE TABLE public.ubicacion (
    "codigo-ubicacion" integer NOT NULL,
    zona character varying,
    fila character varying(5),
    "numero-asiento" "char"
);
    DROP TABLE public.ubicacion;
       public         heap    postgres    false            �            1259    16589    ubicacion_codigo-ubicacion_seq    SEQUENCE     �   CREATE SEQUENCE public."ubicacion_codigo-ubicacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."ubicacion_codigo-ubicacion_seq";
       public          postgres    false    224            N           0    0    ubicacion_codigo-ubicacion_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."ubicacion_codigo-ubicacion_seq" OWNED BY public.ubicacion."codigo-ubicacion";
          public          postgres    false    223            �           2604    16680    01partido codigo-partido    DEFAULT     �   ALTER TABLE ONLY public."01partido" ALTER COLUMN "codigo-partido" SET DEFAULT nextval('public."01partido_codigo-partido_seq"'::regclass);
 K   ALTER TABLE public."01partido" ALTER COLUMN "codigo-partido" DROP DEFAULT;
       public          postgres    false    232    231    232            y           2604    16566    Fecha codigo-Fecha    DEFAULT     ~   ALTER TABLE ONLY public."Fecha" ALTER COLUMN "codigo-Fecha" SET DEFAULT nextval('public."Fecha_codigo-Fecha_seq"'::regclass);
 E   ALTER TABLE public."Fecha" ALTER COLUMN "codigo-Fecha" DROP DEFAULT;
       public          postgres    false    217    218    218            z           2604    16575    arbitro codigo-arbitro    DEFAULT     �   ALTER TABLE ONLY public.arbitro ALTER COLUMN "codigo-arbitro" SET DEFAULT nextval('public."arbitro_codigo-arbitro_seq"'::regclass);
 G   ALTER TABLE public.arbitro ALTER COLUMN "codigo-arbitro" DROP DEFAULT;
       public          postgres    false    220    219    220            ~           2604    16739    equipo codigo-seleccion    DEFAULT     }   ALTER TABLE ONLY public.equipo ALTER COLUMN "codigo-seleccion" SET DEFAULT nextval('public.equipo_seleccion_seq'::regclass);
 H   ALTER TABLE public.equipo ALTER COLUMN "codigo-seleccion" DROP DEFAULT;
       public          postgres    false    227    228    228            }           2604    16643    estadio codigo-estadio    DEFAULT     �   ALTER TABLE ONLY public.estadio ALTER COLUMN "codigo-estadio" SET DEFAULT nextval('public."estadio_codigo-estadio_seq"'::regclass);
 G   ALTER TABLE public.estadio ALTER COLUMN "codigo-estadio" DROP DEFAULT;
       public          postgres    false    226    225    226            {           2604    16584    hinchas N*-Ticket    DEFAULT     z   ALTER TABLE ONLY public.hinchas ALTER COLUMN "N*-Ticket" SET DEFAULT nextval('public."hinchas_N*-Ticket_seq"'::regclass);
 B   ALTER TABLE public.hinchas ALTER COLUMN "N*-Ticket" DROP DEFAULT;
       public          postgres    false    222    221    222            x           2604    16557    instancia codigo-instancia    DEFAULT     �   ALTER TABLE ONLY public.instancia ALTER COLUMN "codigo-instancia" SET DEFAULT nextval('public."instancia_codigo-instancia_seq"'::regclass);
 K   ALTER TABLE public.instancia ALTER COLUMN "codigo-instancia" DROP DEFAULT;
       public          postgres    false    215    216    216                       2604    16666    jugadores numero-camiseta    DEFAULT     �   ALTER TABLE ONLY public.jugadores ALTER COLUMN "numero-camiseta" SET DEFAULT nextval('public."jugadores_numero-camiseta_seq"'::regclass);
 J   ALTER TABLE public.jugadores ALTER COLUMN "numero-camiseta" DROP DEFAULT;
       public          postgres    false    230    229    230            |           2604    16593    ubicacion codigo-ubicacion    DEFAULT     �   ALTER TABLE ONLY public.ubicacion ALTER COLUMN "codigo-ubicacion" SET DEFAULT nextval('public."ubicacion_codigo-ubicacion_seq"'::regclass);
 K   ALTER TABLE public.ubicacion ALTER COLUMN "codigo-ubicacion" DROP DEFAULT;
       public          postgres    false    224    223    224            ?          0    16677 	   01partido 
   TABLE DATA           �   COPY public."01partido" ("codigo-partido", instancia, fecha, duracion, arbitro, equipo1, equipo2, estadio, hinchas) FROM stdin;
    public          postgres    false    232   �_       1          0    16563    Fecha 
   TABLE DATA           A   COPY public."Fecha" ("codigo-Fecha", "Dia", "Fecha") FROM stdin;
    public          postgres    false    218   ?`       3          0    16572    arbitro 
   TABLE DATA           }   COPY public.arbitro ("codigo-arbitro", nombre, apellido, pais, "años-actividad", pasaporte, "arbitro-remplazo") FROM stdin;
    public          postgres    false    220   �`       ;          0    16654    equipo 
   TABLE DATA           p   COPY public.equipo ("codigo-seleccion", dt, "lugar-entreno", "cuerpo-tecnico", jugadores, selecion) FROM stdin;
    public          postgres    false    228   Fa       9          0    16640    estadio 
   TABLE DATA           �   COPY public.estadio ("codigo-estadio", nombre, ciudad, capacidad, "capacidad-maxima", "capacidad-habitada", policias, "hinchas(FK)") FROM stdin;
    public          postgres    false    226   �a       5          0    16581    hinchas 
   TABLE DATA           E   COPY public.hinchas ("N*-Ticket", vestimenta, ubicacion) FROM stdin;
    public          postgres    false    222   �b       /          0    16554 	   instancia 
   TABLE DATA           L   COPY public.instancia ("codigo-instancia", "Instancia-partido") FROM stdin;
    public          postgres    false    216   �b       =          0    16663 	   jugadores 
   TABLE DATA           f   COPY public.jugadores ("numero-camiseta", posicion, nombre, apellido, apodo, "Equipo/FK") FROM stdin;
    public          postgres    false    230   c       7          0    16590 	   ubicacion 
   TABLE DATA           U   COPY public.ubicacion ("codigo-ubicacion", zona, fila, "numero-asiento") FROM stdin;
    public          postgres    false    224   yc       O           0    0    01partido_codigo-partido_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."01partido_codigo-partido_seq"', 1, false);
          public          postgres    false    231            P           0    0    Fecha_codigo-Fecha_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Fecha_codigo-Fecha_seq"', 1, false);
          public          postgres    false    217            Q           0    0    arbitro_codigo-arbitro_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."arbitro_codigo-arbitro_seq"', 1, false);
          public          postgres    false    219            R           0    0    equipo_seleccion_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.equipo_seleccion_seq', 6, true);
          public          postgres    false    227            S           0    0    estadio_codigo-estadio_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."estadio_codigo-estadio_seq"', 1, false);
          public          postgres    false    225            T           0    0    hinchas_N*-Ticket_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."hinchas_N*-Ticket_seq"', 1, false);
          public          postgres    false    221            U           0    0    instancia_codigo-instancia_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."instancia_codigo-instancia_seq"', 1, false);
          public          postgres    false    215            V           0    0    jugadores_numero-camiseta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."jugadores_numero-camiseta_seq"', 1, true);
          public          postgres    false    229            W           0    0    ubicacion_codigo-ubicacion_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."ubicacion_codigo-ubicacion_seq"', 1, false);
          public          postgres    false    223            �           2606    16570    Fecha cod_fecha 
   CONSTRAINT     [   ALTER TABLE ONLY public."Fecha"
    ADD CONSTRAINT cod_fecha PRIMARY KEY ("codigo-Fecha");
 ;   ALTER TABLE ONLY public."Fecha" DROP CONSTRAINT cod_fecha;
       public            postgres    false    218            �           2606    16579    arbitro pk_arbitro 
   CONSTRAINT     ^   ALTER TABLE ONLY public.arbitro
    ADD CONSTRAINT pk_arbitro PRIMARY KEY ("codigo-arbitro");
 <   ALTER TABLE ONLY public.arbitro DROP CONSTRAINT pk_arbitro;
       public            postgres    false    220            �           2606    16647    estadio pk_cod_estadio 
   CONSTRAINT     b   ALTER TABLE ONLY public.estadio
    ADD CONSTRAINT pk_cod_estadio PRIMARY KEY ("codigo-estadio");
 @   ALTER TABLE ONLY public.estadio DROP CONSTRAINT pk_cod_estadio;
       public            postgres    false    226            �           2606    16684    01partido pk_cod_partido 
   CONSTRAINT     f   ALTER TABLE ONLY public."01partido"
    ADD CONSTRAINT pk_cod_partido PRIMARY KEY ("codigo-partido");
 D   ALTER TABLE ONLY public."01partido" DROP CONSTRAINT pk_cod_partido;
       public            postgres    false    232            �           2606    16561    instancia pk_instancia 
   CONSTRAINT     d   ALTER TABLE ONLY public.instancia
    ADD CONSTRAINT pk_instancia PRIMARY KEY ("codigo-instancia");
 @   ALTER TABLE ONLY public.instancia DROP CONSTRAINT pk_instancia;
       public            postgres    false    216            �           2606    16670    jugadores pk_num_camiseta 
   CONSTRAINT     f   ALTER TABLE ONLY public.jugadores
    ADD CONSTRAINT pk_num_camiseta PRIMARY KEY ("numero-camiseta");
 C   ALTER TABLE ONLY public.jugadores DROP CONSTRAINT pk_num_camiseta;
       public            postgres    false    230            �           2606    16588    hinchas pk_num_tiket 
   CONSTRAINT     [   ALTER TABLE ONLY public.hinchas
    ADD CONSTRAINT pk_num_tiket PRIMARY KEY ("N*-Ticket");
 >   ALTER TABLE ONLY public.hinchas DROP CONSTRAINT pk_num_tiket;
       public            postgres    false    222            �           2606    16741    equipo pk_selecciona 
   CONSTRAINT     b   ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT pk_selecciona PRIMARY KEY ("codigo-seleccion");
 >   ALTER TABLE ONLY public.equipo DROP CONSTRAINT pk_selecciona;
       public            postgres    false    228            �           2606    16597    ubicacion pk_ubicacion 
   CONSTRAINT     d   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT pk_ubicacion PRIMARY KEY ("codigo-ubicacion");
 @   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT pk_ubicacion;
       public            postgres    false    224            �           2606    16648    estadio Fk_cod_hincha    FK CONSTRAINT     �   ALTER TABLE ONLY public.estadio
    ADD CONSTRAINT "Fk_cod_hincha" FOREIGN KEY ("hinchas(FK)") REFERENCES public.hinchas("N*-Ticket");
 A   ALTER TABLE ONLY public.estadio DROP CONSTRAINT "Fk_cod_hincha";
       public          postgres    false    226    4744    222            �           2606    16598    hinchas Fk_ubicacion    FK CONSTRAINT     �   ALTER TABLE ONLY public.hinchas
    ADD CONSTRAINT "Fk_ubicacion" FOREIGN KEY (ubicacion) REFERENCES public.ubicacion("codigo-ubicacion") NOT VALID;
 @   ALTER TABLE ONLY public.hinchas DROP CONSTRAINT "Fk_ubicacion";
       public          postgres    false    222    4746    224            �           2606    16695    01partido fk_arbitro    FK CONSTRAINT     �   ALTER TABLE ONLY public."01partido"
    ADD CONSTRAINT fk_arbitro FOREIGN KEY (arbitro) REFERENCES public.arbitro("codigo-arbitro");
 @   ALTER TABLE ONLY public."01partido" DROP CONSTRAINT fk_arbitro;
       public          postgres    false    220    232    4742            �           2606    16763    jugadores fk_equipo    FK CONSTRAINT     �   ALTER TABLE ONLY public.jugadores
    ADD CONSTRAINT fk_equipo FOREIGN KEY ("Equipo/FK") REFERENCES public.equipo("codigo-seleccion") NOT VALID;
 =   ALTER TABLE ONLY public.jugadores DROP CONSTRAINT fk_equipo;
       public          postgres    false    4750    230    228            �           2606    16742    01partido fk_equipo1    FK CONSTRAINT     �   ALTER TABLE ONLY public."01partido"
    ADD CONSTRAINT fk_equipo1 FOREIGN KEY (equipo1) REFERENCES public.equipo("codigo-seleccion");
 @   ALTER TABLE ONLY public."01partido" DROP CONSTRAINT fk_equipo1;
       public          postgres    false    232    4750    228            �           2606    16747    01partido fk_equipo2    FK CONSTRAINT     �   ALTER TABLE ONLY public."01partido"
    ADD CONSTRAINT fk_equipo2 FOREIGN KEY (equipo2) REFERENCES public.equipo("codigo-seleccion");
 @   ALTER TABLE ONLY public."01partido" DROP CONSTRAINT fk_equipo2;
       public          postgres    false    228    232    4750            �           2606    16690    01partido fk_fecha    FK CONSTRAINT        ALTER TABLE ONLY public."01partido"
    ADD CONSTRAINT fk_fecha FOREIGN KEY (fecha) REFERENCES public."Fecha"("codigo-Fecha");
 >   ALTER TABLE ONLY public."01partido" DROP CONSTRAINT fk_fecha;
       public          postgres    false    218    232    4740            �           2606    16715    01partido fk_hinchas    FK CONSTRAINT     �   ALTER TABLE ONLY public."01partido"
    ADD CONSTRAINT fk_hinchas FOREIGN KEY (hinchas) REFERENCES public.hinchas("N*-Ticket");
 @   ALTER TABLE ONLY public."01partido" DROP CONSTRAINT fk_hinchas;
       public          postgres    false    4744    222    232            �           2606    16685    01partido fk_instancia    FK CONSTRAINT     �   ALTER TABLE ONLY public."01partido"
    ADD CONSTRAINT fk_instancia FOREIGN KEY (instancia) REFERENCES public.instancia("codigo-instancia");
 B   ALTER TABLE ONLY public."01partido" DROP CONSTRAINT fk_instancia;
       public          postgres    false    4738    232    216            �           2606    16671    equipo fk_jugadores    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT fk_jugadores FOREIGN KEY (jugadores) REFERENCES public.jugadores("numero-camiseta") NOT VALID;
 =   ALTER TABLE ONLY public.equipo DROP CONSTRAINT fk_jugadores;
       public          postgres    false    230    4752    228            �           2606    16758    arbitro pk_arbitro_suplen    FK CONSTRAINT     �   ALTER TABLE ONLY public.arbitro
    ADD CONSTRAINT pk_arbitro_suplen FOREIGN KEY ("arbitro-remplazo") REFERENCES public.arbitro("codigo-arbitro") NOT VALID;
 C   ALTER TABLE ONLY public.arbitro DROP CONSTRAINT pk_arbitro_suplen;
       public          postgres    false    220    4742    220            �           2606    16768    01partido pk_estadio    FK CONSTRAINT     �   ALTER TABLE ONLY public."01partido"
    ADD CONSTRAINT pk_estadio FOREIGN KEY (estadio) REFERENCES public.estadio("codigo-estadio") NOT VALID;
 @   ALTER TABLE ONLY public."01partido" DROP CONSTRAINT pk_estadio;
       public          postgres    false    4748    232    226            ?   [   x�]��	�0г<Lq~N�D'�94����BO�!7SEP���z��'��U�SZe��$3C��&�U!��썲V�,"A���䓪�CDn��g      1   O   x�3120���L-J��I-���4202�54".c�\Vij��)��)P�81)1%.a�k �a��)�C�`����� ���      3   �   x�E�1�0E�à$vK�g`I[���&(P�zz���^������YS�R�Z��6)o-	<�#�;��-Oir�} �83B4"z�Rtъ�2c�Y?�=D�86����l��)��|u�������cY�dQv_{Ͽ,bo4Yy��8�~�6�      ;   �   x�%�=1��9�1��c����p��%Ԡ�^z���^�x�0FJYF~����@�d}����Sbk~���K<�
�=������?p���0p�/�沸�v�F���AT���u�ިH°B���.�      9   �   x�5�91��9EN��8[9�nu#�)�H,Ŕ����H4��������--��c�o`Pֶ�ƂTZ*Ǭ�1Q��ݜ(N�����g�M��� �y�\`��
\��_�� �
�9�+]��Oy�C�UiY���Do ��m%�����a�} S�1      5   *   x�342642���47�2q��K.KCC#K��W� ���      /   G   x�35�L��K��21��O.I,�/օp&�&���8�Ss3!��b.CN���T]��҂�b�=... ��8      =   V   x�M�A
� ϛW��R�_�%`*��E-������0�w$1�Sz�&E����]�e�A�C�٥4p�bH�
we��ֲ
����FD/���      7   D   x�3��,�I,IMT(.-�44�4�2��,�/(�I,���42�4�27�)��/*I��J��r�r��qqq ��C     