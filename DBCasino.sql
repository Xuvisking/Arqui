PGDMP         "                y            casino    13.2    13.2 G    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24784    casino    DATABASE     b   CREATE DATABASE casino WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE casino;
                postgres    false            ?            1259    24844 	   blackjack    TABLE        CREATE TABLE public.blackjack (
    idblackj integer NOT NULL,
    idcuenta integer NOT NULL,
    juadores integer NOT NULL
);
    DROP TABLE public.blackjack;
       public         heap    postgres    false            ?            1259    24840    blackjack_idblackj_seq    SEQUENCE     ?   CREATE SEQUENCE public.blackjack_idblackj_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.blackjack_idblackj_seq;
       public          postgres    false    216                        0    0    blackjack_idblackj_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.blackjack_idblackj_seq OWNED BY public.blackjack.idblackj;
          public          postgres    false    214            ?            1259    24842    blackjack_idcuenta_seq    SEQUENCE     ?   CREATE SEQUENCE public.blackjack_idcuenta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.blackjack_idcuenta_seq;
       public          postgres    false    216                       0    0    blackjack_idcuenta_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.blackjack_idcuenta_seq OWNED BY public.blackjack.idcuenta;
          public          postgres    false    215            ?            1259    24789    cuenta    TABLE     w   CREATE TABLE public.cuenta (
    idcuenta integer NOT NULL,
    iduser integer NOT NULL,
    saldo integer NOT NULL
);
    DROP TABLE public.cuenta;
       public         heap    postgres    false            ?            1259    24785    cuenta_idcuenta_seq    SEQUENCE     ?   CREATE SEQUENCE public.cuenta_idcuenta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cuenta_idcuenta_seq;
       public          postgres    false    202                       0    0    cuenta_idcuenta_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cuenta_idcuenta_seq OWNED BY public.cuenta.idcuenta;
          public          postgres    false    200            ?            1259    24787    cuenta_iduser_seq    SEQUENCE     ?   CREATE SEQUENCE public.cuenta_iduser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.cuenta_iduser_seq;
       public          postgres    false    202                       0    0    cuenta_iduser_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.cuenta_iduser_seq OWNED BY public.cuenta.iduser;
          public          postgres    false    201            ?            1259    24811    pago    TABLE     ?   CREATE TABLE public.pago (
    idpago integer NOT NULL,
    idcuenta integer NOT NULL,
    tipo integer NOT NULL,
    monto integer NOT NULL
);
    DROP TABLE public.pago;
       public         heap    postgres    false            ?            1259    24809    pago_idcuenta_seq    SEQUENCE     ?   CREATE SEQUENCE public.pago_idcuenta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pago_idcuenta_seq;
       public          postgres    false    207                       0    0    pago_idcuenta_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.pago_idcuenta_seq OWNED BY public.pago.idcuenta;
          public          postgres    false    206            ?            1259    24807    pago_idpago_seq    SEQUENCE     ?   CREATE SEQUENCE public.pago_idpago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pago_idpago_seq;
       public          postgres    false    207                       0    0    pago_idpago_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pago_idpago_seq OWNED BY public.pago.idpago;
          public          postgres    false    205            ?            1259    24833    ruleta    TABLE     ]   CREATE TABLE public.ruleta (
    idruleta integer NOT NULL,
    idcuenta integer NOT NULL
);
    DROP TABLE public.ruleta;
       public         heap    postgres    false            ?            1259    24831    ruleta_idcuenta_seq    SEQUENCE     ?   CREATE SEQUENCE public.ruleta_idcuenta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ruleta_idcuenta_seq;
       public          postgres    false    213                       0    0    ruleta_idcuenta_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ruleta_idcuenta_seq OWNED BY public.ruleta.idcuenta;
          public          postgres    false    212            ?            1259    24829    ruleta_idruleta_seq    SEQUENCE     ?   CREATE SEQUENCE public.ruleta_idruleta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ruleta_idruleta_seq;
       public          postgres    false    213                       0    0    ruleta_idruleta_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ruleta_idruleta_seq OWNED BY public.ruleta.idruleta;
          public          postgres    false    211            ?            1259    24822    tragamoneda    TABLE     ^   CREATE TABLE public.tragamoneda (
    idtm integer NOT NULL,
    idcuenta integer NOT NULL
);
    DROP TABLE public.tragamoneda;
       public         heap    postgres    false            ?            1259    24820    tragamoneda_idcuenta_seq    SEQUENCE     ?   CREATE SEQUENCE public.tragamoneda_idcuenta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tragamoneda_idcuenta_seq;
       public          postgres    false    210                       0    0    tragamoneda_idcuenta_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tragamoneda_idcuenta_seq OWNED BY public.tragamoneda.idcuenta;
          public          postgres    false    209            ?            1259    24818    tragamoneda_idtm_seq    SEQUENCE     ?   CREATE SEQUENCE public.tragamoneda_idtm_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tragamoneda_idtm_seq;
       public          postgres    false    210            	           0    0    tragamoneda_idtm_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tragamoneda_idtm_seq OWNED BY public.tragamoneda.idtm;
          public          postgres    false    208            ?            1259    24798    usuario    TABLE     ?   CREATE TABLE public.usuario (
    iduser integer NOT NULL,
    "user" text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            ?            1259    24796    usuario_iduser_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuario_iduser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.usuario_iduser_seq;
       public          postgres    false    204            
           0    0    usuario_iduser_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.usuario_iduser_seq OWNED BY public.usuario.iduser;
          public          postgres    false    203            T           2604    24847    blackjack idblackj    DEFAULT     x   ALTER TABLE ONLY public.blackjack ALTER COLUMN idblackj SET DEFAULT nextval('public.blackjack_idblackj_seq'::regclass);
 A   ALTER TABLE public.blackjack ALTER COLUMN idblackj DROP DEFAULT;
       public          postgres    false    214    216    216            U           2604    24848    blackjack idcuenta    DEFAULT     x   ALTER TABLE ONLY public.blackjack ALTER COLUMN idcuenta SET DEFAULT nextval('public.blackjack_idcuenta_seq'::regclass);
 A   ALTER TABLE public.blackjack ALTER COLUMN idcuenta DROP DEFAULT;
       public          postgres    false    216    215    216            K           2604    24792    cuenta idcuenta    DEFAULT     r   ALTER TABLE ONLY public.cuenta ALTER COLUMN idcuenta SET DEFAULT nextval('public.cuenta_idcuenta_seq'::regclass);
 >   ALTER TABLE public.cuenta ALTER COLUMN idcuenta DROP DEFAULT;
       public          postgres    false    202    200    202            L           2604    24793    cuenta iduser    DEFAULT     n   ALTER TABLE ONLY public.cuenta ALTER COLUMN iduser SET DEFAULT nextval('public.cuenta_iduser_seq'::regclass);
 <   ALTER TABLE public.cuenta ALTER COLUMN iduser DROP DEFAULT;
       public          postgres    false    201    202    202            N           2604    24814    pago idpago    DEFAULT     j   ALTER TABLE ONLY public.pago ALTER COLUMN idpago SET DEFAULT nextval('public.pago_idpago_seq'::regclass);
 :   ALTER TABLE public.pago ALTER COLUMN idpago DROP DEFAULT;
       public          postgres    false    205    207    207            O           2604    24815    pago idcuenta    DEFAULT     n   ALTER TABLE ONLY public.pago ALTER COLUMN idcuenta SET DEFAULT nextval('public.pago_idcuenta_seq'::regclass);
 <   ALTER TABLE public.pago ALTER COLUMN idcuenta DROP DEFAULT;
       public          postgres    false    206    207    207            R           2604    24836    ruleta idruleta    DEFAULT     r   ALTER TABLE ONLY public.ruleta ALTER COLUMN idruleta SET DEFAULT nextval('public.ruleta_idruleta_seq'::regclass);
 >   ALTER TABLE public.ruleta ALTER COLUMN idruleta DROP DEFAULT;
       public          postgres    false    213    211    213            S           2604    24837    ruleta idcuenta    DEFAULT     r   ALTER TABLE ONLY public.ruleta ALTER COLUMN idcuenta SET DEFAULT nextval('public.ruleta_idcuenta_seq'::regclass);
 >   ALTER TABLE public.ruleta ALTER COLUMN idcuenta DROP DEFAULT;
       public          postgres    false    212    213    213            P           2604    24825    tragamoneda idtm    DEFAULT     t   ALTER TABLE ONLY public.tragamoneda ALTER COLUMN idtm SET DEFAULT nextval('public.tragamoneda_idtm_seq'::regclass);
 ?   ALTER TABLE public.tragamoneda ALTER COLUMN idtm DROP DEFAULT;
       public          postgres    false    210    208    210            Q           2604    24826    tragamoneda idcuenta    DEFAULT     |   ALTER TABLE ONLY public.tragamoneda ALTER COLUMN idcuenta SET DEFAULT nextval('public.tragamoneda_idcuenta_seq'::regclass);
 C   ALTER TABLE public.tragamoneda ALTER COLUMN idcuenta DROP DEFAULT;
       public          postgres    false    209    210    210            M           2604    24801    usuario iduser    DEFAULT     p   ALTER TABLE ONLY public.usuario ALTER COLUMN iduser SET DEFAULT nextval('public.usuario_iduser_seq'::regclass);
 =   ALTER TABLE public.usuario ALTER COLUMN iduser DROP DEFAULT;
       public          postgres    false    203    204    204            ?          0    24844 	   blackjack 
   TABLE DATA           A   COPY public.blackjack (idblackj, idcuenta, juadores) FROM stdin;
    public          postgres    false    216   `M       ?          0    24789    cuenta 
   TABLE DATA           9   COPY public.cuenta (idcuenta, iduser, saldo) FROM stdin;
    public          postgres    false    202   }M       ?          0    24811    pago 
   TABLE DATA           =   COPY public.pago (idpago, idcuenta, tipo, monto) FROM stdin;
    public          postgres    false    207   ?M       ?          0    24833    ruleta 
   TABLE DATA           4   COPY public.ruleta (idruleta, idcuenta) FROM stdin;
    public          postgres    false    213   ?M       ?          0    24822    tragamoneda 
   TABLE DATA           5   COPY public.tragamoneda (idtm, idcuenta) FROM stdin;
    public          postgres    false    210   ?M       ?          0    24798    usuario 
   TABLE DATA           B   COPY public.usuario (iduser, "user", email, password) FROM stdin;
    public          postgres    false    204   ?M                  0    0    blackjack_idblackj_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.blackjack_idblackj_seq', 1, false);
          public          postgres    false    214                       0    0    blackjack_idcuenta_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.blackjack_idcuenta_seq', 1, false);
          public          postgres    false    215                       0    0    cuenta_idcuenta_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cuenta_idcuenta_seq', 1, false);
          public          postgres    false    200                       0    0    cuenta_iduser_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cuenta_iduser_seq', 1, false);
          public          postgres    false    201                       0    0    pago_idcuenta_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.pago_idcuenta_seq', 1, false);
          public          postgres    false    206                       0    0    pago_idpago_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pago_idpago_seq', 1, false);
          public          postgres    false    205                       0    0    ruleta_idcuenta_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ruleta_idcuenta_seq', 1, false);
          public          postgres    false    212                       0    0    ruleta_idruleta_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ruleta_idruleta_seq', 1, false);
          public          postgres    false    211                       0    0    tragamoneda_idcuenta_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tragamoneda_idcuenta_seq', 1, false);
          public          postgres    false    209                       0    0    tragamoneda_idtm_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tragamoneda_idtm_seq', 1, false);
          public          postgres    false    208                       0    0    usuario_iduser_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.usuario_iduser_seq', 1, false);
          public          postgres    false    203            a           2606    24850    blackjack blackjack_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.blackjack
    ADD CONSTRAINT blackjack_pkey PRIMARY KEY (idblackj);
 B   ALTER TABLE ONLY public.blackjack DROP CONSTRAINT blackjack_pkey;
       public            postgres    false    216            W           2606    24795    cuenta cuenta_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cuenta
    ADD CONSTRAINT cuenta_pkey PRIMARY KEY (idcuenta);
 <   ALTER TABLE ONLY public.cuenta DROP CONSTRAINT cuenta_pkey;
       public            postgres    false    202            [           2606    24817    pago pago_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_pkey PRIMARY KEY (idpago);
 8   ALTER TABLE ONLY public.pago DROP CONSTRAINT pago_pkey;
       public            postgres    false    207            _           2606    24839    ruleta ruleta_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ruleta
    ADD CONSTRAINT ruleta_pkey PRIMARY KEY (idruleta);
 <   ALTER TABLE ONLY public.ruleta DROP CONSTRAINT ruleta_pkey;
       public            postgres    false    213            ]           2606    24828    tragamoneda tragamoneda_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tragamoneda
    ADD CONSTRAINT tragamoneda_pkey PRIMARY KEY (idtm, idcuenta);
 F   ALTER TABLE ONLY public.tragamoneda DROP CONSTRAINT tragamoneda_pkey;
       public            postgres    false    210    210            Y           2606    24806    usuario usuario_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (iduser);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    204            f           2606    24851 !   blackjack blackjack_idcuenta_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.blackjack
    ADD CONSTRAINT blackjack_idcuenta_fkey FOREIGN KEY (idcuenta) REFERENCES public.cuenta(idcuenta) NOT VALID;
 K   ALTER TABLE ONLY public.blackjack DROP CONSTRAINT blackjack_idcuenta_fkey;
       public          postgres    false    216    202    2903            b           2606    24871    cuenta cuenta_iduser_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cuenta
    ADD CONSTRAINT cuenta_iduser_fkey FOREIGN KEY (iduser) REFERENCES public.usuario(iduser) NOT VALID;
 C   ALTER TABLE ONLY public.cuenta DROP CONSTRAINT cuenta_iduser_fkey;
       public          postgres    false    2905    204    202            c           2606    24866    pago pago_idcuenta_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_idcuenta_fkey FOREIGN KEY (idcuenta) REFERENCES public.cuenta(idcuenta) NOT VALID;
 A   ALTER TABLE ONLY public.pago DROP CONSTRAINT pago_idcuenta_fkey;
       public          postgres    false    207    202    2903            e           2606    24861    ruleta ruleta_idcuenta_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ruleta
    ADD CONSTRAINT ruleta_idcuenta_fkey FOREIGN KEY (idcuenta) REFERENCES public.cuenta(idcuenta) NOT VALID;
 E   ALTER TABLE ONLY public.ruleta DROP CONSTRAINT ruleta_idcuenta_fkey;
       public          postgres    false    202    2903    213            d           2606    24856 %   tragamoneda tragamoneda_idcuenta_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tragamoneda
    ADD CONSTRAINT tragamoneda_idcuenta_fkey FOREIGN KEY (idcuenta) REFERENCES public.cuenta(idcuenta) NOT VALID;
 O   ALTER TABLE ONLY public.tragamoneda DROP CONSTRAINT tragamoneda_idcuenta_fkey;
       public          postgres    false    202    210    2903            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     