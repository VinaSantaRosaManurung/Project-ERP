PGDMP                           y         
   projecterp    13.0    13.0 ?    x           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            {           1262    32911 
   projecterp    DATABASE     n   CREATE DATABASE projecterp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE projecterp;
                postgres    false            ?            1259    33588    akun    TABLE     )  CREATE TABLE public.akun (
    id integer NOT NULL,
    no_akun character varying(255) NOT NULL,
    nama_akun character varying(255) NOT NULL,
    jumlah integer NOT NULL,
    total integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.akun;
       public         heap    postgres    false            ?            1259    33599    akunLaba    TABLE     ;  CREATE TABLE public."akunLaba" (
    id integer NOT NULL,
    "no_akunLaba" character varying(255) NOT NULL,
    "nama_akunLaba" character varying(255) NOT NULL,
    jumlah integer NOT NULL,
    total integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public."akunLaba";
       public         heap    postgres    false            ?            1259    33597    akunLaba_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."akunLaba_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."akunLaba_id_seq";
       public          postgres    false    224            |           0    0    akunLaba_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."akunLaba_id_seq" OWNED BY public."akunLaba".id;
          public          postgres    false    223            ?            1259    33586    akun_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.akun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.akun_id_seq;
       public          postgres    false    222            }           0    0    akun_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.akun_id_seq OWNED BY public.akun.id;
          public          postgres    false    221            ?            1259    33545    barang    TABLE     )  CREATE TABLE public.barang (
    id integer NOT NULL,
    nama_barang character varying(50) NOT NULL,
    jumlah integer NOT NULL,
    harga double precision NOT NULL,
    tanggal_order date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    33543    barang_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.barang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.barang_id_seq;
       public          postgres    false    218            ~           0    0    barang_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.barang_id_seq OWNED BY public.barang.id;
          public          postgres    false    217            ?            1259    33507 
   data_gajis    TABLE     ?   CREATE TABLE public.data_gajis (
    id integer NOT NULL,
    nama character varying(255) NOT NULL,
    nip integer NOT NULL,
    total_gaji integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.data_gajis;
       public         heap    postgres    false            ?            1259    33505    data_gajis_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.data_gajis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.data_gajis_id_seq;
       public          postgres    false    210                       0    0    data_gajis_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.data_gajis_id_seq OWNED BY public.data_gajis.id;
          public          postgres    false    209            ?            1259    33515    data_karyawans    TABLE     ?  CREATE TABLE public.data_karyawans (
    id integer NOT NULL,
    nama character varying(255) NOT NULL,
    jenis_kelamin character varying(255) NOT NULL,
    nip integer NOT NULL,
    no_hp integer NOT NULL,
    agama character varying(255) NOT NULL,
    alamat character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE public.data_karyawans;
       public         heap    postgres    false            ?            1259    33513    data_karyawans_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.data_karyawans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.data_karyawans_id_seq;
       public          postgres    false    212            ?           0    0    data_karyawans_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.data_karyawans_id_seq OWNED BY public.data_karyawans.id;
          public          postgres    false    211            ?            1259    33577    keuangan    TABLE     -  CREATE TABLE public.keuangan (
    id integer NOT NULL,
    no_akun character varying(255) NOT NULL,
    nama_akun character varying(255) NOT NULL,
    jumlah integer NOT NULL,
    total integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.keuangan;
       public         heap    postgres    false            ?            1259    33575    keuangan_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.keuangan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.keuangan_id_seq;
       public          postgres    false    220            ?           0    0    keuangan_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.keuangan_id_seq OWNED BY public.keuangan.id;
          public          postgres    false    219            ?            1259    33610    labarugi    TABLE     -  CREATE TABLE public.labarugi (
    id integer NOT NULL,
    no_akun character varying(255) NOT NULL,
    nama_akun character varying(255) NOT NULL,
    jumlah integer NOT NULL,
    total integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.labarugi;
       public         heap    postgres    false            ?            1259    33608    labarugi_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.labarugi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.labarugi_id_seq;
       public          postgres    false    226            ?           0    0    labarugi_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.labarugi_id_seq OWNED BY public.labarugi.id;
          public          postgres    false    225            ?            1259    33437 
   migrations    TABLE     ?   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            ?            1259    33435    migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    201            ?           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    200            ?            1259    33456    password_resets    TABLE     ?   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            ?            1259    33488 	   pemesanan    TABLE     ?  CREATE TABLE public.pemesanan (
    id integer NOT NULL,
    nama_barang character varying(50) NOT NULL,
    jumlah integer NOT NULL,
    harga double precision NOT NULL,
    tanggal_order date NOT NULL,
    tempat character varying(255) NOT NULL,
    no_telp character varying(255) NOT NULL,
    total_harga double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.pemesanan;
       public         heap    postgres    false            ?            1259    33486    pemesanan_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pemesanan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pemesanan_id_seq;
       public          postgres    false    206            ?           0    0    pemesanan_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pemesanan_id_seq OWNED BY public.pemesanan.id;
          public          postgres    false    205            ?            1259    33499 	   penjualan    TABLE       CREATE TABLE public.penjualan (
    id integer NOT NULL,
    nama_barang character varying(50) NOT NULL,
    jumlah integer NOT NULL,
    harga double precision NOT NULL,
    tanggal_jual date NOT NULL,
    total_harga double precision NOT NULL,
    info_jual double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.penjualan;
       public         heap    postgres    false            ?            1259    33497    penjualan_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.penjualan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.penjualan_id_seq;
       public          postgres    false    208            ?           0    0    penjualan_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.penjualan_id_seq OWNED BY public.penjualan.id;
          public          postgres    false    207            ?            1259    33630    pesanan_pelanggan    TABLE     ?  CREATE TABLE public.pesanan_pelanggan (
    id integer NOT NULL,
    nama_barang character varying(50) NOT NULL,
    jumlah integer NOT NULL,
    harga double precision NOT NULL,
    tanggal_order date NOT NULL,
    tempat character varying(255) NOT NULL,
    no_telp character varying(255) NOT NULL,
    total_harga double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.pesanan_pelanggan;
       public         heap    postgres    false            ?            1259    33628    pesanan_pelanggan_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pesanan_pelanggan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pesanan_pelanggan_id_seq;
       public          postgres    false    230            ?           0    0    pesanan_pelanggan_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pesanan_pelanggan_id_seq OWNED BY public.pesanan_pelanggan.id;
          public          postgres    false    229            ?            1259    33534    rekrut_pegawais    TABLE     ?  CREATE TABLE public.rekrut_pegawais (
    id integer NOT NULL,
    nama_pegawai character varying(255) NOT NULL,
    jenis_kelamin character varying(255) NOT NULL,
    no_hp integer NOT NULL,
    agama character varying(255) NOT NULL,
    alamat character varying(255) NOT NULL,
    pendidikan character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.rekrut_pegawais;
       public         heap    postgres    false            ?            1259    33532    rekrut_pegawais_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.rekrut_pegawais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.rekrut_pegawais_id_seq;
       public          postgres    false    216            ?           0    0    rekrut_pegawais_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.rekrut_pegawais_id_seq OWNED BY public.rekrut_pegawais.id;
          public          postgres    false    215            ?            1259    33657    sales_invoice    TABLE     ?  CREATE TABLE public.sales_invoice (
    id integer NOT NULL,
    invoice integer NOT NULL,
    idsalesorder integer NOT NULL,
    businesspartner character varying(50) NOT NULL,
    total integer NOT NULL,
    pajak character varying(255) NOT NULL,
    invoicedate date NOT NULL,
    duedate date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.sales_invoice;
       public         heap    postgres    false            ?            1259    33655    sales_invoice_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sales_invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sales_invoice_id_seq;
       public          postgres    false    236            ?           0    0    sales_invoice_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sales_invoice_id_seq OWNED BY public.sales_invoice.id;
          public          postgres    false    235            ?            1259    33641 
   sales_item    TABLE       CREATE TABLE public.sales_item (
    id integer NOT NULL,
    id_barang integer NOT NULL,
    jumlah integer NOT NULL,
    deskripsi character varying(50) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            ?            1259    33639    sales_item_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sales_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sales_item_id_seq;
       public          postgres    false    232            ?           0    0    sales_item_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sales_item_id_seq OWNED BY public.sales_item.id;
          public          postgres    false    231            ?            1259    33649    sales_order    TABLE     J  CREATE TABLE public.sales_order (
    id integer NOT NULL,
    id_barang integer NOT NULL,
    jumlah integer NOT NULL,
    salesorder integer NOT NULL,
    businesspartner character varying(50) NOT NULL,
    orderdate date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            ?            1259    33647    sales_order_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sales_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sales_order_id_seq;
       public          postgres    false    234            ?           0    0    sales_order_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.sales_order_id_seq OWNED BY public.sales_order.id;
          public          postgres    false    233            ?            1259    33622 
   staff_hrms    TABLE     
  CREATE TABLE public.staff_hrms (
    id integer NOT NULL,
    nama character varying(30) NOT NULL,
    alamat character varying(30) NOT NULL,
    no_hp integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.staff_hrms;
       public         heap    postgres    false            ?            1259    33620    staff_hrms_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.staff_hrms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.staff_hrms_id_seq;
       public          postgres    false    228            ?           0    0    staff_hrms_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.staff_hrms_id_seq OWNED BY public.staff_hrms.id;
          public          postgres    false    227            ?            1259    33526 
   transaksis    TABLE     ?   CREATE TABLE public.transaksis (
    id integer NOT NULL,
    nip integer NOT NULL,
    keterangan character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.transaksis;
       public         heap    postgres    false            ?            1259    33524    transaksis_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.transaksis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.transaksis_id_seq;
       public          postgres    false    214            ?           0    0    transaksis_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.transaksis_id_seq OWNED BY public.transaksis.id;
          public          postgres    false    213            ?            1259    33445    users    TABLE     C  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    33443    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    203            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    202            ?           2604    33591    akun id    DEFAULT     b   ALTER TABLE ONLY public.akun ALTER COLUMN id SET DEFAULT nextval('public.akun_id_seq'::regclass);
 6   ALTER TABLE public.akun ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            ?           2604    33602    akunLaba id    DEFAULT     n   ALTER TABLE ONLY public."akunLaba" ALTER COLUMN id SET DEFAULT nextval('public."akunLaba_id_seq"'::regclass);
 <   ALTER TABLE public."akunLaba" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    33548 	   barang id    DEFAULT     f   ALTER TABLE ONLY public.barang ALTER COLUMN id SET DEFAULT nextval('public.barang_id_seq'::regclass);
 8   ALTER TABLE public.barang ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            ?           2604    33510    data_gajis id    DEFAULT     n   ALTER TABLE ONLY public.data_gajis ALTER COLUMN id SET DEFAULT nextval('public.data_gajis_id_seq'::regclass);
 <   ALTER TABLE public.data_gajis ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ?           2604    33518    data_karyawans id    DEFAULT     v   ALTER TABLE ONLY public.data_karyawans ALTER COLUMN id SET DEFAULT nextval('public.data_karyawans_id_seq'::regclass);
 @   ALTER TABLE public.data_karyawans ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            ?           2604    33580    keuangan id    DEFAULT     j   ALTER TABLE ONLY public.keuangan ALTER COLUMN id SET DEFAULT nextval('public.keuangan_id_seq'::regclass);
 :   ALTER TABLE public.keuangan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    33613    labarugi id    DEFAULT     j   ALTER TABLE ONLY public.labarugi ALTER COLUMN id SET DEFAULT nextval('public.labarugi_id_seq'::regclass);
 :   ALTER TABLE public.labarugi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            ?           2604    33440    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            ?           2604    33491    pemesanan id    DEFAULT     l   ALTER TABLE ONLY public.pemesanan ALTER COLUMN id SET DEFAULT nextval('public.pemesanan_id_seq'::regclass);
 ;   ALTER TABLE public.pemesanan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206            ?           2604    33502    penjualan id    DEFAULT     l   ALTER TABLE ONLY public.penjualan ALTER COLUMN id SET DEFAULT nextval('public.penjualan_id_seq'::regclass);
 ;   ALTER TABLE public.penjualan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            ?           2604    33633    pesanan_pelanggan id    DEFAULT     |   ALTER TABLE ONLY public.pesanan_pelanggan ALTER COLUMN id SET DEFAULT nextval('public.pesanan_pelanggan_id_seq'::regclass);
 C   ALTER TABLE public.pesanan_pelanggan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            ?           2604    33537    rekrut_pegawais id    DEFAULT     x   ALTER TABLE ONLY public.rekrut_pegawais ALTER COLUMN id SET DEFAULT nextval('public.rekrut_pegawais_id_seq'::regclass);
 A   ALTER TABLE public.rekrut_pegawais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            ?           2604    33660    sales_invoice id    DEFAULT     t   ALTER TABLE ONLY public.sales_invoice ALTER COLUMN id SET DEFAULT nextval('public.sales_invoice_id_seq'::regclass);
 ?   ALTER TABLE public.sales_invoice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            ?           2604    33644    sales_item id    DEFAULT     n   ALTER TABLE ONLY public.sales_item ALTER COLUMN id SET DEFAULT nextval('public.sales_item_id_seq'::regclass);
 <   ALTER TABLE public.sales_item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            ?           2604    33652    sales_order id    DEFAULT     p   ALTER TABLE ONLY public.sales_order ALTER COLUMN id SET DEFAULT nextval('public.sales_order_id_seq'::regclass);
 =   ALTER TABLE public.sales_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            ?           2604    33625    staff_hrms id    DEFAULT     n   ALTER TABLE ONLY public.staff_hrms ALTER COLUMN id SET DEFAULT nextval('public.staff_hrms_id_seq'::regclass);
 <   ALTER TABLE public.staff_hrms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            ?           2604    33529    transaksis id    DEFAULT     n   ALTER TABLE ONLY public.transaksis ALTER COLUMN id SET DEFAULT nextval('public.transaksis_id_seq'::regclass);
 <   ALTER TABLE public.transaksis ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            ?           2604    33448    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            g          0    33588    akun 
   TABLE DATA           ]   COPY public.akun (id, no_akun, nama_akun, jumlah, total, created_at, updated_at) FROM stdin;
    public          postgres    false    222   n?       i          0    33599    akunLaba 
   TABLE DATA           o   COPY public."akunLaba" (id, "no_akunLaba", "nama_akunLaba", jumlah, total, created_at, updated_at) FROM stdin;
    public          postgres    false    224   ??       c          0    33545    barang 
   TABLE DATA           g   COPY public.barang (id, nama_barang, jumlah, harga, tanggal_order, created_at, updated_at) FROM stdin;
    public          postgres    false    218   ??       [          0    33507 
   data_gajis 
   TABLE DATA           W   COPY public.data_gajis (id, nama, nip, total_gaji, created_at, updated_at) FROM stdin;
    public          postgres    false    210   J?       ]          0    33515    data_karyawans 
   TABLE DATA           t   COPY public.data_karyawans (id, nama, jenis_kelamin, nip, no_hp, agama, alamat, created_at, updated_at) FROM stdin;
    public          postgres    false    212   ??       e          0    33577    keuangan 
   TABLE DATA           a   COPY public.keuangan (id, no_akun, nama_akun, jumlah, total, created_at, updated_at) FROM stdin;
    public          postgres    false    220   ۠       k          0    33610    labarugi 
   TABLE DATA           a   COPY public.labarugi (id, no_akun, nama_akun, jumlah, total, created_at, updated_at) FROM stdin;
    public          postgres    false    226   ??       R          0    33437 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    201   ?       U          0    33456    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    204   ??       W          0    33488 	   pemesanan 
   TABLE DATA           ?   COPY public.pemesanan (id, nama_barang, jumlah, harga, tanggal_order, tempat, no_telp, total_harga, created_at, updated_at) FROM stdin;
    public          postgres    false    206   ??       Y          0    33499 	   penjualan 
   TABLE DATA           ?   COPY public.penjualan (id, nama_barang, jumlah, harga, tanggal_jual, total_harga, info_jual, created_at, updated_at) FROM stdin;
    public          postgres    false    208   ?       o          0    33630    pesanan_pelanggan 
   TABLE DATA           ?   COPY public.pesanan_pelanggan (id, nama_barang, jumlah, harga, tanggal_order, tempat, no_telp, total_harga, created_at, updated_at) FROM stdin;
    public          postgres    false    230   2?       a          0    33534    rekrut_pegawais 
   TABLE DATA           ?   COPY public.rekrut_pegawais (id, nama_pegawai, jenis_kelamin, no_hp, agama, alamat, pendidikan, created_at, updated_at) FROM stdin;
    public          postgres    false    216   v?       u          0    33657    sales_invoice 
   TABLE DATA           ?   COPY public.sales_invoice (id, invoice, idsalesorder, businesspartner, total, pajak, invoicedate, duedate, created_at, updated_at) FROM stdin;
    public          postgres    false    236   ??       q          0    33641 
   sales_item 
   TABLE DATA           ^   COPY public.sales_item (id, id_barang, jumlah, deskripsi, created_at, updated_at) FROM stdin;
    public          postgres    false    232   ?       s          0    33649    sales_order 
   TABLE DATA           |   COPY public.sales_order (id, id_barang, jumlah, salesorder, businesspartner, orderdate, created_at, updated_at) FROM stdin;
    public          postgres    false    234   :?       m          0    33622 
   staff_hrms 
   TABLE DATA           U   COPY public.staff_hrms (id, nama, alamat, no_hp, created_at, updated_at) FROM stdin;
    public          postgres    false    228   W?       _          0    33526 
   transaksis 
   TABLE DATA           Q   COPY public.transaksis (id, nip, keterangan, created_at, updated_at) FROM stdin;
    public          postgres    false    214   ??       T          0    33445    users 
   TABLE DATA           b   COPY public.users (id, name, email, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    203   ??       ?           0    0    akunLaba_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."akunLaba_id_seq"', 1, false);
          public          postgres    false    223            ?           0    0    akun_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.akun_id_seq', 24, true);
          public          postgres    false    221            ?           0    0    barang_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.barang_id_seq', 3, true);
          public          postgres    false    217            ?           0    0    data_gajis_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.data_gajis_id_seq', 1, true);
          public          postgres    false    209            ?           0    0    data_karyawans_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.data_karyawans_id_seq', 1, true);
          public          postgres    false    211            ?           0    0    keuangan_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.keuangan_id_seq', 1, false);
          public          postgres    false    219            ?           0    0    labarugi_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.labarugi_id_seq', 1, false);
          public          postgres    false    225            ?           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 25, true);
          public          postgres    false    200            ?           0    0    pemesanan_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pemesanan_id_seq', 3, true);
          public          postgres    false    205            ?           0    0    penjualan_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.penjualan_id_seq', 1, false);
          public          postgres    false    207            ?           0    0    pesanan_pelanggan_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pesanan_pelanggan_id_seq', 1, true);
          public          postgres    false    229            ?           0    0    rekrut_pegawais_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.rekrut_pegawais_id_seq', 1, false);
          public          postgres    false    215            ?           0    0    sales_invoice_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sales_invoice_id_seq', 14, true);
          public          postgres    false    235            ?           0    0    sales_item_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sales_item_id_seq', 5, true);
          public          postgres    false    231            ?           0    0    sales_order_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sales_order_id_seq', 6, true);
          public          postgres    false    233            ?           0    0    staff_hrms_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.staff_hrms_id_seq', 1, true);
          public          postgres    false    227            ?           0    0    transaksis_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.transaksis_id_seq', 1, false);
          public          postgres    false    213            ?           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    202            ?           2606    33607    akunLaba akunLaba_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."akunLaba"
    ADD CONSTRAINT "akunLaba_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."akunLaba" DROP CONSTRAINT "akunLaba_pkey";
       public            postgres    false    224            ?           2606    33596    akun akun_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.akun
    ADD CONSTRAINT akun_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.akun DROP CONSTRAINT akun_pkey;
       public            postgres    false    222            ?           2606    33550    barang barang_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    218            ?           2606    33512    data_gajis data_gajis_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.data_gajis
    ADD CONSTRAINT data_gajis_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.data_gajis DROP CONSTRAINT data_gajis_pkey;
       public            postgres    false    210            ?           2606    33523 "   data_karyawans data_karyawans_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.data_karyawans
    ADD CONSTRAINT data_karyawans_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.data_karyawans DROP CONSTRAINT data_karyawans_pkey;
       public            postgres    false    212            ?           2606    33585    keuangan keuangan_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.keuangan
    ADD CONSTRAINT keuangan_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.keuangan DROP CONSTRAINT keuangan_pkey;
       public            postgres    false    220            ?           2606    33618    labarugi labarugi_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.labarugi
    ADD CONSTRAINT labarugi_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.labarugi DROP CONSTRAINT labarugi_pkey;
       public            postgres    false    226            ?           2606    33442    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    201            ?           2606    33496    pemesanan pemesanan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pemesanan
    ADD CONSTRAINT pemesanan_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pemesanan DROP CONSTRAINT pemesanan_pkey;
       public            postgres    false    206            ?           2606    33504    penjualan penjualan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.penjualan
    ADD CONSTRAINT penjualan_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.penjualan DROP CONSTRAINT penjualan_pkey;
       public            postgres    false    208            ?           2606    33638 (   pesanan_pelanggan pesanan_pelanggan_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.pesanan_pelanggan
    ADD CONSTRAINT pesanan_pelanggan_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.pesanan_pelanggan DROP CONSTRAINT pesanan_pelanggan_pkey;
       public            postgres    false    230            ?           2606    33542 $   rekrut_pegawais rekrut_pegawais_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.rekrut_pegawais
    ADD CONSTRAINT rekrut_pegawais_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.rekrut_pegawais DROP CONSTRAINT rekrut_pegawais_pkey;
       public            postgres    false    216            ?           2606    33662     sales_invoice sales_invoice_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.sales_invoice
    ADD CONSTRAINT sales_invoice_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.sales_invoice DROP CONSTRAINT sales_invoice_pkey;
       public            postgres    false    236            ?           2606    33646    sales_item sales_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    232            ?           2606    33654    sales_order sales_order_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    234            ?           2606    33627    staff_hrms staff_hrms_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.staff_hrms
    ADD CONSTRAINT staff_hrms_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.staff_hrms DROP CONSTRAINT staff_hrms_pkey;
       public            postgres    false    228            ?           2606    33531    transaksis transaksis_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.transaksis
    ADD CONSTRAINT transaksis_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.transaksis DROP CONSTRAINT transaksis_pkey;
       public            postgres    false    214            ?           2606    33455    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    203            ?           2606    33453    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203            ?           1259    33462    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    204            g   d  x?u?_o?0ş/??/??-?qf?Y???7_???J???[??;(ƲE ????p{.1ISn??}9Y5?e8???"?)7?d?e??'L L!???e?G?L??R9<???ƺ???a
QF????k2hf??t5?????HJ?wÎ?Q+R Ŵ4????H%?0E?˰?BD?????!?`z`9︚ ?rˍuc??b!??P??)?贶?&,g?Q?0mW?????vJP???f?Hϙ?k[IH? ?FrE)Ҹ?9?T1???m??V??_ƙ?aԊ?T]?l???-?̌l=7??q?ȴ?q3?PU?????f0?Yp??21R?)???0??y?J?Q?OҒ??܀°?0???/?$??(?~????      i      x?????? ? ?      c   ;   x?3??M?J??5?42  ed?k`?kd??D\Ɯ?@
N?9?Y?E?F8??qqq ???      [   ,   x?3?t???,NTN?)NL??I?? N#???"?=... #?      ]   E   x?3?t???,NTN?)NL??I?H-J?-(M??? Ncc?????\N???Ԣ??D?? ?????? ??      e      x?????? ? ?      k      x?????? ? ?      R   i  x?m??n? F?????\?e???4m???U{??)ZE?`??C?@ ???!xN???C?????@????1>??H?G??)F?`?Qj??????t?s?	??uC??g????AH?? ????q?y?C?l<??????Tx???dE GGNL_/»?[??#?o~?}???)?#?1? ]	F?~K?^?R,?Z???=K?!S?R'/?$?s?f?s?R??G?$ˆ??3??r8>d?Պm???_???gi?S????F?H?%
X??sل?q)l?I??t???{?B??l?/,,CN?ђ??Y/M??P????V!nE?L???Sh*???'?(???t?X??URu????PJ? 
??       U      x?????? ? ?      W   Z   x?3?N?M??4?42  ed?k`?kl????ia?i??".#N???R?jC??P?&Hj?9?J?M6?)N?)NI㴴D5<F??? `f      Y      x?????? ? ?      o   4   x?3?N?M??4?42  ed?k`?kd?S???il????"?=... BD      a      x?????? ? ?      u   z   x?3?44 C(m?????_?`?ib???4202?50?52Af????	????2???4???F????ф\??균P?%??(5??R?(5??RL??B?lD? ?e?1      q      x?????? ? ?      s      x?????? ? ?      m   1   x?3?t???,NTN?)NL??I????SpJ?N,?43???"?=... "X?      _      x?????? ? ?      T   ?   x?mȻ?0 й|?+?RC?D+T"????P(??7q??+EV$?VT"?9???Xu"*?hj??IS???~?w??x???U?????=;??1lé
???$S?D?F?G۟"?E?J???y9?{??5??2?5ج??OƇ0n+1	&Ě]??$??i7?i???;?     