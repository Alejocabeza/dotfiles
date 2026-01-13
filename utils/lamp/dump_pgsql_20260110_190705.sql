--
-- PostgreSQL database cluster dump
--

\restrict jreooABdzCO4g1Qib2Jnpqhvwgo7YWb2R95qwOkowyI3HKjJHrGHZhgd2awaQ8E

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE laravertex;
DROP DATABASE n8n;
DROP DATABASE nomiq;
DROP DATABASE root;




--
-- Drop roles
--

DROP ROLE root;


--
-- Roles
--

CREATE ROLE root;
ALTER ROLE root WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:RjA7/R4uh66tgbSsDifdiA==$kDo5x6ThzPoLjMb194IFC+zGQviTAMttkWN81na/MLQ=:zwvhH2iyZEK5JY3NJvjAMEwG5yhUKrXXuTS4Z11K+dk=';

--
-- User Configurations
--








\unrestrict jreooABdzCO4g1Qib2Jnpqhvwgo7YWb2R95qwOkowyI3HKjJHrGHZhgd2awaQ8E

--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

\restrict NCajuwbat6HUQCMgKlct4IHmErCEhWkidfFpkDgpRzHUdqdZbAqvxtA5nzdr2QA

-- Dumped from database version 17.7 (Debian 17.7-3.pgdg13+1)
-- Dumped by pg_dump version 17.7 (Debian 17.7-3.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO root;

\unrestrict NCajuwbat6HUQCMgKlct4IHmErCEhWkidfFpkDgpRzHUdqdZbAqvxtA5nzdr2QA
\connect template1
\restrict NCajuwbat6HUQCMgKlct4IHmErCEhWkidfFpkDgpRzHUdqdZbAqvxtA5nzdr2QA

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: root
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: root
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\unrestrict NCajuwbat6HUQCMgKlct4IHmErCEhWkidfFpkDgpRzHUdqdZbAqvxtA5nzdr2QA
\connect template1
\restrict NCajuwbat6HUQCMgKlct4IHmErCEhWkidfFpkDgpRzHUdqdZbAqvxtA5nzdr2QA

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: root
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict NCajuwbat6HUQCMgKlct4IHmErCEhWkidfFpkDgpRzHUdqdZbAqvxtA5nzdr2QA

--
-- Database "laravertex" dump
--

--
-- PostgreSQL database dump
--

\restrict jH2Rfn0y2Qar4wRn9GelTd5dtc9CITxwlHbCituNXOvd1ST0d2kBTrMdKDhpmlr

-- Dumped from database version 17.7 (Debian 17.7-3.pgdg13+1)
-- Dumped by pg_dump version 17.7 (Debian 17.7-3.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: laravertex; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE laravertex WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE laravertex OWNER TO root;

\unrestrict jH2Rfn0y2Qar4wRn9GelTd5dtc9CITxwlHbCituNXOvd1ST0d2kBTrMdKDhpmlr
\connect laravertex
\restrict jH2Rfn0y2Qar4wRn9GelTd5dtc9CITxwlHbCituNXOvd1ST0d2kBTrMdKDhpmlr

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.accounts (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    initial_balance numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    currency_code character varying(255) DEFAULT 'USD'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    current_balance numeric(15,2) DEFAULT '0'::numeric NOT NULL
);


ALTER TABLE public.accounts OWNER TO root;

--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accounts_id_seq OWNER TO root;

--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;


--
-- Name: activity_log; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.activity_log (
    id bigint NOT NULL,
    log_name character varying(255),
    description text NOT NULL,
    subject_type character varying(255),
    subject_id bigint,
    causer_type character varying(255),
    causer_id bigint,
    properties json,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    event character varying(255),
    batch_uuid uuid
);


ALTER TABLE public.activity_log OWNER TO root;

--
-- Name: activity_log_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.activity_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.activity_log_id_seq OWNER TO root;

--
-- Name: activity_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.activity_log_id_seq OWNED BY public.activity_log.id;


--
-- Name: cache; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO root;

--
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO root;

--
-- Name: clients; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.clients (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    tax_id character varying(255),
    address text,
    phone character varying(255),
    email character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.clients OWNER TO root;

--
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clients_id_seq OWNER TO root;

--
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;


--
-- Name: crypto_subscriptions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.crypto_subscriptions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    cryptomus_uuid character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    amount numeric(15,8) NOT NULL,
    currency character varying(10) DEFAULT 'USD'::character varying NOT NULL,
    period character varying(255) NOT NULL,
    status character varying(255) DEFAULT 'wait_accept'::character varying NOT NULL,
    started_at timestamp(0) without time zone,
    next_billing_at timestamp(0) without time zone,
    last_pay_off timestamp(0) without time zone,
    cryptomus_data json,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    plan_id bigint,
    CONSTRAINT crypto_subscriptions_period_check CHECK (((period)::text = ANY (ARRAY[('weekly'::character varying)::text, ('monthly'::character varying)::text, ('three_month'::character varying)::text]))),
    CONSTRAINT crypto_subscriptions_status_check CHECK (((status)::text = ANY ((ARRAY['wait_accept'::character varying, 'active'::character varying, 'cancel_by_merchant'::character varying, 'cancel_by_user'::character varying])::text[])))
);


ALTER TABLE public.crypto_subscriptions OWNER TO root;

--
-- Name: crypto_subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.crypto_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.crypto_subscriptions_id_seq OWNER TO root;

--
-- Name: crypto_subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.crypto_subscriptions_id_seq OWNED BY public.crypto_subscriptions.id;


--
-- Name: expenses; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.expenses (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    account_id bigint NOT NULL,
    provider_id bigint,
    order_id bigint,
    amount numeric(15,2) NOT NULL,
    category character varying(255) NOT NULL,
    receipt_path character varying(255),
    date date NOT NULL,
    is_recurring boolean DEFAULT false NOT NULL,
    recurrence_interval character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.expenses OWNER TO root;

--
-- Name: expenses_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.expenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.expenses_id_seq OWNER TO root;

--
-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.expenses_id_seq OWNED BY public.expenses.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO root;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO root;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: feedback; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.feedback (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    subject character varying(255) NOT NULL,
    message text NOT NULL,
    type character varying(255) DEFAULT 'support'::character varying NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.feedback OWNER TO root;

--
-- Name: feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.feedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.feedback_id_seq OWNER TO root;

--
-- Name: feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.feedback_id_seq OWNED BY public.feedback.id;


--
-- Name: incomes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.incomes (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    account_id bigint NOT NULL,
    order_id bigint,
    amount numeric(15,2) NOT NULL,
    reference character varying(255),
    date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.incomes OWNER TO root;

--
-- Name: incomes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.incomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.incomes_id_seq OWNER TO root;

--
-- Name: incomes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.incomes_id_seq OWNED BY public.incomes.id;


--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO root;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO root;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO root;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO root;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO root;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: model_has_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_permissions OWNER TO root;

--
-- Name: model_has_roles; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_roles OWNER TO root;

--
-- Name: notifications; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.notifications (
    id uuid NOT NULL,
    type character varying(255) NOT NULL,
    notifiable_type character varying(255) NOT NULL,
    notifiable_id bigint NOT NULL,
    data json NOT NULL,
    read_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.notifications OWNER TO root;

--
-- Name: order_items; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.order_items (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    product_id bigint,
    service_id bigint,
    name character varying(255) NOT NULL,
    price numeric(15,2) NOT NULL,
    cost numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    quantity numeric(15,2) NOT NULL,
    tax_rate numeric(5,2) DEFAULT '0'::numeric NOT NULL,
    subtotal numeric(15,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.order_items OWNER TO root;

--
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_items_id_seq OWNER TO root;

--
-- Name: order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    client_id bigint,
    provider_id bigint,
    folio character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    total numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    tax_amount numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    paid_amount numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    date date NOT NULL,
    currency_code character varying(255) DEFAULT 'USD'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    pdf_path character varying(255)
);


ALTER TABLE public.orders OWNER TO root;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO root;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO root;

--
-- Name: payments; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.payments (
    id bigint NOT NULL,
    subscription_id bigint NOT NULL,
    user_id bigint NOT NULL,
    cryptomus_uuid character varying(255) NOT NULL,
    amount numeric(15,8) NOT NULL,
    currency character varying(10) DEFAULT 'USD'::character varying NOT NULL,
    payment_amount numeric(15,8),
    payment_amount_usd numeric(15,8),
    merchant_amount numeric(15,8),
    commission numeric(15,8),
    status character varying(255) DEFAULT 'confirm_check'::character varying NOT NULL,
    payer_currency character varying(10),
    network character varying(255),
    txid character varying(255),
    from_address character varying(255),
    is_final boolean DEFAULT false NOT NULL,
    cryptomus_data json,
    paid_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT payments_status_check CHECK (((status)::text = ANY ((ARRAY['confirm_check'::character varying, 'paid'::character varying, 'paid_over'::character varying, 'fail'::character varying, 'wrong_amount'::character varying, 'cancel'::character varying, 'system_fail'::character varying, 'refund_process'::character varying, 'refund_fail'::character varying, 'refund_paid'::character varying])::text[])))
);


ALTER TABLE public.payments OWNER TO root;

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payments_id_seq OWNER TO root;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.permissions OWNER TO root;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permissions_id_seq OWNER TO root;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name text NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO root;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO root;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: plan_features; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.plan_features (
    id bigint NOT NULL,
    plan_id bigint NOT NULL,
    model character varying(255),
    "limit" integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL
);


ALTER TABLE public.plan_features OWNER TO root;

--
-- Name: plan_features_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.plan_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.plan_features_id_seq OWNER TO root;

--
-- Name: plan_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.plan_features_id_seq OWNED BY public.plan_features.id;


--
-- Name: plans; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.plans (
    id bigint NOT NULL,
    slug character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL,
    currency character varying(255) DEFAULT 'USD'::character varying NOT NULL,
    "interval" character varying(255) DEFAULT 'month'::character varying NOT NULL,
    trial_period_days integer,
    stripe_product_id character varying(255),
    stripe_price_id character varying(255),
    cryptomus_uuid character varying(255),
    is_active boolean DEFAULT true NOT NULL,
    is_featured boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) DEFAULT 'Unnamed Plan'::character varying NOT NULL,
    description text
);


ALTER TABLE public.plans OWNER TO root;

--
-- Name: plans_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.plans_id_seq OWNER TO root;

--
-- Name: plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.plans_id_seq OWNED BY public.plans.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.posts (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    content text NOT NULL,
    seo_title character varying(255),
    seo_description text,
    published_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.posts OWNER TO root;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO root;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    sku character varying(255),
    name character varying(255) NOT NULL,
    price numeric(15,2) NOT NULL,
    cost numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    stock_current numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    stock_alert numeric(15,2) DEFAULT '1'::numeric NOT NULL,
    tax_rate numeric(5,2) DEFAULT '0'::numeric NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.products OWNER TO root;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO root;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: providers; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.providers (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    tax_id character varying(255),
    bank_details text,
    category character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.providers OWNER TO root;

--
-- Name: providers_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.providers_id_seq OWNER TO root;

--
-- Name: providers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.providers_id_seq OWNED BY public.providers.id;


--
-- Name: role_has_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.role_has_permissions OWNER TO root;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.roles OWNER TO root;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO root;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.services (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    price numeric(15,2) NOT NULL,
    tax_rate numeric(5,2) DEFAULT '0'::numeric NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.services OWNER TO root;

--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.services_id_seq OWNER TO root;

--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


ALTER TABLE public.sessions OWNER TO root;

--
-- Name: subscription_items; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.subscription_items (
    id bigint NOT NULL,
    subscription_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    stripe_product character varying(255) NOT NULL,
    stripe_price character varying(255) NOT NULL,
    quantity integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    meter_id character varying(255),
    meter_event_name character varying(255)
);


ALTER TABLE public.subscription_items OWNER TO root;

--
-- Name: subscription_items_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.subscription_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subscription_items_id_seq OWNER TO root;

--
-- Name: subscription_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.subscription_items_id_seq OWNED BY public.subscription_items.id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.subscriptions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    type character varying(255) NOT NULL,
    stripe_id character varying(255) NOT NULL,
    stripe_status character varying(255) NOT NULL,
    stripe_price character varying(255),
    quantity integer,
    trial_ends_at timestamp(0) without time zone,
    ends_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.subscriptions OWNER TO root;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subscriptions_id_seq OWNER TO root;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;


--
-- Name: team_invitations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.team_invitations (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    email character varying(255) NOT NULL,
    role character varying(255),
    token character varying(64) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.team_invitations OWNER TO root;

--
-- Name: team_invitations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.team_invitations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.team_invitations_id_seq OWNER TO root;

--
-- Name: team_invitations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.team_invitations_id_seq OWNED BY public.team_invitations.id;


--
-- Name: team_user; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.team_user (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    user_id bigint NOT NULL,
    role character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.team_user OWNER TO root;

--
-- Name: team_user_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.team_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.team_user_id_seq OWNER TO root;

--
-- Name: team_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.team_user_id_seq OWNED BY public.team_user.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.teams (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    personal_team boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    currency_code character varying(255) DEFAULT 'USD'::character varying NOT NULL,
    tax_id character varying(255),
    address text,
    phone character varying(255),
    invoice_prefix character varying(255),
    logo_path character varying(255)
);


ALTER TABLE public.teams OWNER TO root;

--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teams_id_seq OWNER TO root;

--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- Name: telescope_entries; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.telescope_entries (
    sequence bigint NOT NULL,
    uuid uuid NOT NULL,
    batch_id uuid NOT NULL,
    family_hash character varying(255),
    should_display_on_index boolean DEFAULT true NOT NULL,
    type character varying(20) NOT NULL,
    content text NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.telescope_entries OWNER TO root;

--
-- Name: telescope_entries_sequence_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.telescope_entries_sequence_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.telescope_entries_sequence_seq OWNER TO root;

--
-- Name: telescope_entries_sequence_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.telescope_entries_sequence_seq OWNED BY public.telescope_entries.sequence;


--
-- Name: telescope_entries_tags; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.telescope_entries_tags (
    entry_uuid uuid NOT NULL,
    tag character varying(255) NOT NULL
);


ALTER TABLE public.telescope_entries_tags OWNER TO root;

--
-- Name: telescope_monitoring; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.telescope_monitoring (
    tag character varying(255) NOT NULL
);


ALTER TABLE public.telescope_monitoring OWNER TO root;

--
-- Name: users; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    google_id character varying(255),
    github_id character varying(255),
    apple_id character varying(255),
    stripe_id character varying(255),
    pm_type character varying(255),
    pm_last_four character varying(4),
    trial_ends_at timestamp(0) without time zone,
    current_team_id bigint,
    locale character varying(255) DEFAULT 'en'::character varying NOT NULL
);


ALTER TABLE public.users OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: accounts id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);


--
-- Name: activity_log id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.activity_log ALTER COLUMN id SET DEFAULT nextval('public.activity_log_id_seq'::regclass);


--
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);


--
-- Name: crypto_subscriptions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.crypto_subscriptions ALTER COLUMN id SET DEFAULT nextval('public.crypto_subscriptions_id_seq'::regclass);


--
-- Name: expenses id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses ALTER COLUMN id SET DEFAULT nextval('public.expenses_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: feedback id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.feedback ALTER COLUMN id SET DEFAULT nextval('public.feedback_id_seq'::regclass);


--
-- Name: incomes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.incomes ALTER COLUMN id SET DEFAULT nextval('public.incomes_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: order_items id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: plan_features id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.plan_features ALTER COLUMN id SET DEFAULT nextval('public.plan_features_id_seq'::regclass);


--
-- Name: plans id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.plans ALTER COLUMN id SET DEFAULT nextval('public.plans_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: providers id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.providers ALTER COLUMN id SET DEFAULT nextval('public.providers_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: services id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- Name: subscription_items id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_items ALTER COLUMN id SET DEFAULT nextval('public.subscription_items_id_seq'::regclass);


--
-- Name: subscriptions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);


--
-- Name: team_invitations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_invitations ALTER COLUMN id SET DEFAULT nextval('public.team_invitations_id_seq'::regclass);


--
-- Name: team_user id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_user ALTER COLUMN id SET DEFAULT nextval('public.team_user_id_seq'::regclass);


--
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- Name: telescope_entries sequence; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.telescope_entries ALTER COLUMN sequence SET DEFAULT nextval('public.telescope_entries_sequence_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.accounts (id, team_id, name, type, initial_balance, currency_code, created_at, updated_at, current_balance) FROM stdin;
\.


--
-- Data for Name: activity_log; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.activity_log (id, log_name, description, subject_type, subject_id, causer_type, causer_id, properties, created_at, updated_at, event, batch_uuid) FROM stdin;
1	default	created	App\\Models\\User	1	\N	\N	{"attributes":{"name":"Super Admin","email":"admin@example.com"}}	2026-01-06 14:09:33	2026-01-06 14:09:33	created	\N
\.


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.cache (key, value, expiration) FROM stdin;
\.


--
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.clients (id, team_id, name, tax_id, address, phone, email, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: crypto_subscriptions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.crypto_subscriptions (id, user_id, cryptomus_uuid, name, amount, currency, period, status, started_at, next_billing_at, last_pay_off, cryptomus_data, created_at, updated_at, plan_id) FROM stdin;
\.


--
-- Data for Name: expenses; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.expenses (id, team_id, account_id, provider_id, order_id, amount, category, receipt_path, date, is_recurring, recurrence_interval, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
1	8b204d19-6e64-4b80-8ae3-34a4f4cfb82b	database	default	{"uuid":"8b204d19-6e64-4b80-8ae3-34a4f4cfb82b","displayName":"App\\\\Jobs\\\\SendWelcomeEmail","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"failOnTimeout":false,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"App\\\\Jobs\\\\SendWelcomeEmail","command":"O:25:\\"App\\\\Jobs\\\\SendWelcomeEmail\\":1:{s:4:\\"user\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":5:{s:5:\\"class\\";s:15:\\"App\\\\Models\\\\User\\";s:2:\\"id\\";i:1;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"pgsql\\";s:15:\\"collectionClass\\";N;}}"},"createdAt":1767708573,"telescope_uuid":null,"delay":null}	InvalidArgumentException: View [common.emails.welcome] not found. in /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php:138\nStack trace:\n#0 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php(78): Illuminate\\View\\FileViewFinder->findInPaths('common.emails.w...', Array)\n#1 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/View/Factory.php(150): Illuminate\\View\\FileViewFinder->find('common.emails.w...')\n#2 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Mail/Markdown.php(93): Illuminate\\View\\Factory->make('common.emails.w...', Array)\n#3 [internal function]: Illuminate\\Mail\\Markdown->{closure:Illuminate\\Mail\\Markdown::render():77}()\n#4 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/View/Compilers/BladeCompiler.php(1035): call_user_func(Object(Closure))\n#5 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Mail/Markdown.php(75): Illuminate\\View\\Compilers\\BladeCompiler->usingEchoFormat('new \\\\Illuminate...', Object(Closure))\n#6 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(387): Illuminate\\Mail\\Markdown->render('common.emails.w...', Array)\n#7 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Collections/helpers.php(266): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::buildMarkdownHtml():387}(Array)\n#8 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(440): value(Object(Closure), Array)\n#9 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(419): Illuminate\\Mail\\Mailer->renderView(Object(Closure), Array)\n#10 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(312): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), Object(Closure), Object(Closure), NULL, Array)\n#11 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailer->send(Object(Closure), Array, Object(Closure))\n#12 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->{closure:Illuminate\\Mail\\Mailable::send():200}()\n#13 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(200): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#14 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(353): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#15 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(300): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\WelcomeEmail))\n#16 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(123): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\WelcomeEmail))\n#17 /home/alejandrocabeza/workspace/nomiq/app/Jobs/SendWelcomeEmail.php(28): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\WelcomeEmail))\n#18 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#19 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#20 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#21 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#22 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Container/Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#23 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#24 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():126}(Object(App\\Jobs\\SendWelcomeEmail))\n#25 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():178}(Object(App\\Jobs\\SendWelcomeEmail))\n#26 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#28 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():127}(Object(App\\Jobs\\SendWelcomeEmail))\n#29 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():178}(Object(App\\Jobs\\SendWelcomeEmail))\n#30 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#32 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#33 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(487): Illuminate\\Queue\\Jobs\\Job->fire()\n#34 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(437): Illuminate\\Queue\\Worker->process('database', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#35 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(358): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 'database', Object(Illuminate\\Queue\\WorkerOptions))\n#36 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob('database', 'default', Object(Illuminate\\Queue\\WorkerOptions))\n#37 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker('database', 'default')\n#38 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#39 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#40 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#41 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#42 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Container/Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#43 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call(Array)\n#44 /home/alejandrocabeza/workspace/nomiq/vendor/symfony/console/Command/Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#45 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#46 /home/alejandrocabeza/workspace/nomiq/vendor/symfony/console/Application.php(1102): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /home/alejandrocabeza/workspace/nomiq/vendor/symfony/console/Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /home/alejandrocabeza/workspace/nomiq/vendor/symfony/console/Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(197): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 /home/alejandrocabeza/workspace/nomiq/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 /home/alejandrocabeza/workspace/nomiq/artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#52 {main}	2026-01-06 14:09:35
\.


--
-- Data for Name: feedback; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.feedback (id, user_id, subject, message, type, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: incomes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.incomes (id, team_id, account_id, order_id, amount, reference, date, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	0001_01_01_000000_create_users_table	1
2	0001_01_01_000001_create_cache_table	1
3	0001_01_01_000002_create_jobs_table	1
4	2025_12_11_153128_add_oauth_fields_to_users_table	1
5	2025_12_11_155902_add_apple_id_to_users_table	1
6	2025_12_11_171001_create_crypto_subscriptions_table	1
7	2025_12_11_171003_create_payments_table	1
8	2025_12_14_050625_create_telescope_entries_table	1
9	2025_12_14_103421_add_oauth_fields_to_users_table	1
10	2025_12_14_104711_create_permission_tables	1
11	2025_12_17_023333_create_customer_columns	1
12	2025_12_17_023334_create_subscriptions_table	1
13	2025_12_17_023335_create_subscription_items_table	1
14	2025_12_17_023336_add_meter_id_to_subscription_items_table	1
15	2025_12_17_023337_add_meter_event_name_to_subscription_items_table	1
16	2025_12_17_182519_create_team_user_table	1
17	2025_12_17_182519_create_teams_table	1
18	2025_12_17_182520_add_current_team_id_to_users_table	1
19	2025_12_17_185253_create_plans_table	1
20	2025_12_18_040132_create_personal_access_tokens_table	1
21	2025_12_19_054411_add_yearly_to_crypto_subscriptions_period_enum	1
22	2025_12_19_054947_add_locale_to_users_table	1
23	2025_12_19_155344_create_activity_log_table	1
24	2025_12_19_155345_add_event_column_to_activity_log_table	1
25	2025_12_19_155346_add_batch_uuid_column_to_activity_log_table	1
26	2025_12_19_190448_create_feedback_table	1
27	2025_12_19_190828_create_posts_table	1
28	2025_12_19_210706_make_plan_fields_translatable	1
29	2025_12_24_021438_create_team_invitations_table	1
30	2025_12_29_101938_create_plan_features_table	1
31	2025_12_29_101939_remove_features_from_plans_table	1
32	2025_12_29_111756_revert_plan_fields_to_string	1
33	2025_12_29_111922_change_plans_columns_to_text	1
34	2025_12_29_112443_change_plan_features_name_to_string	1
35	2026_01_04_170722_create_notifications_table	1
36	2026_01_06_022513_add_business_fields_to_teams_table	1
37	2026_01_06_022534_create_accounts_table	1
38	2026_01_06_022534_create_clients_table	1
39	2026_01_06_022534_create_providers_table	1
40	2026_01_06_022602_create_products_table	1
41	2026_01_06_022602_create_services_table	1
42	2026_01_06_022618_create_orders_table	1
43	2026_01_06_022619_create_order_items_table	1
44	2026_01_06_022620_create_incomes_table	1
45	2026_01_06_022621_create_expenses_table	1
46	2026_01_06_024427_add_current_balance_to_accounts_table	1
47	2026_01_06_024743_add_pdf_path_to_orders_table	1
48	2026_01_06_144232_add_plan_id_to_crypto_subscriptions_table	2
\.


--
-- Data for Name: model_has_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
\.


--
-- Data for Name: model_has_roles; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
1	App\\Models\\User	1
2	App\\Models\\User	1
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.notifications (id, type, notifiable_type, notifiable_id, data, read_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.order_items (id, order_id, product_id, service_id, name, price, cost, quantity, tax_rate, subtotal, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.orders (id, team_id, client_id, provider_id, folio, type, status, total, tax_amount, paid_amount, date, currency_code, created_at, updated_at, pdf_path) FROM stdin;
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.payments (id, subscription_id, user_id, cryptomus_uuid, amount, currency, payment_amount, payment_amount_usd, merchant_amount, commission, status, payer_currency, network, txid, from_address, is_final, cryptomus_data, paid_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
1	ViewAny:Activity	web	2026-01-06 14:09:33	2026-01-06 14:09:33
2	View:Activity	web	2026-01-06 14:09:33	2026-01-06 14:09:33
3	Create:Activity	web	2026-01-06 14:09:33	2026-01-06 14:09:33
4	Update:Activity	web	2026-01-06 14:09:33	2026-01-06 14:09:33
5	Delete:Activity	web	2026-01-06 14:09:33	2026-01-06 14:09:33
6	Restore:Activity	web	2026-01-06 14:09:33	2026-01-06 14:09:33
7	ForceDelete:Activity	web	2026-01-06 14:09:33	2026-01-06 14:09:33
8	ForceDeleteAny:Activity	web	2026-01-06 14:09:33	2026-01-06 14:09:33
9	RestoreAny:Activity	web	2026-01-06 14:09:33	2026-01-06 14:09:33
10	Replicate:Activity	web	2026-01-06 14:09:33	2026-01-06 14:09:33
11	Reorder:Activity	web	2026-01-06 14:09:33	2026-01-06 14:09:33
12	ViewAny:CryptoSubscription	web	2026-01-06 14:09:33	2026-01-06 14:09:33
13	View:CryptoSubscription	web	2026-01-06 14:09:33	2026-01-06 14:09:33
14	Create:CryptoSubscription	web	2026-01-06 14:09:33	2026-01-06 14:09:33
15	Update:CryptoSubscription	web	2026-01-06 14:09:33	2026-01-06 14:09:33
16	Delete:CryptoSubscription	web	2026-01-06 14:09:33	2026-01-06 14:09:33
17	Restore:CryptoSubscription	web	2026-01-06 14:09:33	2026-01-06 14:09:33
18	ForceDelete:CryptoSubscription	web	2026-01-06 14:09:33	2026-01-06 14:09:33
19	ForceDeleteAny:CryptoSubscription	web	2026-01-06 14:09:33	2026-01-06 14:09:33
20	RestoreAny:CryptoSubscription	web	2026-01-06 14:09:33	2026-01-06 14:09:33
21	Replicate:CryptoSubscription	web	2026-01-06 14:09:33	2026-01-06 14:09:33
22	Reorder:CryptoSubscription	web	2026-01-06 14:09:33	2026-01-06 14:09:33
23	ViewAny:Feedback	web	2026-01-06 14:09:33	2026-01-06 14:09:33
24	View:Feedback	web	2026-01-06 14:09:33	2026-01-06 14:09:33
25	Create:Feedback	web	2026-01-06 14:09:33	2026-01-06 14:09:33
26	Update:Feedback	web	2026-01-06 14:09:33	2026-01-06 14:09:33
27	Delete:Feedback	web	2026-01-06 14:09:33	2026-01-06 14:09:33
28	Restore:Feedback	web	2026-01-06 14:09:33	2026-01-06 14:09:33
29	ForceDelete:Feedback	web	2026-01-06 14:09:33	2026-01-06 14:09:33
30	ForceDeleteAny:Feedback	web	2026-01-06 14:09:33	2026-01-06 14:09:33
31	RestoreAny:Feedback	web	2026-01-06 14:09:33	2026-01-06 14:09:33
32	Replicate:Feedback	web	2026-01-06 14:09:33	2026-01-06 14:09:33
33	Reorder:Feedback	web	2026-01-06 14:09:33	2026-01-06 14:09:33
34	ViewAny:Payment	web	2026-01-06 14:09:33	2026-01-06 14:09:33
35	View:Payment	web	2026-01-06 14:09:33	2026-01-06 14:09:33
36	Create:Payment	web	2026-01-06 14:09:33	2026-01-06 14:09:33
37	Update:Payment	web	2026-01-06 14:09:33	2026-01-06 14:09:33
38	Delete:Payment	web	2026-01-06 14:09:33	2026-01-06 14:09:33
39	Restore:Payment	web	2026-01-06 14:09:33	2026-01-06 14:09:33
40	ForceDelete:Payment	web	2026-01-06 14:09:33	2026-01-06 14:09:33
41	ForceDeleteAny:Payment	web	2026-01-06 14:09:33	2026-01-06 14:09:33
42	RestoreAny:Payment	web	2026-01-06 14:09:33	2026-01-06 14:09:33
43	Replicate:Payment	web	2026-01-06 14:09:33	2026-01-06 14:09:33
44	Reorder:Payment	web	2026-01-06 14:09:33	2026-01-06 14:09:33
45	ViewAny:Plan	web	2026-01-06 14:09:33	2026-01-06 14:09:33
46	View:Plan	web	2026-01-06 14:09:33	2026-01-06 14:09:33
47	Create:Plan	web	2026-01-06 14:09:33	2026-01-06 14:09:33
48	Update:Plan	web	2026-01-06 14:09:33	2026-01-06 14:09:33
49	Delete:Plan	web	2026-01-06 14:09:33	2026-01-06 14:09:33
50	Restore:Plan	web	2026-01-06 14:09:33	2026-01-06 14:09:33
51	ForceDelete:Plan	web	2026-01-06 14:09:33	2026-01-06 14:09:33
52	ForceDeleteAny:Plan	web	2026-01-06 14:09:33	2026-01-06 14:09:33
53	RestoreAny:Plan	web	2026-01-06 14:09:33	2026-01-06 14:09:33
54	Replicate:Plan	web	2026-01-06 14:09:33	2026-01-06 14:09:33
55	Reorder:Plan	web	2026-01-06 14:09:33	2026-01-06 14:09:33
56	ViewAny:Post	web	2026-01-06 14:09:33	2026-01-06 14:09:33
57	View:Post	web	2026-01-06 14:09:33	2026-01-06 14:09:33
58	Create:Post	web	2026-01-06 14:09:33	2026-01-06 14:09:33
59	Update:Post	web	2026-01-06 14:09:33	2026-01-06 14:09:33
60	Delete:Post	web	2026-01-06 14:09:33	2026-01-06 14:09:33
61	Restore:Post	web	2026-01-06 14:09:33	2026-01-06 14:09:33
62	ForceDelete:Post	web	2026-01-06 14:09:33	2026-01-06 14:09:33
63	ForceDeleteAny:Post	web	2026-01-06 14:09:33	2026-01-06 14:09:33
64	RestoreAny:Post	web	2026-01-06 14:09:33	2026-01-06 14:09:33
65	Replicate:Post	web	2026-01-06 14:09:33	2026-01-06 14:09:33
66	Reorder:Post	web	2026-01-06 14:09:33	2026-01-06 14:09:33
67	ViewAny:Role	web	2026-01-06 14:09:33	2026-01-06 14:09:33
68	View:Role	web	2026-01-06 14:09:33	2026-01-06 14:09:33
69	Create:Role	web	2026-01-06 14:09:33	2026-01-06 14:09:33
70	Update:Role	web	2026-01-06 14:09:33	2026-01-06 14:09:33
71	Delete:Role	web	2026-01-06 14:09:33	2026-01-06 14:09:33
72	Restore:Role	web	2026-01-06 14:09:33	2026-01-06 14:09:33
73	ForceDelete:Role	web	2026-01-06 14:09:33	2026-01-06 14:09:33
74	ForceDeleteAny:Role	web	2026-01-06 14:09:33	2026-01-06 14:09:33
75	RestoreAny:Role	web	2026-01-06 14:09:33	2026-01-06 14:09:33
76	Replicate:Role	web	2026-01-06 14:09:33	2026-01-06 14:09:33
77	Reorder:Role	web	2026-01-06 14:09:33	2026-01-06 14:09:33
78	ViewAny:Team	web	2026-01-06 14:09:33	2026-01-06 14:09:33
79	View:Team	web	2026-01-06 14:09:33	2026-01-06 14:09:33
80	Create:Team	web	2026-01-06 14:09:33	2026-01-06 14:09:33
81	Update:Team	web	2026-01-06 14:09:33	2026-01-06 14:09:33
82	Delete:Team	web	2026-01-06 14:09:33	2026-01-06 14:09:33
83	Restore:Team	web	2026-01-06 14:09:33	2026-01-06 14:09:33
84	ForceDelete:Team	web	2026-01-06 14:09:33	2026-01-06 14:09:33
85	ForceDeleteAny:Team	web	2026-01-06 14:09:33	2026-01-06 14:09:33
86	RestoreAny:Team	web	2026-01-06 14:09:33	2026-01-06 14:09:33
87	Replicate:Team	web	2026-01-06 14:09:33	2026-01-06 14:09:33
88	Reorder:Team	web	2026-01-06 14:09:33	2026-01-06 14:09:33
89	ViewAny:User	web	2026-01-06 14:09:33	2026-01-06 14:09:33
90	View:User	web	2026-01-06 14:09:33	2026-01-06 14:09:33
91	Create:User	web	2026-01-06 14:09:33	2026-01-06 14:09:33
92	Update:User	web	2026-01-06 14:09:33	2026-01-06 14:09:33
93	Delete:User	web	2026-01-06 14:09:33	2026-01-06 14:09:33
94	Restore:User	web	2026-01-06 14:09:33	2026-01-06 14:09:33
95	ForceDelete:User	web	2026-01-06 14:09:33	2026-01-06 14:09:33
96	ForceDeleteAny:User	web	2026-01-06 14:09:33	2026-01-06 14:09:33
97	RestoreAny:User	web	2026-01-06 14:09:33	2026-01-06 14:09:33
98	Replicate:User	web	2026-01-06 14:09:33	2026-01-06 14:09:33
99	Reorder:User	web	2026-01-06 14:09:34	2026-01-06 14:09:34
100	View:StatsOverview	web	2026-01-06 14:09:34	2026-01-06 14:09:34
101	View:SubscriptionsByPlanChart	web	2026-01-06 14:09:34	2026-01-06 14:09:34
102	View:UserGrowthChart	web	2026-01-06 14:09:34	2026-01-06 14:09:34
103	View:RevenueTrendChart	web	2026-01-06 14:09:34	2026-01-06 14:09:34
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: plan_features; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.plan_features (id, plan_id, model, "limit", created_at, updated_at, name) FROM stdin;
1	1	App\\Models\\Product	50	2026-01-06 14:09:34	2026-01-06 14:09:34	Productos
2	1	App\\Models\\Client	20	2026-01-06 14:09:34	2026-01-06 14:09:34	Clientes
3	1	App\\Models\\Order	10	2026-01-06 14:09:34	2026-01-06 14:09:34	Pedidos Mensuales
4	2	App\\Models\\Product	50	2026-01-06 14:09:34	2026-01-06 14:09:34	Productos
5	2	App\\Models\\Client	20	2026-01-06 14:09:34	2026-01-06 14:09:34	Clientes
6	2	App\\Models\\Order	10	2026-01-06 14:09:34	2026-01-06 14:09:34	Pedidos Mensuales
7	3	App\\Models\\Product	500	2026-01-06 14:09:34	2026-01-06 14:09:34	Productos
8	3	App\\Models\\Client	200	2026-01-06 14:09:34	2026-01-06 14:09:34	Clientes
9	3	App\\Models\\Order	100	2026-01-06 14:09:34	2026-01-06 14:09:34	Pedidos Mensuales
10	4	App\\Models\\Product	500	2026-01-06 14:09:34	2026-01-06 14:09:34	Productos
11	4	App\\Models\\Client	200	2026-01-06 14:09:34	2026-01-06 14:09:34	Clientes
12	4	App\\Models\\Order	100	2026-01-06 14:09:34	2026-01-06 14:09:34	Pedidos Mensuales
13	5	App\\Models\\Product	-1	2026-01-06 14:09:34	2026-01-06 14:09:34	Productos
14	5	App\\Models\\Client	-1	2026-01-06 14:09:34	2026-01-06 14:09:34	Clientes
15	5	App\\Models\\Order	-1	2026-01-06 14:09:34	2026-01-06 14:09:34	Pedidos Mensuales
16	6	App\\Models\\Product	-1	2026-01-06 14:09:34	2026-01-06 14:09:34	Productos
17	6	App\\Models\\Client	-1	2026-01-06 14:09:34	2026-01-06 14:09:34	Clientes
18	6	App\\Models\\Order	-1	2026-01-06 14:09:34	2026-01-06 14:09:34	Pedidos Mensuales
\.


--
-- Data for Name: plans; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.plans (id, slug, price, currency, "interval", trial_period_days, stripe_product_id, stripe_price_id, cryptomus_uuid, is_active, is_featured, created_at, updated_at, name, description) FROM stdin;
1	basic-monthly	9.00	USD	month	\N	\N	price_basic_monthly_placeholder	\N	t	f	2026-01-06 14:09:34	2026-01-06 14:09:34	Nomiq Básico Mensual	Ideal para empezar. Control total para negocios pequeños.
2	basic-yearly	90.00	USD	year	\N	\N	price_basic_yearly_placeholder	\N	t	f	2026-01-06 14:09:34	2026-01-06 14:09:34	Nomiq Básico Anual	Ahorra 2 meses con el pago anual.
3	pro-monthly	29.00	USD	month	\N	\N	price_pro_monthly_placeholder	\N	t	t	2026-01-06 14:09:34	2026-01-06 14:09:34	Nomiq Pro Mensual	Para negocios en expansión que necesitan más capacidad.
4	pro-yearly	290.00	USD	year	\N	\N	price_pro_yearly_placeholder	\N	t	t	2026-01-06 14:09:34	2026-01-06 14:09:34	Nomiq Pro Anual	La opción favorita de las PyMEs.
5	elite-monthly	59.00	USD	month	\N	\N	price_elite_monthly_placeholder	\N	t	f	2026-01-06 14:09:34	2026-01-06 14:09:34	Nomiq Elite Mensual	Sin restricciones. Para operaciones de alto volumen.
6	elite-yearly	590.00	USD	year	\N	\N	price_elite_yearly_placeholder	\N	t	f	2026-01-06 14:09:34	2026-01-06 14:09:34	Nomiq Elite Anual	Máxima potencia para tu empresa.
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.posts (id, title, slug, content, seo_title, seo_description, published_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.products (id, team_id, sku, name, price, cost, stock_current, stock_alert, tax_rate, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: providers; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.providers (id, team_id, name, tax_id, bank_details, category, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: role_has_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
1	1
2	1
3	1
4	1
5	1
6	1
7	1
8	1
9	1
10	1
11	1
12	1
13	1
14	1
15	1
16	1
17	1
18	1
19	1
20	1
21	1
22	1
23	1
24	1
25	1
26	1
27	1
28	1
29	1
30	1
31	1
32	1
33	1
34	1
35	1
36	1
37	1
38	1
39	1
40	1
41	1
42	1
43	1
44	1
45	1
46	1
47	1
48	1
49	1
50	1
51	1
52	1
53	1
54	1
55	1
56	1
57	1
58	1
59	1
60	1
61	1
62	1
63	1
64	1
65	1
66	1
67	1
68	1
69	1
70	1
71	1
72	1
73	1
74	1
75	1
76	1
77	1
78	1
79	1
80	1
81	1
82	1
83	1
84	1
85	1
86	1
87	1
88	1
89	1
90	1
91	1
92	1
93	1
94	1
95	1
96	1
97	1
98	1
99	1
100	1
101	1
102	1
103	1
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
1	super_admin	web	2026-01-06 14:09:33	2026-01-06 14:09:33
2	owner	web	2026-01-06 14:09:34	2026-01-06 14:09:34
\.


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.services (id, team_id, name, description, price, tax_rate, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
\.


--
-- Data for Name: subscription_items; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.subscription_items (id, subscription_id, stripe_id, stripe_product, stripe_price, quantity, created_at, updated_at, meter_id, meter_event_name) FROM stdin;
\.


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.subscriptions (id, user_id, type, stripe_id, stripe_status, stripe_price, quantity, trial_ends_at, ends_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: team_invitations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.team_invitations (id, team_id, email, role, token, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: team_user; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.team_user (id, team_id, user_id, role, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.teams (id, user_id, name, personal_team, created_at, updated_at, currency_code, tax_id, address, phone, invoice_prefix, logo_path) FROM stdin;
\.


--
-- Data for Name: telescope_entries; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.telescope_entries (sequence, uuid, batch_id, family_hash, should_display_on_index, type, content, created_at) FROM stdin;
1	a0c5ac29-f23d-4e76-9f71-c32191495f4b	a0c5ac29-f330-4243-82e3-04f8e0a6234f	\N	t	command	{"command":"about","exit_code":0,"arguments":{"command":"about"},"options":{"only":null,"json":true,"help":false,"silent":false,"quiet":false,"verbose":false,"version":false,"ansi":null,"no-interaction":false,"env":null},"hostname":"pop-os"}	2026-01-06 14:09:34
2	a0c5ac2c-67ba-433c-9f33-5c4223209f47	a0c5ac2c-6dcc-4c77-bde3-f318a970a851	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select * from \\"users\\" where \\"users\\".\\"id\\" = 1 limit 1","time":"0.45","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"c248ab36e65a0390b652be6b7cdad8c4","hostname":"pop-os"}	2026-01-06 14:09:35
3	a0c5ac2c-685e-44cb-9184-e7ff36e3e62a	a0c5ac2c-6dcc-4c77-bde3-f318a970a851	\N	t	model	{"action":"retrieved","model":"App\\\\Models\\\\User","count":2,"hostname":"pop-os"}	2026-01-06 14:09:35
4	a0c5ac2c-6ccd-4a4d-b8bf-e1bd8f0f79ee	a0c5ac2c-6dcc-4c77-bde3-f318a970a851	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select * from \\"jobs\\" where \\"id\\" = 1 limit 1 for update","time":"0.22","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"01d9a18fb53428dc1cc7bb01cd322f23","hostname":"pop-os"}	2026-01-06 14:09:35
5	a0c5ac2c-6ce7-43e5-bcf5-337a2ff2e95e	a0c5ac2c-6dcc-4c77-bde3-f318a970a851	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"delete from \\"jobs\\" where \\"id\\" = 1","time":"0.11","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"a83abcef7f90f52f862efbe782ac1d64","hostname":"pop-os"}	2026-01-06 14:09:35
6	a0c5ac2c-6d8b-4efe-9163-3bb4b07caa10	a0c5ac2c-6dcc-4c77-bde3-f318a970a851	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select * from \\"users\\" where \\"users\\".\\"id\\" = 1 limit 1","time":"0.18","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"c248ab36e65a0390b652be6b7cdad8c4","hostname":"pop-os"}	2026-01-06 14:09:35
7	a0c5adeb-65bc-46fc-a162-9df8f41a96c8	a0c5adeb-67df-45d5-8d83-060a97f1b8e1	\N	t	command	{"command":"about","exit_code":0,"arguments":{"command":"about"},"options":{"only":null,"json":true,"help":false,"silent":false,"quiet":false,"verbose":false,"version":false,"ansi":null,"no-interaction":false,"env":null},"hostname":"pop-os"}	2026-01-06 14:14:28
8	a0c5b7f5-2895-4078-80a0-473170b05b58	a0c5b7f5-297f-4ab6-8a03-b961d0e0929e	\N	t	command	{"command":"make:migration","exit_code":0,"arguments":{"command":"make:migration","name":"add_plan_id_to_crypto_subscriptions_table"},"options":{"create":null,"table":null,"path":null,"realpath":false,"fullpath":false,"help":false,"silent":false,"quiet":false,"verbose":false,"version":false,"ansi":null,"no-interaction":false,"env":null},"hostname":"pop-os"}	2026-01-06 14:42:32
9	a0c5b80e-2dc6-49de-9ef6-3db9ba301c31	a0c5b80e-3793-42b8-94d2-9adf1f085aa1	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select exists (select 1 from pg_class c, pg_namespace n where n.nspname = current_schema() and c.relname = 'migrations' and c.relkind in ('r', 'p') and n.oid = c.relnamespace)","time":"1.64","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"b6ddde8046c04ec7fb2b4992047c0410","hostname":"pop-os"}	2026-01-06 14:42:49
10	a0c5b80e-2f39-4911-9a44-69a2d789511b	a0c5b80e-3793-42b8-94d2-9adf1f085aa1	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select exists (select 1 from pg_class c, pg_namespace n where n.nspname = current_schema() and c.relname = 'migrations' and c.relkind in ('r', 'p') and n.oid = c.relnamespace)","time":"0.66","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"b6ddde8046c04ec7fb2b4992047c0410","hostname":"pop-os"}	2026-01-06 14:42:49
11	a0c5b80e-2fab-4eb4-8011-b2a2390d7c02	a0c5b80e-3793-42b8-94d2-9adf1f085aa1	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select \\"migration\\" from \\"migrations\\" order by \\"batch\\" asc, \\"migration\\" asc","time":"0.86","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"84af29f5c40ba2eeda76663cdfcee4df","hostname":"pop-os"}	2026-01-06 14:42:49
12	a0c5b80e-3003-440a-ba23-ea54fbb1da64	a0c5b80e-3793-42b8-94d2-9adf1f085aa1	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select \\"migration\\" from \\"migrations\\" order by \\"batch\\" asc, \\"migration\\" asc","time":"0.43","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"84af29f5c40ba2eeda76663cdfcee4df","hostname":"pop-os"}	2026-01-06 14:42:49
13	a0c5b80e-305a-426d-8f8f-6155baa52e73	a0c5b80e-3793-42b8-94d2-9adf1f085aa1	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select max(\\"batch\\") as aggregate from \\"migrations\\"","time":"0.43","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"891c93593b7807a7dfc0848070936947","hostname":"pop-os"}	2026-01-06 14:42:49
14	a0c5b80e-33a5-405c-a3d9-e606a8a03a4c	a0c5b80e-3793-42b8-94d2-9adf1f085aa1	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"alter table \\"crypto_subscriptions\\" add column \\"plan_id\\" bigint null","time":"1.01","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/database\\/migrations\\/2026_01_06_144232_add_plan_id_to_crypto_subscriptions_table.php","line":14,"hash":"c481ce2c4b47c2920d9a1e5f74efeb58","hostname":"pop-os"}	2026-01-06 14:42:49
15	a0c5b80e-34c7-42f9-a88e-69fad2e25ccb	a0c5b80e-3793-42b8-94d2-9adf1f085aa1	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"alter table \\"crypto_subscriptions\\" add constraint \\"crypto_subscriptions_plan_id_foreign\\" foreign key (\\"plan_id\\") references \\"plans\\" (\\"id\\") on delete set null","time":"2.65","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/database\\/migrations\\/2026_01_06_144232_add_plan_id_to_crypto_subscriptions_table.php","line":14,"hash":"e3e2eecf20df70c1554ceedd63ca18f7","hostname":"pop-os"}	2026-01-06 14:42:49
16	a0c5b80e-368d-43cc-8140-9723caa3ff9d	a0c5b80e-3793-42b8-94d2-9adf1f085aa1	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"insert into \\"migrations\\" (\\"migration\\", \\"batch\\") values ('2026_01_06_144232_add_plan_id_to_crypto_subscriptions_table', 2)","time":"1.88","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"09c22f830d52d80cc99fe8c1b1acc44c","hostname":"pop-os"}	2026-01-06 14:42:49
17	a0c5b80e-36e2-42de-96c5-54e313c20fa6	a0c5b80e-3793-42b8-94d2-9adf1f085aa1	\N	t	command	{"command":"migrate","exit_code":0,"arguments":{"command":"migrate"},"options":{"database":null,"force":false,"path":[],"realpath":false,"schema-path":null,"pretend":false,"seed":false,"seeder":null,"step":false,"graceful":false,"isolated":false,"help":false,"silent":false,"quiet":false,"verbose":false,"version":false,"ansi":null,"no-interaction":false,"env":null},"hostname":"pop-os"}	2026-01-06 14:42:49
18	a0c5b85b-8451-48b1-a8e7-1c43b5abbf70	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as \\"Value\\" from pg_stat_activity","time":"10.37","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"21f731f562a3678c26fedfd199a686c4","hostname":"pop-os"}	2026-01-06 14:43:40
19	a0c5b85b-86c1-4031-8780-f17964548f60	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select c.relname as name, n.nspname as schema, pg_total_relation_size(c.oid) as size, obj_description(c.oid, 'pg_class') as comment from pg_class c, pg_namespace n where c.relkind in ('r', 'p') and n.oid = c.relnamespace and n.nspname <> 'information_schema' and n.nspname not like 'pg\\\\_%' order by n.nspname, c.relname","time":"4.26","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"7ee1b49ffd563d0235f4124dae85fe15","hostname":"pop-os"}	2026-01-06 14:43:40
20	a0c5b85b-86e9-4d72-b8d9-2a80eba4a840	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"accounts\\"","time":"0.22","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"2b1a46791b2486be119a432421557aa8","hostname":"pop-os"}	2026-01-06 14:43:40
21	a0c5b85b-8707-42f3-a77a-7e38cc5f7734	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"activity_log\\"","time":"0.18","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"2116347678bebe2d341ea78e098ef315","hostname":"pop-os"}	2026-01-06 14:43:40
22	a0c5b85b-871d-4ccc-8ce0-64c4df43e2ed	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"cache\\"","time":"0.12","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"096c6ddd49902b55ffc64d8d06e5b590","hostname":"pop-os"}	2026-01-06 14:43:40
23	a0c5b85b-8736-4d11-a215-d3bf0ed01795	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"cache_locks\\"","time":"0.15","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"b93fe8da810c522bc485d69b03f4b185","hostname":"pop-os"}	2026-01-06 14:43:40
24	a0c5b85b-874d-4506-a395-4a9bfe1689a1	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"clients\\"","time":"0.13","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"50ca5006eb409209097403b74de11cc5","hostname":"pop-os"}	2026-01-06 14:43:40
25	a0c5b85b-8765-4053-9316-5d42d6258cb5	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"crypto_subscriptions\\"","time":"0.14","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"ad5cfb702f67ba6cb2f9cc296893a30a","hostname":"pop-os"}	2026-01-06 14:43:40
26	a0c5b85b-877b-4a41-9a7f-3e081225e6fe	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"expenses\\"","time":"0.13","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"aefea1a9edb8824b7a3faa1c3b690ec6","hostname":"pop-os"}	2026-01-06 14:43:40
27	a0c5b85b-8797-4641-a341-67a111d3dc34	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"failed_jobs\\"","time":"0.15","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"07e7f728e57dd69e62f021da4e92aaa7","hostname":"pop-os"}	2026-01-06 14:43:40
28	a0c5b85b-87b5-4c98-8f9e-2fb9182c9711	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"feedback\\"","time":"0.14","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"ee5e1cd802b687f5a9232d9b75bd3ddb","hostname":"pop-os"}	2026-01-06 14:43:40
29	a0c5b85b-87cc-4f66-8a6d-d6cbdab08a77	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"incomes\\"","time":"0.11","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"5c42ad918edfc361dcca901afaac5a18","hostname":"pop-os"}	2026-01-06 14:43:40
30	a0c5b85b-87e1-4f35-88d8-25f6f18c9150	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"job_batches\\"","time":"0.11","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"ca45b9d336921b0dfc8739e059c1135e","hostname":"pop-os"}	2026-01-06 14:43:40
31	a0c5b85b-87f5-4958-89f2-fe9b7902c867	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"jobs\\"","time":"0.10","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"c16a64f8bbbb1c5f4549634c624c5dbb","hostname":"pop-os"}	2026-01-06 14:43:40
32	a0c5b85b-8809-4e60-80a3-e2626d995af2	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"migrations\\"","time":"0.10","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"30d89bd64a48602d1d0ed761d9cb1bce","hostname":"pop-os"}	2026-01-06 14:43:40
33	a0c5b85b-881d-4635-908d-72e7c0dc91c7	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"model_has_permissions\\"","time":"0.10","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"1e886f6244e83303c720f090b5951b4f","hostname":"pop-os"}	2026-01-06 14:43:40
34	a0c5b85b-882f-468c-b2f9-bca1644dc95c	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"model_has_roles\\"","time":"0.10","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"2286f2f40145b05ebec4f6129cec4c75","hostname":"pop-os"}	2026-01-06 14:43:40
35	a0c5b85b-8842-4eef-9485-64bb4010b6a2	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"notifications\\"","time":"0.10","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"dcda35ed87bab8b37e5330da4c827241","hostname":"pop-os"}	2026-01-06 14:43:40
36	a0c5b85b-8854-4b60-83bf-b9359fbbe412	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"order_items\\"","time":"0.10","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"59332b38d602398fe8923c216e619500","hostname":"pop-os"}	2026-01-06 14:43:40
37	a0c5b85b-8867-40d9-b95c-f03130faab8f	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"orders\\"","time":"0.10","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"590213993f29c6acb8595792e0873e56","hostname":"pop-os"}	2026-01-06 14:43:40
38	a0c5b85b-8879-431e-ad18-92f1e49034a0	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"password_reset_tokens\\"","time":"0.09","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"8731bd604f369172f105a6c223fa2430","hostname":"pop-os"}	2026-01-06 14:43:40
39	a0c5b85b-888f-4ebb-81eb-f405642f8970	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"payments\\"","time":"0.14","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"21d9192f459a2554e434492f3970206e","hostname":"pop-os"}	2026-01-06 14:43:40
40	a0c5b85b-88a2-4a94-8198-d6db7fdd85f7	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"permissions\\"","time":"0.11","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"c6796579219349ead05e2b9149231c99","hostname":"pop-os"}	2026-01-06 14:43:40
41	a0c5b85b-88b6-499e-a4a3-a10f074a6e6a	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"personal_access_tokens\\"","time":"0.12","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"94bc58b61cb7df662797d3e6093aee61","hostname":"pop-os"}	2026-01-06 14:43:40
42	a0c5b85b-88c9-4265-92b0-dd46ed433513	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"plan_features\\"","time":"0.10","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"df738986ab67336b2cf8b20f4d11aceb","hostname":"pop-os"}	2026-01-06 14:43:40
43	a0c5b85b-88dc-4212-9b7a-dabbd662507e	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"plans\\"","time":"0.11","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"7ba1c2e85f167cc1d609eaf125ca0e40","hostname":"pop-os"}	2026-01-06 14:43:40
44	a0c5b85b-88ef-4ede-bb48-8d8c6f102c7b	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"posts\\"","time":"0.10","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"8da98da1cd0cdeca017d5498cd7c8421","hostname":"pop-os"}	2026-01-06 14:43:40
45	a0c5b85b-8900-4c62-bab1-dcbf20d80b42	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"products\\"","time":"0.10","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"01b2714f8678082e31a43e37eed866f4","hostname":"pop-os"}	2026-01-06 14:43:40
46	a0c5b85b-8911-476d-af26-5a4fb14b72d0	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"providers\\"","time":"0.09","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"8cd79232494235cb979a02e591f91600","hostname":"pop-os"}	2026-01-06 14:43:40
47	a0c5b85b-8923-418a-9c97-359ba35bb435	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"role_has_permissions\\"","time":"0.09","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"6ee57796a9f6771669f1f32359d5c103","hostname":"pop-os"}	2026-01-06 14:43:40
48	a0c5b85b-8936-4752-b37a-0625ad55bc7b	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"roles\\"","time":"0.10","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"27e95314e0ce9e4cd0ee246222a7663a","hostname":"pop-os"}	2026-01-06 14:43:40
49	a0c5b85b-8948-4725-bfc3-01ee1b28c529	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"services\\"","time":"0.10","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"7ec4cc2cac7d7eb964d0f2c45ba2cdc5","hostname":"pop-os"}	2026-01-06 14:43:40
50	a0c5b85b-895e-4e10-a670-5e02d9ae8b84	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"sessions\\"","time":"0.13","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"6472465959f3088b531b3db26c2c918c","hostname":"pop-os"}	2026-01-06 14:43:40
51	a0c5b85b-8978-4471-98a0-d10735162636	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"subscription_items\\"","time":"0.14","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"34ac476b264a9f722ea73a330bc70f27","hostname":"pop-os"}	2026-01-06 14:43:40
52	a0c5b85b-89b0-48ab-b1a4-e70aec1a7352	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"subscriptions\\"","time":"0.39","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"a597f9007d9150cd9400aa9c818dc8fd","hostname":"pop-os"}	2026-01-06 14:43:40
53	a0c5b85b-89ce-44a0-bc81-97791bd926db	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"team_invitations\\"","time":"0.17","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"76d1b6c5e9adf9938bb912f67b628885","hostname":"pop-os"}	2026-01-06 14:43:40
54	a0c5b85b-89e8-4023-9fc5-eaa97d7cdbaa	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"team_user\\"","time":"0.15","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"5aec8cadc1448c0a57700be8649c2d53","hostname":"pop-os"}	2026-01-06 14:43:40
55	a0c5b85b-8a03-4420-a8b4-5b174cf7364e	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"teams\\"","time":"0.17","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"d0c18f95a781c2f9627535d66e6ff23c","hostname":"pop-os"}	2026-01-06 14:43:40
56	a0c5b85b-8a1d-463e-b2ff-8b35ef57c9ed	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"telescope_entries\\"","time":"0.16","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"1704749566e72caab6efc95a80d52e73","hostname":"pop-os"}	2026-01-06 14:43:40
57	a0c5b85b-8a35-4379-83eb-9ff509f7326d	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"telescope_entries_tags\\"","time":"0.13","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"d4186bf664c83e3793eeaf2fdaa509f5","hostname":"pop-os"}	2026-01-06 14:43:40
58	a0c5b85b-8a4f-43de-b966-cb90888fe8e3	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"telescope_monitoring\\"","time":"0.14","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"39328812f5e2cbada315d2f27e5c947b","hostname":"pop-os"}	2026-01-06 14:43:40
59	a0c5b85b-8a6a-4302-b23e-a8c030bda5c5	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	query	{"connection":"pgsql","driver":"pgsql","bindings":[],"sql":"select count(*) as aggregate from \\"public\\".\\"users\\"","time":"0.18","slow":false,"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16,"hash":"3383f907b38aab85bb3d906bb8962564","hostname":"pop-os"}	2026-01-06 14:43:40
60	a0c5b85b-908a-42d2-962d-89182e6ca0a2	a0c5b85b-90d2-452b-b701-d0ad2f0f9f06	\N	t	command	{"command":"db:show","exit_code":0,"arguments":{"command":"db:show"},"options":{"database":null,"json":false,"counts":true,"views":false,"types":false,"help":false,"silent":false,"quiet":false,"verbose":false,"version":false,"ansi":null,"no-interaction":false,"env":null},"hostname":"pop-os"}	2026-01-06 14:43:40
61	a0c606e3-95f0-4b4d-9917-fc7088fa5784	a0c606e3-9bee-4025-810b-06eff50f40a6	4a939cbb883f93a06e13b147bc7ac88c	t	exception	{"class":"JsonException","file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/pail\\/src\\/ValueObjects\\/MessageLogged.php","line":30,"message":"Syntax error","context":null,"trace":[{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/pail\\/src\\/ValueObjects\\/MessageLogged.php","line":30},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/pail\\/src\\/ProcessFactory.php","line":42},[],{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Collections\\/Arr.php","line":788},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Collections\\/Collection.php","line":814},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/pail\\/src\\/ProcessFactory.php","line":42},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/symfony\\/process\\/Process.php","line":1320},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/symfony\\/process\\/Process.php","line":1420},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/symfony\\/process\\/Process.php","line":459},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/symfony\\/process\\/Process.php","line":254},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Support\\/HigherOrderTapProxy.php","line":33},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Process\\/PendingProcess.php","line":258},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/pail\\/src\\/ProcessFactory.php","line":24},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/pail\\/src\\/Console\\/Commands\\/PailCommand.php","line":86},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Container\\/BoundMethod.php","line":36},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Container\\/Util.php","line":43},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Container\\/BoundMethod.php","line":96},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Container\\/BoundMethod.php","line":35},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Container\\/Container.php","line":799},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Console\\/Command.php","line":211},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/symfony\\/console\\/Command\\/Command.php","line":341},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Console\\/Command.php","line":180},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/symfony\\/console\\/Application.php","line":1102},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/symfony\\/console\\/Application.php","line":356},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/symfony\\/console\\/Application.php","line":195},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Console\\/Kernel.php","line":197},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Application.php","line":1235},{"file":"\\/home\\/alejandrocabeza\\/workspace\\/nomiq\\/artisan","line":16}],"line_preview":{"21":"        \\/\\/","22":"    }","23":"","24":"    \\/**","25":"     * Creates a new instance of the message logged from a json string.","26":"     *\\/","27":"    public static function fromJson(string $json): static","28":"    {","29":"        \\/** @var array{message: string, context: array{__pail: array{origin: array{trace: array<int, array{file: string, line: int}>|null, type: string, queue: string, job: string, command: string, method: string, path: string, auth_id: ?string, auth_email: ?string}}, exception: array{class: string, file: string}}, level_name: string, datetime: string} $array *\\/","30":"        $array = json_decode($json, true, 512, JSON_THROW_ON_ERROR);","31":"","32":"        [","33":"            'message' => $message,","34":"            'datetime' => $datetime,","35":"            'level_name' => $levelName,","36":"            'context' => $context,","37":"        ] = $array;","38":"","39":"        return new static($message, $datetime, $levelName, $context);","40":"    }"},"hostname":"pop-os","occurrences":1}	2026-01-06 18:23:15
62	a0c606e3-8f34-4a50-9d3d-f02ae2476edf	a0c606e3-9bee-4025-810b-06eff50f40a6	\N	t	command	{"command":"pail","exit_code":4,"arguments":{"command":"pail"},"options":{"filter":null,"message":null,"level":null,"auth":null,"user":null,"timeout":"0","help":false,"silent":false,"quiet":false,"verbose":false,"version":false,"ansi":null,"no-interaction":false,"env":null},"hostname":"pop-os"}	2026-01-06 18:23:15
\.


--
-- Data for Name: telescope_entries_tags; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.telescope_entries_tags (entry_uuid, tag) FROM stdin;
a0c5ac2c-685e-44cb-9184-e7ff36e3e62a	App\\Models\\User
\.


--
-- Data for Name: telescope_monitoring; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.telescope_monitoring (tag) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, google_id, github_id, apple_id, stripe_id, pm_type, pm_last_four, trial_ends_at, current_team_id, locale) FROM stdin;
1	Super Admin	admin@example.com	\N	$2y$12$iGFUPwsU3Z4IZC9qjcnW0.juHyFfu7BZeG2jlJXwRV.D2plI5155a	\N	2026-01-06 14:09:33	2026-01-06 14:09:33	\N	\N	\N	\N	\N	\N	\N	\N	en
\.


--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.accounts_id_seq', 1, false);


--
-- Name: activity_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.activity_log_id_seq', 1, true);


--
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.clients_id_seq', 1, false);


--
-- Name: crypto_subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.crypto_subscriptions_id_seq', 1, false);


--
-- Name: expenses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.expenses_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, true);


--
-- Name: feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.feedback_id_seq', 1, false);


--
-- Name: incomes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.incomes_id_seq', 1, false);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrations_id_seq', 48, true);


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.order_items_id_seq', 1, false);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, false);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.permissions_id_seq', 103, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: plan_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.plan_features_id_seq', 18, true);


--
-- Name: plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.plans_id_seq', 6, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: providers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.providers_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.roles_id_seq', 2, true);


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.services_id_seq', 1, false);


--
-- Name: subscription_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.subscription_items_id_seq', 1, false);


--
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.subscriptions_id_seq', 1, false);


--
-- Name: team_invitations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.team_invitations_id_seq', 1, false);


--
-- Name: team_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.team_user_id_seq', 1, false);


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.teams_id_seq', 1, false);


--
-- Name: telescope_entries_sequence_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.telescope_entries_sequence_seq', 62, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: activity_log activity_log_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.activity_log
    ADD CONSTRAINT activity_log_pkey PRIMARY KEY (id);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);


--
-- Name: crypto_subscriptions crypto_subscriptions_cryptomus_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.crypto_subscriptions
    ADD CONSTRAINT crypto_subscriptions_cryptomus_uuid_unique UNIQUE (cryptomus_uuid);


--
-- Name: crypto_subscriptions crypto_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.crypto_subscriptions
    ADD CONSTRAINT crypto_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: expenses expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: feedback feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (id);


--
-- Name: incomes incomes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.incomes
    ADD CONSTRAINT incomes_pkey PRIMARY KEY (id);


--
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: model_has_permissions model_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);


--
-- Name: model_has_roles model_has_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: payments payments_cryptomus_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_cryptomus_uuid_unique UNIQUE (cryptomus_uuid);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_name_guard_name_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_name_guard_name_unique UNIQUE (name, guard_name);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: plan_features plan_features_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.plan_features
    ADD CONSTRAINT plan_features_pkey PRIMARY KEY (id);


--
-- Name: plans plans_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_pkey PRIMARY KEY (id);


--
-- Name: plans plans_slug_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_slug_unique UNIQUE (slug);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: posts posts_slug_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_slug_unique UNIQUE (slug);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: providers providers_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_pkey PRIMARY KEY (id);


--
-- Name: role_has_permissions role_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);


--
-- Name: roles roles_name_guard_name_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_guard_name_unique UNIQUE (name, guard_name);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: subscription_items subscription_items_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_items
    ADD CONSTRAINT subscription_items_pkey PRIMARY KEY (id);


--
-- Name: subscription_items subscription_items_stripe_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_items
    ADD CONSTRAINT subscription_items_stripe_id_unique UNIQUE (stripe_id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: subscriptions subscriptions_stripe_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_stripe_id_unique UNIQUE (stripe_id);


--
-- Name: team_invitations team_invitations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_invitations
    ADD CONSTRAINT team_invitations_pkey PRIMARY KEY (id);


--
-- Name: team_invitations team_invitations_team_id_email_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_invitations
    ADD CONSTRAINT team_invitations_team_id_email_unique UNIQUE (team_id, email);


--
-- Name: team_invitations team_invitations_token_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_invitations
    ADD CONSTRAINT team_invitations_token_unique UNIQUE (token);


--
-- Name: team_user team_user_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_user
    ADD CONSTRAINT team_user_pkey PRIMARY KEY (id);


--
-- Name: team_user team_user_team_id_user_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_user
    ADD CONSTRAINT team_user_team_id_user_id_unique UNIQUE (team_id, user_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: telescope_entries telescope_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.telescope_entries
    ADD CONSTRAINT telescope_entries_pkey PRIMARY KEY (sequence);


--
-- Name: telescope_entries_tags telescope_entries_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.telescope_entries_tags
    ADD CONSTRAINT telescope_entries_tags_pkey PRIMARY KEY (entry_uuid, tag);


--
-- Name: telescope_entries telescope_entries_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.telescope_entries
    ADD CONSTRAINT telescope_entries_uuid_unique UNIQUE (uuid);


--
-- Name: telescope_monitoring telescope_monitoring_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.telescope_monitoring
    ADD CONSTRAINT telescope_monitoring_pkey PRIMARY KEY (tag);


--
-- Name: users users_apple_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_apple_id_unique UNIQUE (apple_id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_github_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_github_id_unique UNIQUE (github_id);


--
-- Name: users users_google_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_google_id_unique UNIQUE (google_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: activity_log_log_name_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX activity_log_log_name_index ON public.activity_log USING btree (log_name);


--
-- Name: causer; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX causer ON public.activity_log USING btree (causer_type, causer_id);


--
-- Name: crypto_subscriptions_cryptomus_uuid_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX crypto_subscriptions_cryptomus_uuid_index ON public.crypto_subscriptions USING btree (cryptomus_uuid);


--
-- Name: crypto_subscriptions_user_id_status_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX crypto_subscriptions_user_id_status_index ON public.crypto_subscriptions USING btree (user_id, status);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- Name: model_has_permissions_model_id_model_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);


--
-- Name: model_has_roles_model_id_model_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);


--
-- Name: notifications_notifiable_type_notifiable_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX notifications_notifiable_type_notifiable_id_index ON public.notifications USING btree (notifiable_type, notifiable_id);


--
-- Name: payments_cryptomus_uuid_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX payments_cryptomus_uuid_index ON public.payments USING btree (cryptomus_uuid);


--
-- Name: payments_subscription_id_status_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX payments_subscription_id_status_index ON public.payments USING btree (subscription_id, status);


--
-- Name: payments_user_id_status_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX payments_user_id_status_index ON public.payments USING btree (user_id, status);


--
-- Name: personal_access_tokens_expires_at_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX personal_access_tokens_expires_at_index ON public.personal_access_tokens USING btree (expires_at);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


--
-- Name: subject; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX subject ON public.activity_log USING btree (subject_type, subject_id);


--
-- Name: subscription_items_subscription_id_stripe_price_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX subscription_items_subscription_id_stripe_price_index ON public.subscription_items USING btree (subscription_id, stripe_price);


--
-- Name: subscriptions_user_id_stripe_status_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX subscriptions_user_id_stripe_status_index ON public.subscriptions USING btree (user_id, stripe_status);


--
-- Name: teams_user_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX teams_user_id_index ON public.teams USING btree (user_id);


--
-- Name: telescope_entries_batch_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX telescope_entries_batch_id_index ON public.telescope_entries USING btree (batch_id);


--
-- Name: telescope_entries_created_at_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX telescope_entries_created_at_index ON public.telescope_entries USING btree (created_at);


--
-- Name: telescope_entries_family_hash_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX telescope_entries_family_hash_index ON public.telescope_entries USING btree (family_hash);


--
-- Name: telescope_entries_tags_tag_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX telescope_entries_tags_tag_index ON public.telescope_entries_tags USING btree (tag);


--
-- Name: telescope_entries_type_should_display_on_index_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX telescope_entries_type_should_display_on_index_index ON public.telescope_entries USING btree (type, should_display_on_index);


--
-- Name: users_stripe_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX users_stripe_id_index ON public.users USING btree (stripe_id);


--
-- Name: accounts accounts_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: clients clients_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: crypto_subscriptions crypto_subscriptions_plan_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.crypto_subscriptions
    ADD CONSTRAINT crypto_subscriptions_plan_id_foreign FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE SET NULL;


--
-- Name: crypto_subscriptions crypto_subscriptions_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.crypto_subscriptions
    ADD CONSTRAINT crypto_subscriptions_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: expenses expenses_account_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_account_id_foreign FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: expenses expenses_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_order_id_foreign FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE SET NULL;


--
-- Name: expenses expenses_provider_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_provider_id_foreign FOREIGN KEY (provider_id) REFERENCES public.providers(id) ON DELETE SET NULL;


--
-- Name: expenses expenses_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: feedback feedback_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: incomes incomes_account_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.incomes
    ADD CONSTRAINT incomes_account_id_foreign FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: incomes incomes_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.incomes
    ADD CONSTRAINT incomes_order_id_foreign FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE SET NULL;


--
-- Name: incomes incomes_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.incomes
    ADD CONSTRAINT incomes_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: model_has_permissions model_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- Name: model_has_roles model_has_roles_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: order_items order_items_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_foreign FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: order_items order_items_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: order_items order_items_service_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_service_id_foreign FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: orders orders_client_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_client_id_foreign FOREIGN KEY (client_id) REFERENCES public.clients(id) ON DELETE SET NULL;


--
-- Name: orders orders_provider_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_provider_id_foreign FOREIGN KEY (provider_id) REFERENCES public.providers(id) ON DELETE SET NULL;


--
-- Name: orders orders_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: payments payments_subscription_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_subscription_id_foreign FOREIGN KEY (subscription_id) REFERENCES public.crypto_subscriptions(id) ON DELETE CASCADE;


--
-- Name: payments payments_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: plan_features plan_features_plan_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.plan_features
    ADD CONSTRAINT plan_features_plan_id_foreign FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;


--
-- Name: products products_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: providers providers_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: role_has_permissions role_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- Name: role_has_permissions role_has_permissions_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: services services_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: team_invitations team_invitations_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_invitations
    ADD CONSTRAINT team_invitations_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: telescope_entries_tags telescope_entries_tags_entry_uuid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.telescope_entries_tags
    ADD CONSTRAINT telescope_entries_tags_entry_uuid_foreign FOREIGN KEY (entry_uuid) REFERENCES public.telescope_entries(uuid) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict jH2Rfn0y2Qar4wRn9GelTd5dtc9CITxwlHbCituNXOvd1ST0d2kBTrMdKDhpmlr

--
-- Database "n8n" dump
--

--
-- PostgreSQL database dump
--

\restrict wk7C3Qk5rrKjJCMYZrlhRFLaiGrNDUiduGom8VheL0klSU6hPVNoaRdpVkeXh3e

-- Dumped from database version 17.7 (Debian 17.7-3.pgdg13+1)
-- Dumped by pg_dump version 17.7 (Debian 17.7-3.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: n8n; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE n8n WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE n8n OWNER TO root;

\unrestrict wk7C3Qk5rrKjJCMYZrlhRFLaiGrNDUiduGom8VheL0klSU6hPVNoaRdpVkeXh3e
\connect n8n
\restrict wk7C3Qk5rrKjJCMYZrlhRFLaiGrNDUiduGom8VheL0klSU6hPVNoaRdpVkeXh3e

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: increment_workflow_version(); Type: FUNCTION; Schema: public; Owner: root
--

CREATE FUNCTION public.increment_workflow_version() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
			BEGIN
				IF NEW."versionCounter" IS NOT DISTINCT FROM OLD."versionCounter" THEN
					NEW."versionCounter" = OLD."versionCounter" + 1;
				END IF;
				RETURN NEW;
			END;
			$$;


ALTER FUNCTION public.increment_workflow_version() OWNER TO root;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: annotation_tag_entity; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.annotation_tag_entity (
    id character varying(16) NOT NULL,
    name character varying(24) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.annotation_tag_entity OWNER TO root;

--
-- Name: auth_identity; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_identity (
    "userId" uuid,
    "providerId" character varying(64) NOT NULL,
    "providerType" character varying(32) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.auth_identity OWNER TO root;

--
-- Name: auth_provider_sync_history; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_provider_sync_history (
    id integer NOT NULL,
    "providerType" character varying(32) NOT NULL,
    "runMode" text NOT NULL,
    status text NOT NULL,
    "startedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "endedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    scanned integer NOT NULL,
    created integer NOT NULL,
    updated integer NOT NULL,
    disabled integer NOT NULL,
    error text
);


ALTER TABLE public.auth_provider_sync_history OWNER TO root;

--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_provider_sync_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_provider_sync_history_id_seq OWNER TO root;

--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_provider_sync_history_id_seq OWNED BY public.auth_provider_sync_history.id;


--
-- Name: binary_data; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.binary_data (
    "fileId" uuid NOT NULL,
    "sourceType" character varying(50) NOT NULL,
    "sourceId" character varying(255) NOT NULL,
    data bytea NOT NULL,
    "mimeType" character varying(255),
    "fileName" character varying(255),
    "fileSize" integer NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    CONSTRAINT "CHK_binary_data_sourceType" CHECK ((("sourceType")::text = ANY ((ARRAY['execution'::character varying, 'chat_message_attachment'::character varying])::text[])))
);


ALTER TABLE public.binary_data OWNER TO root;

--
-- Name: COLUMN binary_data."sourceType"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.binary_data."sourceType" IS 'Source the file belongs to, e.g. ''execution''';


--
-- Name: COLUMN binary_data."sourceId"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.binary_data."sourceId" IS 'ID of the source, e.g. execution ID';


--
-- Name: COLUMN binary_data.data; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.binary_data.data IS 'Raw, not base64 encoded';


--
-- Name: COLUMN binary_data."fileSize"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.binary_data."fileSize" IS 'In bytes';


--
-- Name: chat_hub_agents; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.chat_hub_agents (
    id uuid NOT NULL,
    name character varying(256) NOT NULL,
    description character varying(512),
    "systemPrompt" text NOT NULL,
    "ownerId" uuid NOT NULL,
    "credentialId" character varying(36),
    provider character varying(16) NOT NULL,
    model character varying(64) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    tools json DEFAULT '[]'::json NOT NULL
);


ALTER TABLE public.chat_hub_agents OWNER TO root;

--
-- Name: COLUMN chat_hub_agents.provider; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_agents.provider IS 'ChatHubProvider enum: "openai", "anthropic", "google", "n8n"';


--
-- Name: COLUMN chat_hub_agents.model; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_agents.model IS 'Model name used at the respective Model node, ie. "gpt-4"';


--
-- Name: COLUMN chat_hub_agents.tools; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_agents.tools IS 'Tools available to the agent as JSON node definitions';


--
-- Name: chat_hub_messages; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.chat_hub_messages (
    id uuid NOT NULL,
    "sessionId" uuid NOT NULL,
    "previousMessageId" uuid,
    "revisionOfMessageId" uuid,
    "retryOfMessageId" uuid,
    type character varying(16) NOT NULL,
    name character varying(128) NOT NULL,
    content text NOT NULL,
    provider character varying(16),
    model character varying(64),
    "workflowId" character varying(36),
    "executionId" integer,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "agentId" character varying(36),
    status character varying(16) DEFAULT 'success'::character varying NOT NULL,
    attachments json
);


ALTER TABLE public.chat_hub_messages OWNER TO root;

--
-- Name: COLUMN chat_hub_messages.type; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_messages.type IS 'ChatHubMessageType enum: "human", "ai", "system", "tool", "generic"';


--
-- Name: COLUMN chat_hub_messages.provider; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_messages.provider IS 'ChatHubProvider enum: "openai", "anthropic", "google", "n8n"';


--
-- Name: COLUMN chat_hub_messages.model; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_messages.model IS 'Model name used at the respective Model node, ie. "gpt-4"';


--
-- Name: COLUMN chat_hub_messages."agentId"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_messages."agentId" IS 'ID of the custom agent (if provider is "custom-agent")';


--
-- Name: COLUMN chat_hub_messages.status; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_messages.status IS 'ChatHubMessageStatus enum, eg. "success", "error", "running", "cancelled"';


--
-- Name: COLUMN chat_hub_messages.attachments; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_messages.attachments IS 'File attachments for the message (if any), stored as JSON. Files are stored as base64-encoded data URLs.';


--
-- Name: chat_hub_sessions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.chat_hub_sessions (
    id uuid NOT NULL,
    title character varying(256) NOT NULL,
    "ownerId" uuid NOT NULL,
    "lastMessageAt" timestamp(3) with time zone,
    "credentialId" character varying(36),
    provider character varying(16),
    model character varying(64),
    "workflowId" character varying(36),
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "agentId" character varying(36),
    "agentName" character varying(128),
    tools json DEFAULT '[]'::json NOT NULL
);


ALTER TABLE public.chat_hub_sessions OWNER TO root;

--
-- Name: COLUMN chat_hub_sessions.provider; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_sessions.provider IS 'ChatHubProvider enum: "openai", "anthropic", "google", "n8n"';


--
-- Name: COLUMN chat_hub_sessions.model; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_sessions.model IS 'Model name used at the respective Model node, ie. "gpt-4"';


--
-- Name: COLUMN chat_hub_sessions."agentId"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_sessions."agentId" IS 'ID of the custom agent (if provider is "custom-agent")';


--
-- Name: COLUMN chat_hub_sessions."agentName"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_sessions."agentName" IS 'Cached name of the custom agent (if provider is "custom-agent")';


--
-- Name: COLUMN chat_hub_sessions.tools; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.chat_hub_sessions.tools IS 'Tools available to the agent as JSON node definitions';


--
-- Name: credentials_entity; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.credentials_entity (
    name character varying(128) NOT NULL,
    data text NOT NULL,
    type character varying(128) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    id character varying(36) NOT NULL,
    "isManaged" boolean DEFAULT false NOT NULL,
    "isGlobal" boolean DEFAULT false NOT NULL
);


ALTER TABLE public.credentials_entity OWNER TO root;

--
-- Name: data_table; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.data_table (
    id character varying(36) NOT NULL,
    name character varying(128) NOT NULL,
    "projectId" character varying(36) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.data_table OWNER TO root;

--
-- Name: data_table_column; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.data_table_column (
    id character varying(36) NOT NULL,
    name character varying(128) NOT NULL,
    type character varying(32) NOT NULL,
    index integer NOT NULL,
    "dataTableId" character varying(36) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.data_table_column OWNER TO root;

--
-- Name: COLUMN data_table_column.type; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.data_table_column.type IS 'Expected: string, number, boolean, or date (not enforced as a constraint)';


--
-- Name: COLUMN data_table_column.index; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.data_table_column.index IS 'Column order, starting from 0 (0 = first column)';


--
-- Name: event_destinations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.event_destinations (
    id uuid NOT NULL,
    destination jsonb NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.event_destinations OWNER TO root;

--
-- Name: execution_annotation_tags; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.execution_annotation_tags (
    "annotationId" integer NOT NULL,
    "tagId" character varying(24) NOT NULL
);


ALTER TABLE public.execution_annotation_tags OWNER TO root;

--
-- Name: execution_annotations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.execution_annotations (
    id integer NOT NULL,
    "executionId" integer NOT NULL,
    vote character varying(6),
    note text,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.execution_annotations OWNER TO root;

--
-- Name: execution_annotations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.execution_annotations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.execution_annotations_id_seq OWNER TO root;

--
-- Name: execution_annotations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.execution_annotations_id_seq OWNED BY public.execution_annotations.id;


--
-- Name: execution_data; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.execution_data (
    "executionId" integer NOT NULL,
    "workflowData" json NOT NULL,
    data text NOT NULL
);


ALTER TABLE public.execution_data OWNER TO root;

--
-- Name: execution_entity; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.execution_entity (
    id integer NOT NULL,
    finished boolean NOT NULL,
    mode character varying NOT NULL,
    "retryOf" character varying,
    "retrySuccessId" character varying,
    "startedAt" timestamp(3) with time zone,
    "stoppedAt" timestamp(3) with time zone,
    "waitTill" timestamp(3) with time zone,
    status character varying NOT NULL,
    "workflowId" character varying(36) NOT NULL,
    "deletedAt" timestamp(3) with time zone,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.execution_entity OWNER TO root;

--
-- Name: execution_entity_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.execution_entity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.execution_entity_id_seq OWNER TO root;

--
-- Name: execution_entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.execution_entity_id_seq OWNED BY public.execution_entity.id;


--
-- Name: execution_metadata; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.execution_metadata (
    id integer NOT NULL,
    "executionId" integer NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.execution_metadata OWNER TO root;

--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.execution_metadata_temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.execution_metadata_temp_id_seq OWNER TO root;

--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.execution_metadata_temp_id_seq OWNED BY public.execution_metadata.id;


--
-- Name: folder; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.folder (
    id character varying(36) NOT NULL,
    name character varying(128) NOT NULL,
    "parentFolderId" character varying(36),
    "projectId" character varying(36) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.folder OWNER TO root;

--
-- Name: folder_tag; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.folder_tag (
    "folderId" character varying(36) NOT NULL,
    "tagId" character varying(36) NOT NULL
);


ALTER TABLE public.folder_tag OWNER TO root;

--
-- Name: insights_by_period; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.insights_by_period (
    id integer NOT NULL,
    "metaId" integer NOT NULL,
    type integer NOT NULL,
    value bigint NOT NULL,
    "periodUnit" integer NOT NULL,
    "periodStart" timestamp(0) with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.insights_by_period OWNER TO root;

--
-- Name: COLUMN insights_by_period.type; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.insights_by_period.type IS '0: time_saved_minutes, 1: runtime_milliseconds, 2: success, 3: failure';


--
-- Name: COLUMN insights_by_period."periodUnit"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.insights_by_period."periodUnit" IS '0: hour, 1: day, 2: week';


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public.insights_by_period ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.insights_by_period_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: insights_metadata; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.insights_metadata (
    "metaId" integer NOT NULL,
    "workflowId" character varying(16),
    "projectId" character varying(36),
    "workflowName" character varying(128) NOT NULL,
    "projectName" character varying(255) NOT NULL
);


ALTER TABLE public.insights_metadata OWNER TO root;

--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public.insights_metadata ALTER COLUMN "metaId" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."insights_metadata_metaId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: insights_raw; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.insights_raw (
    id integer NOT NULL,
    "metaId" integer NOT NULL,
    type integer NOT NULL,
    value bigint NOT NULL,
    "timestamp" timestamp(0) with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.insights_raw OWNER TO root;

--
-- Name: COLUMN insights_raw.type; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.insights_raw.type IS '0: time_saved_minutes, 1: runtime_milliseconds, 2: success, 3: failure';


--
-- Name: insights_raw_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public.insights_raw ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.insights_raw_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: installed_nodes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.installed_nodes (
    name character varying(200) NOT NULL,
    type character varying(200) NOT NULL,
    "latestVersion" integer DEFAULT 1 NOT NULL,
    package character varying(241) NOT NULL
);


ALTER TABLE public.installed_nodes OWNER TO root;

--
-- Name: installed_packages; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.installed_packages (
    "packageName" character varying(214) NOT NULL,
    "installedVersion" character varying(50) NOT NULL,
    "authorName" character varying(70),
    "authorEmail" character varying(70),
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.installed_packages OWNER TO root;

--
-- Name: invalid_auth_token; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.invalid_auth_token (
    token character varying(512) NOT NULL,
    "expiresAt" timestamp(3) with time zone NOT NULL
);


ALTER TABLE public.invalid_auth_token OWNER TO root;

--
-- Name: migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.migrations OWNER TO root;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO root;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: oauth_access_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.oauth_access_tokens (
    token character varying NOT NULL,
    "clientId" character varying NOT NULL,
    "userId" uuid NOT NULL
);


ALTER TABLE public.oauth_access_tokens OWNER TO root;

--
-- Name: oauth_authorization_codes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.oauth_authorization_codes (
    code character varying(255) NOT NULL,
    "clientId" character varying NOT NULL,
    "userId" uuid NOT NULL,
    "redirectUri" character varying NOT NULL,
    "codeChallenge" character varying NOT NULL,
    "codeChallengeMethod" character varying(255) NOT NULL,
    "expiresAt" bigint NOT NULL,
    state character varying,
    used boolean DEFAULT false NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.oauth_authorization_codes OWNER TO root;

--
-- Name: COLUMN oauth_authorization_codes."expiresAt"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.oauth_authorization_codes."expiresAt" IS 'Unix timestamp in milliseconds';


--
-- Name: oauth_clients; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.oauth_clients (
    id character varying NOT NULL,
    name character varying(255) NOT NULL,
    "redirectUris" json NOT NULL,
    "grantTypes" json NOT NULL,
    "clientSecret" character varying(255),
    "clientSecretExpiresAt" bigint,
    "tokenEndpointAuthMethod" character varying(255) DEFAULT 'none'::character varying NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.oauth_clients OWNER TO root;

--
-- Name: COLUMN oauth_clients."tokenEndpointAuthMethod"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.oauth_clients."tokenEndpointAuthMethod" IS 'Possible values: none, client_secret_basic or client_secret_post';


--
-- Name: oauth_refresh_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.oauth_refresh_tokens (
    token character varying(255) NOT NULL,
    "clientId" character varying NOT NULL,
    "userId" uuid NOT NULL,
    "expiresAt" bigint NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.oauth_refresh_tokens OWNER TO root;

--
-- Name: COLUMN oauth_refresh_tokens."expiresAt"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.oauth_refresh_tokens."expiresAt" IS 'Unix timestamp in milliseconds';


--
-- Name: oauth_user_consents; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.oauth_user_consents (
    id integer NOT NULL,
    "userId" uuid NOT NULL,
    "clientId" character varying NOT NULL,
    "grantedAt" bigint NOT NULL
);


ALTER TABLE public.oauth_user_consents OWNER TO root;

--
-- Name: COLUMN oauth_user_consents."grantedAt"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.oauth_user_consents."grantedAt" IS 'Unix timestamp in milliseconds';


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public.oauth_user_consents ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.oauth_user_consents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: processed_data; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.processed_data (
    "workflowId" character varying(36) NOT NULL,
    context character varying(255) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.processed_data OWNER TO root;

--
-- Name: project; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.project (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(36) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    icon json,
    description character varying(512)
);


ALTER TABLE public.project OWNER TO root;

--
-- Name: project_relation; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.project_relation (
    "projectId" character varying(36) NOT NULL,
    "userId" uuid NOT NULL,
    role character varying NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.project_relation OWNER TO root;

--
-- Name: role; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.role (
    slug character varying(128) NOT NULL,
    "displayName" text,
    description text,
    "roleType" text,
    "systemRole" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.role OWNER TO root;

--
-- Name: COLUMN role.slug; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.role.slug IS 'Unique identifier of the role for example: "global:owner"';


--
-- Name: COLUMN role."displayName"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.role."displayName" IS 'Name used to display in the UI';


--
-- Name: COLUMN role.description; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.role.description IS 'Text describing the scope in more detail of users';


--
-- Name: COLUMN role."roleType"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.role."roleType" IS 'Type of the role, e.g., global, project, or workflow';


--
-- Name: COLUMN role."systemRole"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.role."systemRole" IS 'Indicates if the role is managed by the system and cannot be edited';


--
-- Name: role_scope; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.role_scope (
    "roleSlug" character varying(128) NOT NULL,
    "scopeSlug" character varying(128) NOT NULL
);


ALTER TABLE public.role_scope OWNER TO root;

--
-- Name: scope; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.scope (
    slug character varying(128) NOT NULL,
    "displayName" text,
    description text
);


ALTER TABLE public.scope OWNER TO root;

--
-- Name: COLUMN scope.slug; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.scope.slug IS 'Unique identifier of the scope for example: "project:create"';


--
-- Name: COLUMN scope."displayName"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.scope."displayName" IS 'Name used to display in the UI';


--
-- Name: COLUMN scope.description; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.scope.description IS 'Text describing the scope in more detail of users';


--
-- Name: settings; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.settings (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    "loadOnStartup" boolean DEFAULT false NOT NULL
);


ALTER TABLE public.settings OWNER TO root;

--
-- Name: shared_credentials; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shared_credentials (
    "credentialsId" character varying(36) NOT NULL,
    "projectId" character varying(36) NOT NULL,
    role text NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.shared_credentials OWNER TO root;

--
-- Name: shared_workflow; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shared_workflow (
    "workflowId" character varying(36) NOT NULL,
    "projectId" character varying(36) NOT NULL,
    role text NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.shared_workflow OWNER TO root;

--
-- Name: tag_entity; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.tag_entity (
    name character varying(24) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    id character varying(36) NOT NULL
);


ALTER TABLE public.tag_entity OWNER TO root;

--
-- Name: test_case_execution; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.test_case_execution (
    id character varying(36) NOT NULL,
    "testRunId" character varying(36) NOT NULL,
    "executionId" integer,
    status character varying NOT NULL,
    "runAt" timestamp(3) with time zone,
    "completedAt" timestamp(3) with time zone,
    "errorCode" character varying,
    "errorDetails" json,
    metrics json,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    inputs json,
    outputs json
);


ALTER TABLE public.test_case_execution OWNER TO root;

--
-- Name: test_run; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.test_run (
    id character varying(36) NOT NULL,
    "workflowId" character varying(36) NOT NULL,
    status character varying NOT NULL,
    "errorCode" character varying,
    "errorDetails" json,
    "runAt" timestamp(3) with time zone,
    "completedAt" timestamp(3) with time zone,
    metrics json,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.test_run OWNER TO root;

--
-- Name: user; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public."user" (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    email character varying(255),
    "firstName" character varying(32),
    "lastName" character varying(32),
    password character varying(255),
    "personalizationAnswers" json,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    settings json,
    disabled boolean DEFAULT false NOT NULL,
    "mfaEnabled" boolean DEFAULT false NOT NULL,
    "mfaSecret" text,
    "mfaRecoveryCodes" text,
    "lastActiveAt" date,
    "roleSlug" character varying(128) DEFAULT 'global:member'::character varying NOT NULL
);


ALTER TABLE public."user" OWNER TO root;

--
-- Name: user_api_keys; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.user_api_keys (
    id character varying(36) NOT NULL,
    "userId" uuid NOT NULL,
    label character varying(100) NOT NULL,
    "apiKey" character varying NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    scopes json,
    audience character varying DEFAULT 'public-api'::character varying NOT NULL
);


ALTER TABLE public.user_api_keys OWNER TO root;

--
-- Name: variables; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.variables (
    key character varying(50) NOT NULL,
    type character varying(50) DEFAULT 'string'::character varying NOT NULL,
    value character varying(255),
    id character varying(36) NOT NULL,
    "projectId" character varying(36)
);


ALTER TABLE public.variables OWNER TO root;

--
-- Name: webhook_entity; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.webhook_entity (
    "webhookPath" character varying NOT NULL,
    method character varying NOT NULL,
    node character varying NOT NULL,
    "webhookId" character varying,
    "pathLength" integer,
    "workflowId" character varying(36) NOT NULL
);


ALTER TABLE public.webhook_entity OWNER TO root;

--
-- Name: workflow_dependency; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.workflow_dependency (
    id integer NOT NULL,
    "workflowId" character varying(36) NOT NULL,
    "workflowVersionId" integer NOT NULL,
    "dependencyType" character varying(32) NOT NULL,
    "dependencyKey" character varying(255) NOT NULL,
    "dependencyInfo" json,
    "indexVersionId" smallint DEFAULT 1 NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL
);


ALTER TABLE public.workflow_dependency OWNER TO root;

--
-- Name: COLUMN workflow_dependency."workflowVersionId"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.workflow_dependency."workflowVersionId" IS 'Version of the workflow';


--
-- Name: COLUMN workflow_dependency."dependencyType"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.workflow_dependency."dependencyType" IS 'Type of dependency: "credential", "nodeType", "webhookPath", or "workflowCall"';


--
-- Name: COLUMN workflow_dependency."dependencyKey"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.workflow_dependency."dependencyKey" IS 'ID or name of the dependency';


--
-- Name: COLUMN workflow_dependency."dependencyInfo"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.workflow_dependency."dependencyInfo" IS 'Additional info about the dependency, interpreted based on type';


--
-- Name: COLUMN workflow_dependency."indexVersionId"; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.workflow_dependency."indexVersionId" IS 'Version of the index structure';


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public.workflow_dependency ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.workflow_dependency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: workflow_entity; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.workflow_entity (
    name character varying(128) NOT NULL,
    active boolean NOT NULL,
    nodes json NOT NULL,
    connections json NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    settings json,
    "staticData" json,
    "pinData" json,
    "versionId" character(36) NOT NULL,
    "triggerCount" integer DEFAULT 0 NOT NULL,
    id character varying(36) NOT NULL,
    meta json,
    "parentFolderId" character varying(36) DEFAULT NULL::character varying,
    "isArchived" boolean DEFAULT false NOT NULL,
    "versionCounter" integer DEFAULT 1 NOT NULL,
    description text,
    "activeVersionId" character varying(36)
);


ALTER TABLE public.workflow_entity OWNER TO root;

--
-- Name: workflow_history; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.workflow_history (
    "versionId" character varying(36) NOT NULL,
    "workflowId" character varying(36) NOT NULL,
    authors character varying(255) NOT NULL,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    "updatedAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    nodes json NOT NULL,
    connections json NOT NULL,
    name character varying(128),
    autosaved boolean DEFAULT false NOT NULL,
    description text
);


ALTER TABLE public.workflow_history OWNER TO root;

--
-- Name: workflow_publish_history; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.workflow_publish_history (
    id integer NOT NULL,
    "workflowId" character varying(36) NOT NULL,
    "versionId" character varying(36) NOT NULL,
    event character varying(36) NOT NULL,
    "userId" uuid,
    "createdAt" timestamp(3) with time zone DEFAULT CURRENT_TIMESTAMP(3) NOT NULL,
    CONSTRAINT "CHK_workflow_publish_history_event" CHECK (((event)::text = ANY ((ARRAY['activated'::character varying, 'deactivated'::character varying])::text[])))
);


ALTER TABLE public.workflow_publish_history OWNER TO root;

--
-- Name: COLUMN workflow_publish_history.event; Type: COMMENT; Schema: public; Owner: root
--

COMMENT ON COLUMN public.workflow_publish_history.event IS 'Type of history record: activated (workflow is now active), deactivated (workflow is now inactive)';


--
-- Name: workflow_publish_history_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

ALTER TABLE public.workflow_publish_history ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.workflow_publish_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: workflow_statistics; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.workflow_statistics (
    count integer DEFAULT 0,
    "latestEvent" timestamp(3) with time zone,
    name character varying(128) NOT NULL,
    "workflowId" character varying(36) NOT NULL,
    "rootCount" integer DEFAULT 0
);


ALTER TABLE public.workflow_statistics OWNER TO root;

--
-- Name: workflows_tags; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.workflows_tags (
    "workflowId" character varying(36) NOT NULL,
    "tagId" character varying(36) NOT NULL
);


ALTER TABLE public.workflows_tags OWNER TO root;

--
-- Name: auth_provider_sync_history id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_provider_sync_history ALTER COLUMN id SET DEFAULT nextval('public.auth_provider_sync_history_id_seq'::regclass);


--
-- Name: execution_annotations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_annotations ALTER COLUMN id SET DEFAULT nextval('public.execution_annotations_id_seq'::regclass);


--
-- Name: execution_entity id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_entity ALTER COLUMN id SET DEFAULT nextval('public.execution_entity_id_seq'::regclass);


--
-- Name: execution_metadata id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_metadata ALTER COLUMN id SET DEFAULT nextval('public.execution_metadata_temp_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.annotation_tag_entity (id, name, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_identity ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_provider_sync_history (id, "providerType", "runMode", status, "startedAt", "endedAt", scanned, created, updated, disabled, error) FROM stdin;
\.


--
-- Data for Name: binary_data; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.binary_data ("fileId", "sourceType", "sourceId", data, "mimeType", "fileName", "fileSize", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: chat_hub_agents; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.chat_hub_agents (id, name, description, "systemPrompt", "ownerId", "credentialId", provider, model, "createdAt", "updatedAt", tools) FROM stdin;
\.


--
-- Data for Name: chat_hub_messages; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.chat_hub_messages (id, "sessionId", "previousMessageId", "revisionOfMessageId", "retryOfMessageId", type, name, content, provider, model, "workflowId", "executionId", "createdAt", "updatedAt", "agentId", status, attachments) FROM stdin;
\.


--
-- Data for Name: chat_hub_sessions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.chat_hub_sessions (id, title, "ownerId", "lastMessageAt", "credentialId", provider, model, "workflowId", "createdAt", "updatedAt", "agentId", "agentName", tools) FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.credentials_entity (name, data, type, "createdAt", "updatedAt", id, "isManaged", "isGlobal") FROM stdin;
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.data_table (id, name, "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.data_table_column (id, name, type, index, "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.event_destinations (id, destination, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.execution_annotation_tags ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.execution_annotations (id, "executionId", vote, note, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.execution_data ("executionId", "workflowData", data) FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.execution_entity (id, finished, mode, "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", status, "workflowId", "deletedAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.execution_metadata (id, "executionId", key, value) FROM stdin;
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.folder (id, name, "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.folder_tag ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.insights_by_period (id, "metaId", type, value, "periodUnit", "periodStart") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.insights_metadata ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.insights_raw (id, "metaId", type, value, "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.installed_nodes (name, type, "latestVersion", package) FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.installed_packages ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.invalid_auth_token (token, "expiresAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrations (id, "timestamp", name) FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
69	1729607673469	AddProjectIcons1729607673469
70	1730386903556	CreateTestDefinitionTable1730386903556
71	1731404028106	AddDescriptionToTestDefinition1731404028106
72	1731582748663	MigrateTestDefinitionKeyToString1731582748663
73	1732271325258	CreateTestMetricTable1732271325258
74	1732549866705	CreateTestRun1732549866705
75	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
76	1734479635324	AddManagedColumnToCredentialsTable1734479635324
77	1736172058779	AddStatsColumnsToTestRun1736172058779
78	1736947513045	CreateTestCaseExecutionTable1736947513045
79	1737715421462	AddErrorColumnsToTestRuns1737715421462
80	1738709609940	CreateFolderTable1738709609940
81	1739549398681	CreateAnalyticsTables1739549398681
82	1740445074052	UpdateParentFolderIdColumn1740445074052
83	1741167584277	RenameAnalyticsToInsights1741167584277
84	1742918400000	AddScopesColumnToApiKeys1742918400000
85	1745322634000	ClearEvaluation1745322634000
86	1745587087521	AddWorkflowStatisticsRootCount1745587087521
87	1745934666076	AddWorkflowArchivedColumn1745934666076
88	1745934666077	DropRoleTable1745934666077
89	1747824239000	AddProjectDescriptionColumn1747824239000
90	1750252139166	AddLastActiveAtColumnToUser1750252139166
91	1750252139166	AddScopeTables1750252139166
92	1750252139167	AddRolesTables1750252139167
93	1750252139168	LinkRoleToUserTable1750252139168
94	1750252139170	RemoveOldRoleColumn1750252139170
95	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
96	1753953244168	LinkRoleToProjectRelationTable1753953244168
97	1754475614601	CreateDataStoreTables1754475614601
98	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
99	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
100	1758731786132	AddAudienceColumnToApiKeys1758731786132
101	1758794506893	AddProjectIdToVariableTable1758794506893
102	1759399811000	ChangeValueTypesForInsights1759399811000
103	1760019379982	CreateChatHubTables1760019379982
104	1760020000000	CreateChatHubAgentTable1760020000000
105	1760020838000	UniqueRoleNames1760020838000
106	1760116750277	CreateOAuthEntities1760116750277
107	1760314000000	CreateWorkflowDependencyTable1760314000000
108	1760965142113	DropUnusedChatHubColumns1760965142113
109	1761047826451	AddWorkflowVersionColumn1761047826451
110	1761655473000	ChangeDependencyInfoToJson1761655473000
111	1761773155024	AddAttachmentsToChatHubMessages1761773155024
112	1761830340990	AddToolsColumnToChatHubTables1761830340990
113	1762177736257	AddWorkflowDescriptionColumn1762177736257
114	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
115	1762771264000	ChangeDefaultForIdInUserTable1762771264000
116	1762771954619	AddIsGlobalColumnToCredentialsTable1762771954619
117	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
118	1763047800000	AddActiveVersionIdColumn1763047800000
119	1763048000000	ActivateExecuteWorkflowTriggerWorkflows1763048000000
120	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
121	1763716655000	CreateBinaryDataTable1763716655000
122	1764167920585	CreateWorkflowPublishHistoryTable1764167920585
123	1765448186933	BackfillMissingWorkflowHistoryRecords1765448186933
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.oauth_access_tokens (token, "clientId", "userId") FROM stdin;
\.


--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.oauth_authorization_codes (code, "clientId", "userId", "redirectUri", "codeChallenge", "codeChallengeMethod", "expiresAt", state, used, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.oauth_clients (id, name, "redirectUris", "grantTypes", "clientSecret", "clientSecretExpiresAt", "tokenEndpointAuthMethod", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.oauth_refresh_tokens (token, "clientId", "userId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_user_consents; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.oauth_user_consents (id, "userId", "clientId", "grantedAt") FROM stdin;
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.processed_data ("workflowId", context, "createdAt", "updatedAt", value) FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.project (id, name, type, "createdAt", "updatedAt", icon, description) FROM stdin;
MXUPWgHOvym091Wo	Unnamed Project	personal	2025-12-17 04:29:33.671+00	2025-12-17 04:29:33.671+00	\N	\N
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.project_relation ("projectId", "userId", role, "createdAt", "updatedAt") FROM stdin;
MXUPWgHOvym091Wo	4ec710a5-6abf-4ce0-95db-7f5607690570	project:personalOwner	2025-12-17 04:29:33.671+00	2025-12-17 04:29:33.671+00
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.role (slug, "displayName", description, "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:owner	Owner	Owner	global	t	2025-12-17 04:29:34.068+00	2025-12-17 04:29:34.244+00
global:admin	Admin	Admin	global	t	2025-12-17 04:29:34.068+00	2025-12-17 04:29:34.244+00
global:member	Member	Member	global	t	2025-12-17 04:29:34.068+00	2025-12-17 04:29:34.244+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2025-12-17 04:29:34.068+00	2025-12-17 04:29:34.258+00
project:personalOwner	Project Owner	Project Owner	project	t	2025-12-17 04:29:34.068+00	2025-12-17 04:29:34.258+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2025-12-17 04:29:34.068+00	2025-12-17 04:29:34.258+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2025-12-17 04:29:34.068+00	2025-12-17 04:29:34.258+00
credential:owner	Credential Owner	Credential Owner	credential	t	2025-12-17 04:29:34.271+00	2025-12-17 04:29:34.271+00
credential:user	Credential User	Credential User	credential	t	2025-12-17 04:29:34.271+00	2025-12-17 04:29:34.271+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2025-12-17 04:29:34.277+00	2025-12-17 04:29:34.277+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2025-12-17 04:29:34.277+00	2025-12-17 04:29:34.277+00
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.role_scope ("roleSlug", "scopeSlug") FROM stdin;
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:shareGlobally
global:owner	credential:move
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	externalSecret:use
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	orchestration:read
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	projectVariable:create
global:owner	projectVariable:read
global:owner	projectVariable:update
global:owner	projectVariable:delete
global:owner	projectVariable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:move
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	oidc:manage
global:owner	provisioning:manage
global:owner	dataTable:create
global:owner	dataTable:read
global:owner	dataTable:update
global:owner	dataTable:delete
global:owner	dataTable:list
global:owner	dataTable:readRow
global:owner	dataTable:writeRow
global:owner	dataTable:listProject
global:owner	role:manage
global:owner	mcp:manage
global:owner	mcp:oauth
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:owner	chatHub:manage
global:owner	chatHub:message
global:owner	chatHubAgent:create
global:owner	chatHubAgent:read
global:owner	chatHubAgent:update
global:owner	chatHubAgent:delete
global:owner	chatHubAgent:list
global:owner	breakingChanges:list
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:shareGlobally
global:admin	credential:move
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	externalSecret:use
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	orchestration:read
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	projectVariable:create
global:admin	projectVariable:read
global:admin	projectVariable:update
global:admin	projectVariable:delete
global:admin	projectVariable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:move
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	oidc:manage
global:admin	provisioning:manage
global:admin	dataTable:create
global:admin	dataTable:read
global:admin	dataTable:update
global:admin	dataTable:delete
global:admin	dataTable:list
global:admin	dataTable:readRow
global:admin	dataTable:writeRow
global:admin	dataTable:listProject
global:admin	role:manage
global:admin	mcp:manage
global:admin	mcp:oauth
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:admin	chatHub:manage
global:admin	chatHub:message
global:admin	chatHubAgent:create
global:admin	chatHubAgent:read
global:admin	chatHubAgent:update
global:admin	chatHubAgent:delete
global:admin	chatHubAgent:list
global:admin	breakingChanges:list
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	dataTable:list
global:member	mcp:oauth
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
global:member	chatHub:message
global:member	chatHubAgent:create
global:member	chatHubAgent:read
global:member	chatHubAgent:update
global:member	chatHubAgent:delete
global:member	chatHubAgent:list
project:admin	credential:share
project:admin	credential:move
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	sourceControl:push
project:admin	projectVariable:create
project:admin	projectVariable:read
project:admin	projectVariable:update
project:admin	projectVariable:delete
project:admin	projectVariable:list
project:admin	workflow:execute
project:admin	workflow:move
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataTable:create
project:admin	dataTable:read
project:admin	dataTable:update
project:admin	dataTable:delete
project:admin	dataTable:readRow
project:admin	dataTable:writeRow
project:admin	dataTable:listProject
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:move
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataTable:create
project:personalOwner	dataTable:read
project:personalOwner	dataTable:update
project:personalOwner	dataTable:delete
project:personalOwner	dataTable:readRow
project:personalOwner	dataTable:writeRow
project:personalOwner	dataTable:listProject
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	projectVariable:create
project:editor	projectVariable:read
project:editor	projectVariable:update
project:editor	projectVariable:delete
project:editor	projectVariable:list
project:editor	workflow:execute
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataTable:create
project:editor	dataTable:read
project:editor	dataTable:update
project:editor	dataTable:delete
project:editor	dataTable:readRow
project:editor	dataTable:writeRow
project:editor	dataTable:listProject
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	projectVariable:read
project:viewer	projectVariable:list
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataTable:read
project:viewer	dataTable:readRow
project:viewer	dataTable:listProject
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:read
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:editor	workflow:execute
workflow:editor	workflow:read
workflow:editor	workflow:update
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.scope (slug, "displayName", description) FROM stdin;
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
annotationTag:*	annotationTag:*	\N
auditLogs:manage	auditLogs:manage	\N
auditLogs:*	auditLogs:*	\N
banner:dismiss	banner:dismiss	\N
banner:*	banner:*	\N
community:register	community:register	\N
community:*	community:*	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
communityPackage:*	communityPackage:*	\N
credential:share	credential:share	\N
credential:shareGlobally	credential:shareGlobally	\N
credential:move	credential:move	\N
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credential:*	credential:*	\N
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecretsProvider:*	externalSecretsProvider:*	\N
externalSecret:list	externalSecret:list	\N
externalSecret:use	externalSecret:use	\N
externalSecret:*	externalSecret:*	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
eventBusDestination:*	eventBusDestination:*	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
ldap:*	ldap:*	\N
license:manage	license:manage	\N
license:*	license:*	\N
logStreaming:manage	logStreaming:manage	\N
logStreaming:*	logStreaming:*	\N
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:*	orchestration:*	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:*	project:*	\N
saml:manage	saml:manage	\N
saml:*	saml:*	\N
securityAudit:generate	securityAudit:generate	\N
securityAudit:*	securityAudit:*	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:*	sourceControl:*	\N
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
tag:*	tag:*	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
user:*	user:*	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
variable:*	variable:*	\N
projectVariable:create	projectVariable:create	\N
projectVariable:read	projectVariable:read	\N
projectVariable:update	projectVariable:update	\N
projectVariable:delete	projectVariable:delete	\N
projectVariable:list	projectVariable:list	\N
projectVariable:*	projectVariable:*	\N
workersView:manage	workersView:manage	\N
workersView:*	workersView:*	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
workflow:*	workflow:*	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
folder:*	folder:*	\N
insights:list	insights:list	\N
insights:*	insights:*	\N
oidc:manage	oidc:manage	\N
oidc:*	oidc:*	\N
provisioning:manage	provisioning:manage	\N
provisioning:*	provisioning:*	\N
dataTable:create	dataTable:create	\N
dataTable:read	dataTable:read	\N
dataTable:update	dataTable:update	\N
dataTable:delete	dataTable:delete	\N
dataTable:list	dataTable:list	\N
dataTable:readRow	dataTable:readRow	\N
dataTable:writeRow	dataTable:writeRow	\N
dataTable:listProject	dataTable:listProject	\N
dataTable:*	dataTable:*	\N
execution:delete	execution:delete	\N
execution:read	execution:read	\N
execution:retry	execution:retry	\N
execution:list	execution:list	\N
execution:get	execution:get	\N
execution:*	execution:*	\N
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
workflowTags:*	workflowTags:*	\N
role:manage	role:manage	\N
role:*	role:*	\N
mcp:manage	mcp:manage	\N
mcp:oauth	mcp:oauth	\N
mcp:*	mcp:*	\N
mcpApiKey:create	mcpApiKey:create	\N
mcpApiKey:rotate	mcpApiKey:rotate	\N
mcpApiKey:*	mcpApiKey:*	\N
chatHub:manage	chatHub:manage	\N
chatHub:message	chatHub:message	\N
chatHub:*	chatHub:*	\N
chatHubAgent:create	chatHubAgent:create	\N
chatHubAgent:read	chatHubAgent:read	\N
chatHubAgent:update	chatHubAgent:update	\N
chatHubAgent:delete	chatHubAgent:delete	\N
chatHubAgent:list	chatHubAgent:list	\N
chatHubAgent:*	chatHubAgent:*	\N
breakingChanges:list	breakingChanges:list	\N
breakingChanges:*	breakingChanges:*	\N
*	*	\N
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.settings (key, value, "loadOnStartup") FROM stdin;
userManagement.isInstanceOwnerSetUp	false	t
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60,"enforceEmailUniqueness":true}	t
userManagement.authenticationMethod	email	t
features.sourceControl.sshKeys	{"encryptedPrivateKey":"U2FsdGVkX1/HhVssdcKo79UY3/LaFWsEAr0LHy4aqM0x4Ed3fsH3N6IPV4oFzBGFgJlhUEj3mf2k+19PONlhVX7aUEHAu/w8g5VQB9WOGkmgyp+uSX7tMn/8utge74Yba4Ed/O4ahCrzTb7UwVdeGFwRyXW+BL//IVLVDWyiYWCT87bfGqzkgFrqLQpbDGT34lI9rzBU9iWEaiu5y8d3f5PXEsQlHPQFhKPRUt1RkfL01XSL85E9Rkm1hk+vS3ekXEQz8RGqJYSjFvcSVoIumOToew7tUnKLm2tur5/fkkjQ2pAsgHBqgVdXN30NAcOvrdZ0HX4myHtgGYSPwj70xR/8mutkgl4Mu7VqT44SXFznuS+ItlpVmFD/n/dRjTFPOFPR7DdicNPAIxwLRVIWxEF/aYJ1hb8W+RHRrOD+zg6StEVzpzrU9Mh3Jy9UwXlJERVg5pzrOx96HMbVrt4Jj+j70L3jfbv7fPCD8hHV8obLlOc7MIhpl1QKi6wKGRKrxKaDnRAfrkE7phhYmpGfUQVtBvsEoDpYFhF+RnONPa33l22nMIn7+1koEo9rqSop","publicKey":"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOtyRuD99obhGj4mfooKqu1znBpNWFGvxZSG1tgsiV6c n8n deploy key"}	t
features.sourceControl	{"branchName":"main","connectionType":"ssh","keyGeneratorType":"ed25519"}	t
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shared_credentials ("credentialsId", "projectId", role, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shared_workflow ("workflowId", "projectId", role, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.tag_entity (name, "createdAt", "updatedAt", id) FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.test_case_execution (id, "testRunId", "executionId", status, "runAt", "completedAt", "errorCode", "errorDetails", metrics, "createdAt", "updatedAt", inputs, outputs) FROM stdin;
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.test_run (id, "workflowId", status, "errorCode", "errorDetails", "runAt", "completedAt", metrics, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public."user" (id, email, "firstName", "lastName", password, "personalizationAnswers", "createdAt", "updatedAt", settings, disabled, "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
4ec710a5-6abf-4ce0-95db-7f5607690570	\N	\N	\N	\N	\N	2025-12-17 04:29:33.397+00	2025-12-17 04:29:33.397+00	{"userActivated": false}	f	f	\N	\N	\N	global:owner
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.user_api_keys (id, "userId", label, "apiKey", "createdAt", "updatedAt", scopes, audience) FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.variables (key, type, value, id, "projectId") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.webhook_entity ("webhookPath", method, node, "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_dependency; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.workflow_dependency (id, "workflowId", "workflowVersionId", "dependencyType", "dependencyKey", "dependencyInfo", "indexVersionId", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.workflow_entity (name, active, nodes, connections, "createdAt", "updatedAt", settings, "staticData", "pinData", "versionId", "triggerCount", id, meta, "parentFolderId", "isArchived", "versionCounter", description, "activeVersionId") FROM stdin;
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.workflow_history ("versionId", "workflowId", authors, "createdAt", "updatedAt", nodes, connections, name, autosaved, description) FROM stdin;
\.


--
-- Data for Name: workflow_publish_history; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.workflow_publish_history (id, "workflowId", "versionId", event, "userId", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.workflow_statistics (count, "latestEvent", name, "workflowId", "rootCount") FROM stdin;
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.workflows_tags ("workflowId", "tagId") FROM stdin;
\.


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_provider_sync_history_id_seq', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.execution_annotations_id_seq', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.execution_entity_id_seq', 1, false);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.execution_metadata_temp_id_seq', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.insights_by_period_id_seq', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.insights_raw_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrations_id_seq', 123, true);


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.oauth_user_consents_id_seq', 1, false);


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.workflow_dependency_id_seq', 1, false);


--
-- Name: workflow_publish_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.workflow_publish_history_id_seq', 1, false);


--
-- Name: test_run PK_011c050f566e9db509a0fadb9b9; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.test_run
    ADD CONSTRAINT "PK_011c050f566e9db509a0fadb9b9" PRIMARY KEY (id);


--
-- Name: installed_packages PK_08cc9197c39b028c1e9beca225940576fd1a5804; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.installed_packages
    ADD CONSTRAINT "PK_08cc9197c39b028c1e9beca225940576fd1a5804" PRIMARY KEY ("packageName");


--
-- Name: execution_metadata PK_17a0b6284f8d626aae88e1c16e4; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_metadata
    ADD CONSTRAINT "PK_17a0b6284f8d626aae88e1c16e4" PRIMARY KEY (id);


--
-- Name: project_relation PK_1caaa312a5d7184a003be0f0cb6; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.project_relation
    ADD CONSTRAINT "PK_1caaa312a5d7184a003be0f0cb6" PRIMARY KEY ("projectId", "userId");


--
-- Name: chat_hub_sessions PK_1eafef1273c70e4464fec703412; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_sessions
    ADD CONSTRAINT "PK_1eafef1273c70e4464fec703412" PRIMARY KEY (id);


--
-- Name: folder_tag PK_27e4e00852f6b06a925a4d83a3e; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.folder_tag
    ADD CONSTRAINT "PK_27e4e00852f6b06a925a4d83a3e" PRIMARY KEY ("folderId", "tagId");


--
-- Name: role PK_35c9b140caaf6da09cfabb0d675; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT "PK_35c9b140caaf6da09cfabb0d675" PRIMARY KEY (slug);


--
-- Name: project PK_4d68b1358bb5b766d3e78f32f57; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT "PK_4d68b1358bb5b766d3e78f32f57" PRIMARY KEY (id);


--
-- Name: workflow_dependency PK_52325e34cd7a2f0f67b0f3cad65; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_dependency
    ADD CONSTRAINT "PK_52325e34cd7a2f0f67b0f3cad65" PRIMARY KEY (id);


--
-- Name: invalid_auth_token PK_5779069b7235b256d91f7af1a15; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.invalid_auth_token
    ADD CONSTRAINT "PK_5779069b7235b256d91f7af1a15" PRIMARY KEY (token);


--
-- Name: shared_workflow PK_5ba87620386b847201c9531c58f; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shared_workflow
    ADD CONSTRAINT "PK_5ba87620386b847201c9531c58f" PRIMARY KEY ("workflowId", "projectId");


--
-- Name: folder PK_6278a41a706740c94c02e288df8; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.folder
    ADD CONSTRAINT "PK_6278a41a706740c94c02e288df8" PRIMARY KEY (id);


--
-- Name: data_table_column PK_673cb121ee4a8a5e27850c72c51; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.data_table_column
    ADD CONSTRAINT "PK_673cb121ee4a8a5e27850c72c51" PRIMARY KEY (id);


--
-- Name: annotation_tag_entity PK_69dfa041592c30bbc0d4b84aa00; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.annotation_tag_entity
    ADD CONSTRAINT "PK_69dfa041592c30bbc0d4b84aa00" PRIMARY KEY (id);


--
-- Name: oauth_refresh_tokens PK_74abaed0b30711b6532598b0392; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_refresh_tokens
    ADD CONSTRAINT "PK_74abaed0b30711b6532598b0392" PRIMARY KEY (token);


--
-- Name: chat_hub_messages PK_7704a5add6baed43eef835f0bfb; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_messages
    ADD CONSTRAINT "PK_7704a5add6baed43eef835f0bfb" PRIMARY KEY (id);


--
-- Name: execution_annotations PK_7afcf93ffa20c4252869a7c6a23; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_annotations
    ADD CONSTRAINT "PK_7afcf93ffa20c4252869a7c6a23" PRIMARY KEY (id);


--
-- Name: oauth_user_consents PK_85b9ada746802c8993103470f05; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_user_consents
    ADD CONSTRAINT "PK_85b9ada746802c8993103470f05" PRIMARY KEY (id);


--
-- Name: migrations PK_8c82d7f526340ab734260ea46be; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);


--
-- Name: installed_nodes PK_8ebd28194e4f792f96b5933423fc439df97d9689; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.installed_nodes
    ADD CONSTRAINT "PK_8ebd28194e4f792f96b5933423fc439df97d9689" PRIMARY KEY (name);


--
-- Name: shared_credentials PK_8ef3a59796a228913f251779cff; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shared_credentials
    ADD CONSTRAINT "PK_8ef3a59796a228913f251779cff" PRIMARY KEY ("credentialsId", "projectId");


--
-- Name: test_case_execution PK_90c121f77a78a6580e94b794bce; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.test_case_execution
    ADD CONSTRAINT "PK_90c121f77a78a6580e94b794bce" PRIMARY KEY (id);


--
-- Name: user_api_keys PK_978fa5caa3468f463dac9d92e69; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_api_keys
    ADD CONSTRAINT "PK_978fa5caa3468f463dac9d92e69" PRIMARY KEY (id);


--
-- Name: execution_annotation_tags PK_979ec03d31294cca484be65d11f; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_annotation_tags
    ADD CONSTRAINT "PK_979ec03d31294cca484be65d11f" PRIMARY KEY ("annotationId", "tagId");


--
-- Name: webhook_entity PK_b21ace2e13596ccd87dc9bf4ea6; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.webhook_entity
    ADD CONSTRAINT "PK_b21ace2e13596ccd87dc9bf4ea6" PRIMARY KEY ("webhookPath", method);


--
-- Name: insights_by_period PK_b606942249b90cc39b0265f0575; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.insights_by_period
    ADD CONSTRAINT "PK_b606942249b90cc39b0265f0575" PRIMARY KEY (id);


--
-- Name: workflow_history PK_b6572dd6173e4cd06fe79937b58; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_history
    ADD CONSTRAINT "PK_b6572dd6173e4cd06fe79937b58" PRIMARY KEY ("versionId");


--
-- Name: scope PK_bfc45df0481abd7f355d6187da1; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.scope
    ADD CONSTRAINT "PK_bfc45df0481abd7f355d6187da1" PRIMARY KEY (slug);


--
-- Name: oauth_clients PK_c4759172d3431bae6f04e678e0d; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_clients
    ADD CONSTRAINT "PK_c4759172d3431bae6f04e678e0d" PRIMARY KEY (id);


--
-- Name: workflow_publish_history PK_c788f7caf88e91e365c97d6d04a; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_publish_history
    ADD CONSTRAINT "PK_c788f7caf88e91e365c97d6d04a" PRIMARY KEY (id);


--
-- Name: processed_data PK_ca04b9d8dc72de268fe07a65773; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.processed_data
    ADD CONSTRAINT "PK_ca04b9d8dc72de268fe07a65773" PRIMARY KEY ("workflowId", context);


--
-- Name: settings PK_dc0fe14e6d9943f268e7b119f69ab8bd; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT "PK_dc0fe14e6d9943f268e7b119f69ab8bd" PRIMARY KEY (key);


--
-- Name: oauth_access_tokens PK_dcd71f96a5d5f4bf79e67d322bf; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT "PK_dcd71f96a5d5f4bf79e67d322bf" PRIMARY KEY (token);


--
-- Name: data_table PK_e226d0001b9e6097cbfe70617cb; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.data_table
    ADD CONSTRAINT "PK_e226d0001b9e6097cbfe70617cb" PRIMARY KEY (id);


--
-- Name: user PK_ea8f538c94b6e352418254ed6474a81f; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_ea8f538c94b6e352418254ed6474a81f" PRIMARY KEY (id);


--
-- Name: insights_raw PK_ec15125755151e3a7e00e00014f; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.insights_raw
    ADD CONSTRAINT "PK_ec15125755151e3a7e00e00014f" PRIMARY KEY (id);


--
-- Name: chat_hub_agents PK_f39a3b36bbdf0e2979ddb21cf78; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_agents
    ADD CONSTRAINT "PK_f39a3b36bbdf0e2979ddb21cf78" PRIMARY KEY (id);


--
-- Name: insights_metadata PK_f448a94c35218b6208ce20cf5a1; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.insights_metadata
    ADD CONSTRAINT "PK_f448a94c35218b6208ce20cf5a1" PRIMARY KEY ("metaId");


--
-- Name: oauth_authorization_codes PK_fb91ab932cfbd694061501cc20f; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_authorization_codes
    ADD CONSTRAINT "PK_fb91ab932cfbd694061501cc20f" PRIMARY KEY (code);


--
-- Name: binary_data PK_fc3691585b39408bb0551122af6; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.binary_data
    ADD CONSTRAINT "PK_fc3691585b39408bb0551122af6" PRIMARY KEY ("fileId");


--
-- Name: role_scope PK_role_scope; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.role_scope
    ADD CONSTRAINT "PK_role_scope" PRIMARY KEY ("roleSlug", "scopeSlug");


--
-- Name: oauth_user_consents UQ_083721d99ce8db4033e2958ebb4; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_user_consents
    ADD CONSTRAINT "UQ_083721d99ce8db4033e2958ebb4" UNIQUE ("userId", "clientId");


--
-- Name: data_table_column UQ_8082ec4890f892f0bc77473a123; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.data_table_column
    ADD CONSTRAINT "UQ_8082ec4890f892f0bc77473a123" UNIQUE ("dataTableId", name);


--
-- Name: data_table UQ_b23096ef747281ac944d28e8b0d; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.data_table
    ADD CONSTRAINT "UQ_b23096ef747281ac944d28e8b0d" UNIQUE ("projectId", name);


--
-- Name: user UQ_e12875dfb3b1d92d7d7c5377e2; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "UQ_e12875dfb3b1d92d7d7c5377e2" UNIQUE (email);


--
-- Name: auth_identity auth_identity_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_identity
    ADD CONSTRAINT auth_identity_pkey PRIMARY KEY ("providerId", "providerType");


--
-- Name: auth_provider_sync_history auth_provider_sync_history_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_provider_sync_history
    ADD CONSTRAINT auth_provider_sync_history_pkey PRIMARY KEY (id);


--
-- Name: credentials_entity credentials_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.credentials_entity
    ADD CONSTRAINT credentials_entity_pkey PRIMARY KEY (id);


--
-- Name: event_destinations event_destinations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.event_destinations
    ADD CONSTRAINT event_destinations_pkey PRIMARY KEY (id);


--
-- Name: execution_data execution_data_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_data
    ADD CONSTRAINT execution_data_pkey PRIMARY KEY ("executionId");


--
-- Name: execution_entity pk_e3e63bbf986767844bbe1166d4e; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_entity
    ADD CONSTRAINT pk_e3e63bbf986767844bbe1166d4e PRIMARY KEY (id);


--
-- Name: workflow_statistics pk_workflow_statistics; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_statistics
    ADD CONSTRAINT pk_workflow_statistics PRIMARY KEY ("workflowId", name);


--
-- Name: workflows_tags pk_workflows_tags; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflows_tags
    ADD CONSTRAINT pk_workflows_tags PRIMARY KEY ("workflowId", "tagId");


--
-- Name: tag_entity tag_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tag_entity
    ADD CONSTRAINT tag_entity_pkey PRIMARY KEY (id);


--
-- Name: variables variables_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.variables
    ADD CONSTRAINT variables_pkey PRIMARY KEY (id);


--
-- Name: workflow_entity workflow_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_entity
    ADD CONSTRAINT workflow_entity_pkey PRIMARY KEY (id);


--
-- Name: IDX_070b5de842ece9ccdda0d9738b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_070b5de842ece9ccdda0d9738b" ON public.workflow_publish_history USING btree ("workflowId", "versionId");


--
-- Name: IDX_14f68deffaf858465715995508; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX "IDX_14f68deffaf858465715995508" ON public.folder USING btree ("projectId", id);


--
-- Name: IDX_1d8ab99d5861c9388d2dc1cf73; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX "IDX_1d8ab99d5861c9388d2dc1cf73" ON public.insights_metadata USING btree ("workflowId");


--
-- Name: IDX_1e31657f5fe46816c34be7c1b4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_1e31657f5fe46816c34be7c1b4" ON public.workflow_history USING btree ("workflowId");


--
-- Name: IDX_1ef35bac35d20bdae979d917a3; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX "IDX_1ef35bac35d20bdae979d917a3" ON public.user_api_keys USING btree ("apiKey");


--
-- Name: IDX_56900edc3cfd16612e2ef2c6a8; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_56900edc3cfd16612e2ef2c6a8" ON public.binary_data USING btree ("sourceType", "sourceId");


--
-- Name: IDX_5f0643f6717905a05164090dde; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_5f0643f6717905a05164090dde" ON public.project_relation USING btree ("userId");


--
-- Name: IDX_60b6a84299eeb3f671dfec7693; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX "IDX_60b6a84299eeb3f671dfec7693" ON public.insights_by_period USING btree ("periodStart", type, "periodUnit", "metaId");


--
-- Name: IDX_61448d56d61802b5dfde5cdb00; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_61448d56d61802b5dfde5cdb00" ON public.project_relation USING btree ("projectId");


--
-- Name: IDX_63d7bbae72c767cf162d459fcc; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX "IDX_63d7bbae72c767cf162d459fcc" ON public.user_api_keys USING btree ("userId", label);


--
-- Name: IDX_8e4b4774db42f1e6dda3452b2a; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_8e4b4774db42f1e6dda3452b2a" ON public.test_case_execution USING btree ("testRunId");


--
-- Name: IDX_97f863fa83c4786f1956508496; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX "IDX_97f863fa83c4786f1956508496" ON public.execution_annotations USING btree ("executionId");


--
-- Name: IDX_UniqueRoleDisplayName; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX "IDX_UniqueRoleDisplayName" ON public.role USING btree ("displayName");


--
-- Name: IDX_a3697779b366e131b2bbdae297; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_a3697779b366e131b2bbdae297" ON public.execution_annotation_tags USING btree ("tagId");


--
-- Name: IDX_a4ff2d9b9628ea988fa9e7d0bf; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_a4ff2d9b9628ea988fa9e7d0bf" ON public.workflow_dependency USING btree ("workflowId");


--
-- Name: IDX_ae51b54c4bb430cf92f48b623f; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX "IDX_ae51b54c4bb430cf92f48b623f" ON public.annotation_tag_entity USING btree (name);


--
-- Name: IDX_c1519757391996eb06064f0e7c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_c1519757391996eb06064f0e7c" ON public.execution_annotation_tags USING btree ("annotationId");


--
-- Name: IDX_cec8eea3bf49551482ccb4933e; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX "IDX_cec8eea3bf49551482ccb4933e" ON public.execution_metadata USING btree ("executionId", key);


--
-- Name: IDX_d6870d3b6e4c185d33926f423c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_d6870d3b6e4c185d33926f423c" ON public.test_run USING btree ("workflowId");


--
-- Name: IDX_e48a201071ab85d9d09119d640; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_e48a201071ab85d9d09119d640" ON public.workflow_dependency USING btree ("dependencyKey");


--
-- Name: IDX_e7fe1cfda990c14a445937d0b9; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_e7fe1cfda990c14a445937d0b9" ON public.workflow_dependency USING btree ("dependencyType");


--
-- Name: IDX_execution_entity_deletedAt; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_execution_entity_deletedAt" ON public.execution_entity USING btree ("deletedAt");


--
-- Name: IDX_role_scope_scopeSlug; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_role_scope_scopeSlug" ON public.role_scope USING btree ("scopeSlug");


--
-- Name: IDX_workflow_entity_name; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX "IDX_workflow_entity_name" ON public.workflow_entity USING btree (name);


--
-- Name: idx_07fde106c0b471d8cc80a64fc8; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX idx_07fde106c0b471d8cc80a64fc8 ON public.credentials_entity USING btree (type);


--
-- Name: idx_16f4436789e804e3e1c9eeb240; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX idx_16f4436789e804e3e1c9eeb240 ON public.webhook_entity USING btree ("webhookId", method, "pathLength");


--
-- Name: idx_812eb05f7451ca757fb98444ce; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX idx_812eb05f7451ca757fb98444ce ON public.tag_entity USING btree (name);


--
-- Name: idx_execution_entity_stopped_at_status_deleted_at; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX idx_execution_entity_stopped_at_status_deleted_at ON public.execution_entity USING btree ("stoppedAt", status, "deletedAt") WHERE (("stoppedAt" IS NOT NULL) AND ("deletedAt" IS NULL));


--
-- Name: idx_execution_entity_wait_till_status_deleted_at; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX idx_execution_entity_wait_till_status_deleted_at ON public.execution_entity USING btree ("waitTill", status, "deletedAt") WHERE (("waitTill" IS NOT NULL) AND ("deletedAt" IS NULL));


--
-- Name: idx_execution_entity_workflow_id_started_at; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX idx_execution_entity_workflow_id_started_at ON public.execution_entity USING btree ("workflowId", "startedAt") WHERE (("startedAt" IS NOT NULL) AND ("deletedAt" IS NULL));


--
-- Name: idx_workflows_tags_workflow_id; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX idx_workflows_tags_workflow_id ON public.workflows_tags USING btree ("workflowId");


--
-- Name: pk_credentials_entity_id; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX pk_credentials_entity_id ON public.credentials_entity USING btree (id);


--
-- Name: pk_tag_entity_id; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX pk_tag_entity_id ON public.tag_entity USING btree (id);


--
-- Name: pk_workflow_entity_id; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX pk_workflow_entity_id ON public.workflow_entity USING btree (id);


--
-- Name: project_relation_role_idx; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX project_relation_role_idx ON public.project_relation USING btree (role);


--
-- Name: project_relation_role_project_idx; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX project_relation_role_project_idx ON public.project_relation USING btree ("projectId", role);


--
-- Name: user_role_idx; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX user_role_idx ON public."user" USING btree ("roleSlug");


--
-- Name: variables_global_key_unique; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX variables_global_key_unique ON public.variables USING btree (key) WHERE ("projectId" IS NULL);


--
-- Name: variables_project_key_unique; Type: INDEX; Schema: public; Owner: root
--

CREATE UNIQUE INDEX variables_project_key_unique ON public.variables USING btree ("projectId", key) WHERE ("projectId" IS NOT NULL);


--
-- Name: workflow_entity workflow_version_increment; Type: TRIGGER; Schema: public; Owner: root
--

CREATE TRIGGER workflow_version_increment BEFORE UPDATE ON public.workflow_entity FOR EACH ROW EXECUTE FUNCTION public.increment_workflow_version();


--
-- Name: processed_data FK_06a69a7032c97a763c2c7599464; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.processed_data
    ADD CONSTRAINT "FK_06a69a7032c97a763c2c7599464" FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE CASCADE;


--
-- Name: workflow_entity FK_08d6c67b7f722b0039d9d5ed620; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_entity
    ADD CONSTRAINT "FK_08d6c67b7f722b0039d9d5ed620" FOREIGN KEY ("activeVersionId") REFERENCES public.workflow_history("versionId") ON DELETE RESTRICT;


--
-- Name: insights_metadata FK_1d8ab99d5861c9388d2dc1cf733; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.insights_metadata
    ADD CONSTRAINT "FK_1d8ab99d5861c9388d2dc1cf733" FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE SET NULL;


--
-- Name: workflow_history FK_1e31657f5fe46816c34be7c1b4b; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_history
    ADD CONSTRAINT "FK_1e31657f5fe46816c34be7c1b4b" FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE CASCADE;


--
-- Name: chat_hub_messages FK_1f4998c8a7dec9e00a9ab15550e; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_messages
    ADD CONSTRAINT "FK_1f4998c8a7dec9e00a9ab15550e" FOREIGN KEY ("revisionOfMessageId") REFERENCES public.chat_hub_messages(id) ON DELETE CASCADE;


--
-- Name: oauth_user_consents FK_21e6c3c2d78a097478fae6aaefa; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_user_consents
    ADD CONSTRAINT "FK_21e6c3c2d78a097478fae6aaefa" FOREIGN KEY ("userId") REFERENCES public."user"(id) ON DELETE CASCADE;


--
-- Name: insights_metadata FK_2375a1eda085adb16b24615b69c; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.insights_metadata
    ADD CONSTRAINT "FK_2375a1eda085adb16b24615b69c" FOREIGN KEY ("projectId") REFERENCES public.project(id) ON DELETE SET NULL;


--
-- Name: chat_hub_messages FK_25c9736e7f769f3a005eef4b372; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_messages
    ADD CONSTRAINT "FK_25c9736e7f769f3a005eef4b372" FOREIGN KEY ("retryOfMessageId") REFERENCES public.chat_hub_messages(id) ON DELETE CASCADE;


--
-- Name: execution_metadata FK_31d0b4c93fb85ced26f6005cda3; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_metadata
    ADD CONSTRAINT "FK_31d0b4c93fb85ced26f6005cda3" FOREIGN KEY ("executionId") REFERENCES public.execution_entity(id) ON DELETE CASCADE;


--
-- Name: shared_credentials FK_416f66fc846c7c442970c094ccf; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shared_credentials
    ADD CONSTRAINT "FK_416f66fc846c7c442970c094ccf" FOREIGN KEY ("credentialsId") REFERENCES public.credentials_entity(id) ON DELETE CASCADE;


--
-- Name: variables FK_42f6c766f9f9d2edcc15bdd6e9b; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.variables
    ADD CONSTRAINT "FK_42f6c766f9f9d2edcc15bdd6e9b" FOREIGN KEY ("projectId") REFERENCES public.project(id) ON DELETE CASCADE;


--
-- Name: chat_hub_agents FK_441ba2caba11e077ce3fbfa2cd8; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_agents
    ADD CONSTRAINT "FK_441ba2caba11e077ce3fbfa2cd8" FOREIGN KEY ("ownerId") REFERENCES public."user"(id) ON DELETE CASCADE;


--
-- Name: project_relation FK_5f0643f6717905a05164090dde7; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.project_relation
    ADD CONSTRAINT "FK_5f0643f6717905a05164090dde7" FOREIGN KEY ("userId") REFERENCES public."user"(id) ON DELETE CASCADE;


--
-- Name: project_relation FK_61448d56d61802b5dfde5cdb002; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.project_relation
    ADD CONSTRAINT "FK_61448d56d61802b5dfde5cdb002" FOREIGN KEY ("projectId") REFERENCES public.project(id) ON DELETE CASCADE;


--
-- Name: insights_by_period FK_6414cfed98daabbfdd61a1cfbc0; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.insights_by_period
    ADD CONSTRAINT "FK_6414cfed98daabbfdd61a1cfbc0" FOREIGN KEY ("metaId") REFERENCES public.insights_metadata("metaId") ON DELETE CASCADE;


--
-- Name: oauth_authorization_codes FK_64d965bd072ea24fb6da55468cd; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_authorization_codes
    ADD CONSTRAINT "FK_64d965bd072ea24fb6da55468cd" FOREIGN KEY ("clientId") REFERENCES public.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: chat_hub_messages FK_6afb260449dd7a9b85355d4e0c9; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_messages
    ADD CONSTRAINT "FK_6afb260449dd7a9b85355d4e0c9" FOREIGN KEY ("executionId") REFERENCES public.execution_entity(id) ON DELETE SET NULL;


--
-- Name: insights_raw FK_6e2e33741adef2a7c5d66befa4e; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.insights_raw
    ADD CONSTRAINT "FK_6e2e33741adef2a7c5d66befa4e" FOREIGN KEY ("metaId") REFERENCES public.insights_metadata("metaId") ON DELETE CASCADE;


--
-- Name: workflow_publish_history FK_6eab5bd9eedabe9c54bd879fc40; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_publish_history
    ADD CONSTRAINT "FK_6eab5bd9eedabe9c54bd879fc40" FOREIGN KEY ("userId") REFERENCES public."user"(id) ON DELETE SET NULL;


--
-- Name: oauth_access_tokens FK_7234a36d8e49a1fa85095328845; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT "FK_7234a36d8e49a1fa85095328845" FOREIGN KEY ("userId") REFERENCES public."user"(id) ON DELETE CASCADE;


--
-- Name: installed_nodes FK_73f857fc5dce682cef8a99c11dbddbc969618951; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.installed_nodes
    ADD CONSTRAINT "FK_73f857fc5dce682cef8a99c11dbddbc969618951" FOREIGN KEY (package) REFERENCES public.installed_packages("packageName") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: oauth_access_tokens FK_78b26968132b7e5e45b75876481; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT "FK_78b26968132b7e5e45b75876481" FOREIGN KEY ("clientId") REFERENCES public.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: chat_hub_sessions FK_7bc13b4c7e6afbfaf9be326c189; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_sessions
    ADD CONSTRAINT "FK_7bc13b4c7e6afbfaf9be326c189" FOREIGN KEY ("credentialId") REFERENCES public.credentials_entity(id) ON DELETE SET NULL;


--
-- Name: folder FK_804ea52f6729e3940498bd54d78; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.folder
    ADD CONSTRAINT "FK_804ea52f6729e3940498bd54d78" FOREIGN KEY ("parentFolderId") REFERENCES public.folder(id) ON DELETE CASCADE;


--
-- Name: shared_credentials FK_812c2852270da1247756e77f5a4; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shared_credentials
    ADD CONSTRAINT "FK_812c2852270da1247756e77f5a4" FOREIGN KEY ("projectId") REFERENCES public.project(id) ON DELETE CASCADE;


--
-- Name: test_case_execution FK_8e4b4774db42f1e6dda3452b2af; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.test_case_execution
    ADD CONSTRAINT "FK_8e4b4774db42f1e6dda3452b2af" FOREIGN KEY ("testRunId") REFERENCES public.test_run(id) ON DELETE CASCADE;


--
-- Name: data_table_column FK_930b6e8faaf88294cef23484160; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.data_table_column
    ADD CONSTRAINT "FK_930b6e8faaf88294cef23484160" FOREIGN KEY ("dataTableId") REFERENCES public.data_table(id) ON DELETE CASCADE;


--
-- Name: folder_tag FK_94a60854e06f2897b2e0d39edba; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.folder_tag
    ADD CONSTRAINT "FK_94a60854e06f2897b2e0d39edba" FOREIGN KEY ("folderId") REFERENCES public.folder(id) ON DELETE CASCADE;


--
-- Name: execution_annotations FK_97f863fa83c4786f19565084960; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_annotations
    ADD CONSTRAINT "FK_97f863fa83c4786f19565084960" FOREIGN KEY ("executionId") REFERENCES public.execution_entity(id) ON DELETE CASCADE;


--
-- Name: chat_hub_agents FK_9c61ad497dcbae499c96a6a78ba; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_agents
    ADD CONSTRAINT "FK_9c61ad497dcbae499c96a6a78ba" FOREIGN KEY ("credentialId") REFERENCES public.credentials_entity(id) ON DELETE SET NULL;


--
-- Name: chat_hub_sessions FK_9f9293d9f552496c40e0d1a8f80; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_sessions
    ADD CONSTRAINT "FK_9f9293d9f552496c40e0d1a8f80" FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE SET NULL;


--
-- Name: execution_annotation_tags FK_a3697779b366e131b2bbdae2976; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_annotation_tags
    ADD CONSTRAINT "FK_a3697779b366e131b2bbdae2976" FOREIGN KEY ("tagId") REFERENCES public.annotation_tag_entity(id) ON DELETE CASCADE;


--
-- Name: shared_workflow FK_a45ea5f27bcfdc21af9b4188560; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shared_workflow
    ADD CONSTRAINT "FK_a45ea5f27bcfdc21af9b4188560" FOREIGN KEY ("projectId") REFERENCES public.project(id) ON DELETE CASCADE;


--
-- Name: workflow_dependency FK_a4ff2d9b9628ea988fa9e7d0bf8; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_dependency
    ADD CONSTRAINT "FK_a4ff2d9b9628ea988fa9e7d0bf8" FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE CASCADE;


--
-- Name: oauth_user_consents FK_a651acea2f6c97f8c4514935486; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_user_consents
    ADD CONSTRAINT "FK_a651acea2f6c97f8c4514935486" FOREIGN KEY ("clientId") REFERENCES public.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: oauth_refresh_tokens FK_a699f3ed9fd0c1b19bc2608ac53; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_refresh_tokens
    ADD CONSTRAINT "FK_a699f3ed9fd0c1b19bc2608ac53" FOREIGN KEY ("userId") REFERENCES public."user"(id) ON DELETE CASCADE;


--
-- Name: folder FK_a8260b0b36939c6247f385b8221; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.folder
    ADD CONSTRAINT "FK_a8260b0b36939c6247f385b8221" FOREIGN KEY ("projectId") REFERENCES public.project(id) ON DELETE CASCADE;


--
-- Name: oauth_authorization_codes FK_aa8d3560484944c19bdf79ffa16; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_authorization_codes
    ADD CONSTRAINT "FK_aa8d3560484944c19bdf79ffa16" FOREIGN KEY ("userId") REFERENCES public."user"(id) ON DELETE CASCADE;


--
-- Name: chat_hub_messages FK_acf8926098f063cdbbad8497fd1; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_messages
    ADD CONSTRAINT "FK_acf8926098f063cdbbad8497fd1" FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE SET NULL;


--
-- Name: oauth_refresh_tokens FK_b388696ce4d8be7ffbe8d3e4b69; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.oauth_refresh_tokens
    ADD CONSTRAINT "FK_b388696ce4d8be7ffbe8d3e4b69" FOREIGN KEY ("clientId") REFERENCES public.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: workflow_publish_history FK_b4cfbc7556d07f36ca177f5e473; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_publish_history
    ADD CONSTRAINT "FK_b4cfbc7556d07f36ca177f5e473" FOREIGN KEY ("versionId") REFERENCES public.workflow_history("versionId") ON DELETE CASCADE;


--
-- Name: workflow_publish_history FK_c01316f8c2d7101ec4fa9809267; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_publish_history
    ADD CONSTRAINT "FK_c01316f8c2d7101ec4fa9809267" FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE CASCADE;


--
-- Name: execution_annotation_tags FK_c1519757391996eb06064f0e7c8; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_annotation_tags
    ADD CONSTRAINT "FK_c1519757391996eb06064f0e7c8" FOREIGN KEY ("annotationId") REFERENCES public.execution_annotations(id) ON DELETE CASCADE;


--
-- Name: data_table FK_c2a794257dee48af7c9abf681de; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.data_table
    ADD CONSTRAINT "FK_c2a794257dee48af7c9abf681de" FOREIGN KEY ("projectId") REFERENCES public.project(id) ON DELETE CASCADE;


--
-- Name: project_relation FK_c6b99592dc96b0d836d7a21db91; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.project_relation
    ADD CONSTRAINT "FK_c6b99592dc96b0d836d7a21db91" FOREIGN KEY (role) REFERENCES public.role(slug);


--
-- Name: test_run FK_d6870d3b6e4c185d33926f423c8; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.test_run
    ADD CONSTRAINT "FK_d6870d3b6e4c185d33926f423c8" FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE CASCADE;


--
-- Name: shared_workflow FK_daa206a04983d47d0a9c34649ce; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shared_workflow
    ADD CONSTRAINT "FK_daa206a04983d47d0a9c34649ce" FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE CASCADE;


--
-- Name: folder_tag FK_dc88164176283de80af47621746; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.folder_tag
    ADD CONSTRAINT "FK_dc88164176283de80af47621746" FOREIGN KEY ("tagId") REFERENCES public.tag_entity(id) ON DELETE CASCADE;


--
-- Name: user_api_keys FK_e131705cbbc8fb589889b02d457; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.user_api_keys
    ADD CONSTRAINT "FK_e131705cbbc8fb589889b02d457" FOREIGN KEY ("userId") REFERENCES public."user"(id) ON DELETE CASCADE;


--
-- Name: chat_hub_messages FK_e22538eb50a71a17954cd7e076c; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_messages
    ADD CONSTRAINT "FK_e22538eb50a71a17954cd7e076c" FOREIGN KEY ("sessionId") REFERENCES public.chat_hub_sessions(id) ON DELETE CASCADE;


--
-- Name: test_case_execution FK_e48965fac35d0f5b9e7f51d8c44; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.test_case_execution
    ADD CONSTRAINT "FK_e48965fac35d0f5b9e7f51d8c44" FOREIGN KEY ("executionId") REFERENCES public.execution_entity(id) ON DELETE SET NULL;


--
-- Name: chat_hub_messages FK_e5d1fa722c5a8d38ac204746662; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_messages
    ADD CONSTRAINT "FK_e5d1fa722c5a8d38ac204746662" FOREIGN KEY ("previousMessageId") REFERENCES public.chat_hub_messages(id) ON DELETE CASCADE;


--
-- Name: chat_hub_sessions FK_e9ecf8ede7d989fcd18790fe36a; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.chat_hub_sessions
    ADD CONSTRAINT "FK_e9ecf8ede7d989fcd18790fe36a" FOREIGN KEY ("ownerId") REFERENCES public."user"(id) ON DELETE CASCADE;


--
-- Name: user FK_eaea92ee7bfb9c1b6cd01505d56; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "FK_eaea92ee7bfb9c1b6cd01505d56" FOREIGN KEY ("roleSlug") REFERENCES public.role(slug);


--
-- Name: role_scope FK_role; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.role_scope
    ADD CONSTRAINT "FK_role" FOREIGN KEY ("roleSlug") REFERENCES public.role(slug) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: role_scope FK_scope; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.role_scope
    ADD CONSTRAINT "FK_scope" FOREIGN KEY ("scopeSlug") REFERENCES public.scope(slug) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: auth_identity auth_identity_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_identity
    ADD CONSTRAINT "auth_identity_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."user"(id);


--
-- Name: execution_data execution_data_fk; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_data
    ADD CONSTRAINT execution_data_fk FOREIGN KEY ("executionId") REFERENCES public.execution_entity(id) ON DELETE CASCADE;


--
-- Name: execution_entity fk_execution_entity_workflow_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.execution_entity
    ADD CONSTRAINT fk_execution_entity_workflow_id FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE CASCADE;


--
-- Name: webhook_entity fk_webhook_entity_workflow_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.webhook_entity
    ADD CONSTRAINT fk_webhook_entity_workflow_id FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE CASCADE;


--
-- Name: workflow_entity fk_workflow_parent_folder; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_entity
    ADD CONSTRAINT fk_workflow_parent_folder FOREIGN KEY ("parentFolderId") REFERENCES public.folder(id) ON DELETE CASCADE;


--
-- Name: workflow_statistics fk_workflow_statistics_workflow_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflow_statistics
    ADD CONSTRAINT fk_workflow_statistics_workflow_id FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE CASCADE;


--
-- Name: workflows_tags fk_workflows_tags_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflows_tags
    ADD CONSTRAINT fk_workflows_tags_tag_id FOREIGN KEY ("tagId") REFERENCES public.tag_entity(id) ON DELETE CASCADE;


--
-- Name: workflows_tags fk_workflows_tags_workflow_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.workflows_tags
    ADD CONSTRAINT fk_workflows_tags_workflow_id FOREIGN KEY ("workflowId") REFERENCES public.workflow_entity(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict wk7C3Qk5rrKjJCMYZrlhRFLaiGrNDUiduGom8VheL0klSU6hPVNoaRdpVkeXh3e

--
-- Database "nomiq" dump
--

--
-- PostgreSQL database dump
--

\restrict jubqsE2f4QF8t6coksnrq9mmSt8ThRebXiSgbTgw6XT6PszwBRx7fsw4xN770fR

-- Dumped from database version 17.7 (Debian 17.7-3.pgdg13+1)
-- Dumped by pg_dump version 17.7 (Debian 17.7-3.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: nomiq; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE nomiq WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE nomiq OWNER TO root;

\unrestrict jubqsE2f4QF8t6coksnrq9mmSt8ThRebXiSgbTgw6XT6PszwBRx7fsw4xN770fR
\connect nomiq
\restrict jubqsE2f4QF8t6coksnrq9mmSt8ThRebXiSgbTgw6XT6PszwBRx7fsw4xN770fR

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.accounts (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    initial_balance numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    currency_code character varying(255) DEFAULT 'USD'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    current_balance numeric(15,2) DEFAULT '0'::numeric NOT NULL
);


ALTER TABLE public.accounts OWNER TO root;

--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accounts_id_seq OWNER TO root;

--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;


--
-- Name: activity_log; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.activity_log (
    id bigint NOT NULL,
    log_name character varying(255),
    description text NOT NULL,
    subject_type character varying(255),
    subject_id bigint,
    causer_type character varying(255),
    causer_id bigint,
    properties json,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    event character varying(255),
    batch_uuid uuid
);


ALTER TABLE public.activity_log OWNER TO root;

--
-- Name: activity_log_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.activity_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.activity_log_id_seq OWNER TO root;

--
-- Name: activity_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.activity_log_id_seq OWNED BY public.activity_log.id;


--
-- Name: cache; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO root;

--
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO root;

--
-- Name: clients; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.clients (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    tax_id character varying(255),
    address text,
    phone character varying(255),
    email character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    price_list_id bigint
);


ALTER TABLE public.clients OWNER TO root;

--
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clients_id_seq OWNER TO root;

--
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;


--
-- Name: crypto_subscriptions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.crypto_subscriptions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    cryptomus_uuid character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    amount numeric(15,8) NOT NULL,
    currency character varying(10) DEFAULT 'USD'::character varying NOT NULL,
    period character varying(255) NOT NULL,
    status character varying(255) DEFAULT 'wait_accept'::character varying NOT NULL,
    started_at timestamp(0) without time zone,
    next_billing_at timestamp(0) without time zone,
    last_pay_off timestamp(0) without time zone,
    cryptomus_data json,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    plan_id bigint,
    CONSTRAINT crypto_subscriptions_period_check CHECK (((period)::text = ANY ((ARRAY['weekly'::character varying, 'monthly'::character varying, 'three_month'::character varying, 'six_month'::character varying, 'yearly'::character varying])::text[]))),
    CONSTRAINT crypto_subscriptions_status_check CHECK (((status)::text = ANY ((ARRAY['wait_accept'::character varying, 'active'::character varying, 'cancel_by_merchant'::character varying, 'cancel_by_user'::character varying])::text[])))
);


ALTER TABLE public.crypto_subscriptions OWNER TO root;

--
-- Name: crypto_subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.crypto_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.crypto_subscriptions_id_seq OWNER TO root;

--
-- Name: crypto_subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.crypto_subscriptions_id_seq OWNED BY public.crypto_subscriptions.id;


--
-- Name: expenses; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.expenses (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    account_id bigint NOT NULL,
    provider_id bigint,
    order_id bigint,
    amount numeric(15,2) NOT NULL,
    category character varying(255) NOT NULL,
    receipt_path character varying(255),
    date date NOT NULL,
    is_recurring boolean DEFAULT false NOT NULL,
    recurrence_interval character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tax_id bigint,
    client_id bigint,
    folio character varying(255),
    deleted_at timestamp(0) without time zone,
    currency_code character varying(3) DEFAULT 'USD'::character varying NOT NULL,
    pdf_path character varying(255)
);


ALTER TABLE public.expenses OWNER TO root;

--
-- Name: expenses_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.expenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.expenses_id_seq OWNER TO root;

--
-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.expenses_id_seq OWNED BY public.expenses.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO root;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO root;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: feedback; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.feedback (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    subject character varying(255) NOT NULL,
    message text NOT NULL,
    type character varying(255) DEFAULT 'support'::character varying NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.feedback OWNER TO root;

--
-- Name: feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.feedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.feedback_id_seq OWNER TO root;

--
-- Name: feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.feedback_id_seq OWNED BY public.feedback.id;


--
-- Name: incomes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.incomes (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    account_id bigint NOT NULL,
    order_id bigint,
    amount numeric(15,2) NOT NULL,
    reference character varying(255),
    date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    provider_id bigint,
    folio character varying(255),
    deleted_at timestamp(0) without time zone,
    currency_code character varying(3) DEFAULT 'USD'::character varying NOT NULL,
    pdf_path character varying(255)
);


ALTER TABLE public.incomes OWNER TO root;

--
-- Name: incomes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.incomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.incomes_id_seq OWNER TO root;

--
-- Name: incomes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.incomes_id_seq OWNED BY public.incomes.id;


--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO root;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO root;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO root;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO root;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO root;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: model_has_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_permissions OWNER TO root;

--
-- Name: model_has_roles; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE public.model_has_roles OWNER TO root;

--
-- Name: notifications; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.notifications (
    id uuid NOT NULL,
    type character varying(255) NOT NULL,
    notifiable_type character varying(255) NOT NULL,
    notifiable_id bigint NOT NULL,
    data json NOT NULL,
    read_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.notifications OWNER TO root;

--
-- Name: order_items; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.order_items (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    product_id bigint,
    service_id bigint,
    name character varying(255) NOT NULL,
    price numeric(15,2) NOT NULL,
    cost numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    quantity numeric(15,2) NOT NULL,
    tax_rate numeric(5,2) DEFAULT '0'::numeric NOT NULL,
    subtotal numeric(15,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.order_items OWNER TO root;

--
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_items_id_seq OWNER TO root;

--
-- Name: order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    client_id bigint,
    provider_id bigint,
    folio character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    total numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    tax_amount numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    paid_amount numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    date date NOT NULL,
    currency_code character varying(255) DEFAULT 'USD'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    pdf_path character varying(255)
);


ALTER TABLE public.orders OWNER TO root;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO root;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO root;

--
-- Name: payments; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.payments (
    id bigint NOT NULL,
    subscription_id bigint NOT NULL,
    user_id bigint NOT NULL,
    cryptomus_uuid character varying(255) NOT NULL,
    amount numeric(15,8) NOT NULL,
    currency character varying(10) DEFAULT 'USD'::character varying NOT NULL,
    payment_amount numeric(15,8),
    payment_amount_usd numeric(15,8),
    merchant_amount numeric(15,8),
    commission numeric(15,8),
    status character varying(255) DEFAULT 'confirm_check'::character varying NOT NULL,
    payer_currency character varying(10),
    network character varying(255),
    txid character varying(255),
    from_address character varying(255),
    is_final boolean DEFAULT false NOT NULL,
    cryptomus_data json,
    paid_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT payments_status_check CHECK (((status)::text = ANY ((ARRAY['confirm_check'::character varying, 'paid'::character varying, 'paid_over'::character varying, 'fail'::character varying, 'wrong_amount'::character varying, 'cancel'::character varying, 'system_fail'::character varying, 'refund_process'::character varying, 'refund_fail'::character varying, 'refund_paid'::character varying])::text[])))
);


ALTER TABLE public.payments OWNER TO root;

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payments_id_seq OWNER TO root;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.permissions OWNER TO root;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permissions_id_seq OWNER TO root;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name text NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO root;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO root;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: plan_features; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.plan_features (
    id bigint NOT NULL,
    plan_id bigint NOT NULL,
    model character varying(255),
    "limit" integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL
);


ALTER TABLE public.plan_features OWNER TO root;

--
-- Name: plan_features_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.plan_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.plan_features_id_seq OWNER TO root;

--
-- Name: plan_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.plan_features_id_seq OWNED BY public.plan_features.id;


--
-- Name: plans; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.plans (
    id bigint NOT NULL,
    slug character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL,
    currency character varying(255) DEFAULT 'USD'::character varying NOT NULL,
    "interval" character varying(255) DEFAULT 'month'::character varying NOT NULL,
    trial_period_days integer,
    stripe_product_id character varying(255),
    stripe_price_id character varying(255),
    cryptomus_uuid character varying(255),
    is_active boolean DEFAULT true NOT NULL,
    is_featured boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) DEFAULT 'Unnamed Plan'::character varying NOT NULL,
    description text
);


ALTER TABLE public.plans OWNER TO root;

--
-- Name: plans_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.plans_id_seq OWNER TO root;

--
-- Name: plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.plans_id_seq OWNED BY public.plans.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.posts (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    content text NOT NULL,
    seo_title character varying(255),
    seo_description text,
    published_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.posts OWNER TO root;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO root;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: price_list_items; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.price_list_items (
    id bigint NOT NULL,
    price_list_id bigint NOT NULL,
    priceable_type character varying(255) NOT NULL,
    priceable_id bigint NOT NULL,
    price numeric(15,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    currency_code character varying(3) DEFAULT 'USD'::character varying NOT NULL
);


ALTER TABLE public.price_list_items OWNER TO root;

--
-- Name: price_list_items_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.price_list_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.price_list_items_id_seq OWNER TO root;

--
-- Name: price_list_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.price_list_items_id_seq OWNED BY public.price_list_items.id;


--
-- Name: price_lists; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.price_lists (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.price_lists OWNER TO root;

--
-- Name: price_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.price_lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.price_lists_id_seq OWNER TO root;

--
-- Name: price_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.price_lists_id_seq OWNED BY public.price_lists.id;


--
-- Name: product_prices; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.product_prices (
    id bigint NOT NULL,
    price_list_id bigint NOT NULL,
    product_id bigint NOT NULL,
    price numeric(15,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.product_prices OWNER TO root;

--
-- Name: product_prices_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.product_prices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_prices_id_seq OWNER TO root;

--
-- Name: product_prices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.product_prices_id_seq OWNED BY public.product_prices.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    sku character varying(255),
    name character varying(255) NOT NULL,
    price numeric(15,2) NOT NULL,
    cost numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    stock_current numeric(15,2) DEFAULT '0'::numeric NOT NULL,
    stock_alert numeric(15,2) DEFAULT '1'::numeric NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tax_id bigint,
    unit character varying(255) DEFAULT 'unit'::character varying NOT NULL,
    currency_code character varying(3) DEFAULT 'USD'::character varying NOT NULL,
    CONSTRAINT products_unit_check CHECK (((unit)::text = ANY ((ARRAY['unit'::character varying, 'kg'::character varying, 'g'::character varying, 'l'::character varying, 'ml'::character varying, 'm'::character varying, 'cm'::character varying, 't'::character varying])::text[])))
);


ALTER TABLE public.products OWNER TO root;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO root;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: providers; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.providers (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    tax_id character varying(255),
    bank_details text,
    category character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.providers OWNER TO root;

--
-- Name: providers_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.providers_id_seq OWNER TO root;

--
-- Name: providers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.providers_id_seq OWNED BY public.providers.id;


--
-- Name: role_has_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.role_has_permissions OWNER TO root;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.roles OWNER TO root;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO root;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.services (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    price numeric(15,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tax_id bigint,
    currency_code character varying(3) DEFAULT 'USD'::character varying NOT NULL
);


ALTER TABLE public.services OWNER TO root;

--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.services_id_seq OWNER TO root;

--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


ALTER TABLE public.sessions OWNER TO root;

--
-- Name: subscription_items; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.subscription_items (
    id bigint NOT NULL,
    subscription_id bigint NOT NULL,
    stripe_id character varying(255) NOT NULL,
    stripe_product character varying(255) NOT NULL,
    stripe_price character varying(255) NOT NULL,
    quantity integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    meter_id character varying(255),
    meter_event_name character varying(255)
);


ALTER TABLE public.subscription_items OWNER TO root;

--
-- Name: subscription_items_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.subscription_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subscription_items_id_seq OWNER TO root;

--
-- Name: subscription_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.subscription_items_id_seq OWNED BY public.subscription_items.id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.subscriptions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    type character varying(255) NOT NULL,
    stripe_id character varying(255) NOT NULL,
    stripe_status character varying(255) NOT NULL,
    stripe_price character varying(255),
    quantity integer,
    trial_ends_at timestamp(0) without time zone,
    ends_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.subscriptions OWNER TO root;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subscriptions_id_seq OWNER TO root;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;


--
-- Name: taxes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.taxes (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    rate numeric(5,2) NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.taxes OWNER TO root;

--
-- Name: taxes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.taxes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.taxes_id_seq OWNER TO root;

--
-- Name: taxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.taxes_id_seq OWNED BY public.taxes.id;


--
-- Name: team_invitations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.team_invitations (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    email character varying(255) NOT NULL,
    role character varying(255),
    token character varying(64) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.team_invitations OWNER TO root;

--
-- Name: team_invitations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.team_invitations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.team_invitations_id_seq OWNER TO root;

--
-- Name: team_invitations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.team_invitations_id_seq OWNED BY public.team_invitations.id;


--
-- Name: team_user; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.team_user (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    user_id bigint NOT NULL,
    role character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.team_user OWNER TO root;

--
-- Name: team_user_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.team_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.team_user_id_seq OWNER TO root;

--
-- Name: team_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.team_user_id_seq OWNED BY public.team_user.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.teams (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    personal_team boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    currency_code character varying(255) DEFAULT 'USD'::character varying NOT NULL,
    tax_id character varying(255),
    address text,
    phone character varying(255),
    invoice_prefix character varying(255),
    logo_path character varying(255)
);


ALTER TABLE public.teams OWNER TO root;

--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teams_id_seq OWNER TO root;

--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- Name: telescope_entries; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.telescope_entries (
    sequence bigint NOT NULL,
    uuid uuid NOT NULL,
    batch_id uuid NOT NULL,
    family_hash character varying(255),
    should_display_on_index boolean DEFAULT true NOT NULL,
    type character varying(20) NOT NULL,
    content text NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.telescope_entries OWNER TO root;

--
-- Name: telescope_entries_sequence_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.telescope_entries_sequence_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.telescope_entries_sequence_seq OWNER TO root;

--
-- Name: telescope_entries_sequence_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.telescope_entries_sequence_seq OWNED BY public.telescope_entries.sequence;


--
-- Name: telescope_entries_tags; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.telescope_entries_tags (
    entry_uuid uuid NOT NULL,
    tag character varying(255) NOT NULL
);


ALTER TABLE public.telescope_entries_tags OWNER TO root;

--
-- Name: telescope_monitoring; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.telescope_monitoring (
    tag character varying(255) NOT NULL
);


ALTER TABLE public.telescope_monitoring OWNER TO root;

--
-- Name: users; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    google_id character varying(255),
    github_id character varying(255),
    apple_id character varying(255),
    stripe_id character varying(255),
    pm_type character varying(255),
    pm_last_four character varying(4),
    trial_ends_at timestamp(0) without time zone,
    current_team_id bigint,
    locale character varying(255) DEFAULT 'en'::character varying NOT NULL
);


ALTER TABLE public.users OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO root;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: accounts id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);


--
-- Name: activity_log id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.activity_log ALTER COLUMN id SET DEFAULT nextval('public.activity_log_id_seq'::regclass);


--
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);


--
-- Name: crypto_subscriptions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.crypto_subscriptions ALTER COLUMN id SET DEFAULT nextval('public.crypto_subscriptions_id_seq'::regclass);


--
-- Name: expenses id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses ALTER COLUMN id SET DEFAULT nextval('public.expenses_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: feedback id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.feedback ALTER COLUMN id SET DEFAULT nextval('public.feedback_id_seq'::regclass);


--
-- Name: incomes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.incomes ALTER COLUMN id SET DEFAULT nextval('public.incomes_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: order_items id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: plan_features id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.plan_features ALTER COLUMN id SET DEFAULT nextval('public.plan_features_id_seq'::regclass);


--
-- Name: plans id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.plans ALTER COLUMN id SET DEFAULT nextval('public.plans_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: price_list_items id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.price_list_items ALTER COLUMN id SET DEFAULT nextval('public.price_list_items_id_seq'::regclass);


--
-- Name: price_lists id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.price_lists ALTER COLUMN id SET DEFAULT nextval('public.price_lists_id_seq'::regclass);


--
-- Name: product_prices id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_prices ALTER COLUMN id SET DEFAULT nextval('public.product_prices_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: providers id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.providers ALTER COLUMN id SET DEFAULT nextval('public.providers_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: services id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- Name: subscription_items id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_items ALTER COLUMN id SET DEFAULT nextval('public.subscription_items_id_seq'::regclass);


--
-- Name: subscriptions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);


--
-- Name: taxes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.taxes ALTER COLUMN id SET DEFAULT nextval('public.taxes_id_seq'::regclass);


--
-- Name: team_invitations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_invitations ALTER COLUMN id SET DEFAULT nextval('public.team_invitations_id_seq'::regclass);


--
-- Name: team_user id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_user ALTER COLUMN id SET DEFAULT nextval('public.team_user_id_seq'::regclass);


--
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- Name: telescope_entries sequence; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.telescope_entries ALTER COLUMN sequence SET DEFAULT nextval('public.telescope_entries_sequence_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.accounts (id, team_id, name, type, initial_balance, currency_code, created_at, updated_at, current_balance) FROM stdin;
\.


--
-- Data for Name: activity_log; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.activity_log (id, log_name, description, subject_type, subject_id, causer_type, causer_id, properties, created_at, updated_at, event, batch_uuid) FROM stdin;
\.


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.cache (key, value, expiration) FROM stdin;
\.


--
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.clients (id, team_id, name, tax_id, address, phone, email, created_at, updated_at, price_list_id) FROM stdin;
\.


--
-- Data for Name: crypto_subscriptions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.crypto_subscriptions (id, user_id, cryptomus_uuid, name, amount, currency, period, status, started_at, next_billing_at, last_pay_off, cryptomus_data, created_at, updated_at, plan_id) FROM stdin;
\.


--
-- Data for Name: expenses; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.expenses (id, team_id, account_id, provider_id, order_id, amount, category, receipt_path, date, is_recurring, recurrence_interval, created_at, updated_at, tax_id, client_id, folio, deleted_at, currency_code, pdf_path) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: feedback; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.feedback (id, user_id, subject, message, type, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: incomes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.incomes (id, team_id, account_id, order_id, amount, reference, date, created_at, updated_at, provider_id, folio, deleted_at, currency_code, pdf_path) FROM stdin;
\.


--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	0001_01_01_000000_create_users_table	1
2	0001_01_01_000001_create_cache_table	1
3	0001_01_01_000002_create_jobs_table	1
4	2025_12_11_153128_add_oauth_fields_to_users_table	1
5	2025_12_11_155902_add_apple_id_to_users_table	1
6	2025_12_11_171001_create_crypto_subscriptions_table	1
7	2025_12_11_171003_create_payments_table	1
8	2025_12_14_050625_create_telescope_entries_table	1
9	2025_12_14_103421_add_oauth_fields_to_users_table	1
10	2025_12_14_104711_create_permission_tables	1
11	2025_12_17_023333_create_customer_columns	1
12	2025_12_17_023334_create_subscriptions_table	1
13	2025_12_17_023335_create_subscription_items_table	1
14	2025_12_17_023336_add_meter_id_to_subscription_items_table	1
15	2025_12_17_023337_add_meter_event_name_to_subscription_items_table	1
16	2025_12_17_182519_create_team_user_table	1
17	2025_12_17_182519_create_teams_table	1
18	2025_12_17_182520_add_current_team_id_to_users_table	1
19	2025_12_17_185253_create_plans_table	1
20	2025_12_18_040132_create_personal_access_tokens_table	1
21	2025_12_19_054411_add_yearly_to_crypto_subscriptions_period_enum	1
22	2025_12_19_054947_add_locale_to_users_table	1
23	2025_12_19_155344_create_activity_log_table	1
24	2025_12_19_155345_add_event_column_to_activity_log_table	1
25	2025_12_19_155346_add_batch_uuid_column_to_activity_log_table	1
26	2025_12_19_190448_create_feedback_table	1
27	2025_12_19_190828_create_posts_table	1
28	2025_12_19_210706_make_plan_fields_translatable	1
29	2025_12_24_021438_create_team_invitations_table	1
30	2025_12_29_101938_create_plan_features_table	1
31	2025_12_29_101939_remove_features_from_plans_table	1
32	2025_12_29_111756_revert_plan_fields_to_string	1
33	2025_12_29_111922_change_plans_columns_to_text	1
34	2025_12_29_112443_change_plan_features_name_to_string	1
35	2026_01_04_170722_create_notifications_table	1
36	2026_01_06_022513_add_business_fields_to_teams_table	1
37	2026_01_06_022534_create_accounts_table	1
38	2026_01_06_022534_create_clients_table	1
39	2026_01_06_022534_create_providers_table	1
40	2026_01_06_022602_create_products_table	1
41	2026_01_06_022602_create_services_table	1
42	2026_01_06_022618_create_orders_table	1
43	2026_01_06_022619_create_order_items_table	1
44	2026_01_06_022620_create_incomes_table	1
45	2026_01_06_022621_create_expenses_table	1
46	2026_01_06_024427_add_current_balance_to_accounts_table	1
47	2026_01_06_024743_add_pdf_path_to_orders_table	1
48	2026_01_06_144232_add_plan_id_to_crypto_subscriptions_table	1
49	2026_01_06_145221_fix_crypto_subscriptions_period_check_constraint	1
50	2026_01_09_042311_create_taxes_table	1
51	2026_01_09_042503_add_tax_id_to_products_table	1
52	2026_01_09_042514_add_tax_id_to_services_table	1
53	2026_01_09_042522_add_fields_to_expenses_table	1
54	2026_01_09_042530_add_fields_to_incomes_table	1
55	2026_01_09_042758_create_price_lists_table	1
56	2026_01_09_042805_create_product_prices_table	1
57	2026_01_09_042822_add_price_list_id_to_clients_table	1
58	2026_01_09_152145_add_unit_to_products_table	1
59	2026_01_09_152300_create_price_list_items_table	1
60	2026_01_10_212345_add_currency_code_to_financial_tables	1
61	2026_01_10_212448_add_currency_code_to_products_table	1
62	2026_01_10_212450_add_currency_code_to_services_table	1
63	2026_01_10_212452_add_currency_code_to_incomes_table	1
64	2026_01_10_212454_add_currency_code_to_expenses_table	1
65	2026_01_10_212456_add_currency_code_to_price_list_items_table	1
66	2026_01_10_220025_add_pdf_path_columns	1
\.


--
-- Data for Name: model_has_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
\.


--
-- Data for Name: model_has_roles; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.notifications (id, type, notifiable_type, notifiable_id, data, read_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.order_items (id, order_id, product_id, service_id, name, price, cost, quantity, tax_rate, subtotal, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.orders (id, team_id, client_id, provider_id, folio, type, status, total, tax_amount, paid_amount, date, currency_code, created_at, updated_at, pdf_path) FROM stdin;
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.payments (id, subscription_id, user_id, cryptomus_uuid, amount, currency, payment_amount, payment_amount_usd, merchant_amount, commission, status, payer_currency, network, txid, from_address, is_final, cryptomus_data, paid_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: plan_features; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.plan_features (id, plan_id, model, "limit", created_at, updated_at, name) FROM stdin;
\.


--
-- Data for Name: plans; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.plans (id, slug, price, currency, "interval", trial_period_days, stripe_product_id, stripe_price_id, cryptomus_uuid, is_active, is_featured, created_at, updated_at, name, description) FROM stdin;
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.posts (id, title, slug, content, seo_title, seo_description, published_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: price_list_items; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.price_list_items (id, price_list_id, priceable_type, priceable_id, price, created_at, updated_at, currency_code) FROM stdin;
\.


--
-- Data for Name: price_lists; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.price_lists (id, team_id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: product_prices; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.product_prices (id, price_list_id, product_id, price, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.products (id, team_id, sku, name, price, cost, stock_current, stock_alert, created_at, updated_at, tax_id, unit, currency_code) FROM stdin;
\.


--
-- Data for Name: providers; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.providers (id, team_id, name, tax_id, bank_details, category, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: role_has_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.services (id, team_id, name, description, price, created_at, updated_at, tax_id, currency_code) FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
\.


--
-- Data for Name: subscription_items; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.subscription_items (id, subscription_id, stripe_id, stripe_product, stripe_price, quantity, created_at, updated_at, meter_id, meter_event_name) FROM stdin;
\.


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.subscriptions (id, user_id, type, stripe_id, stripe_status, stripe_price, quantity, trial_ends_at, ends_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: taxes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.taxes (id, team_id, name, rate, is_active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: team_invitations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.team_invitations (id, team_id, email, role, token, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: team_user; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.team_user (id, team_id, user_id, role, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.teams (id, user_id, name, personal_team, created_at, updated_at, currency_code, tax_id, address, phone, invoice_prefix, logo_path) FROM stdin;
\.


--
-- Data for Name: telescope_entries; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.telescope_entries (sequence, uuid, batch_id, family_hash, should_display_on_index, type, content, created_at) FROM stdin;
1	a0ce7827-d36a-499f-ad36-60cc4d40bd4a	a0ce7827-d455-4f23-a5d2-222854c97be1	\N	t	command	{"command":"about","exit_code":0,"arguments":{"command":"about"},"options":{"only":null,"json":true,"help":false,"silent":false,"quiet":false,"verbose":false,"version":false,"ansi":null,"no-interaction":false,"env":null},"hostname":"pop-os"}	2026-01-10 23:06:35
\.


--
-- Data for Name: telescope_entries_tags; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.telescope_entries_tags (entry_uuid, tag) FROM stdin;
\.


--
-- Data for Name: telescope_monitoring; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.telescope_monitoring (tag) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, google_id, github_id, apple_id, stripe_id, pm_type, pm_last_four, trial_ends_at, current_team_id, locale) FROM stdin;
\.


--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.accounts_id_seq', 1, false);


--
-- Name: activity_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.activity_log_id_seq', 1, false);


--
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.clients_id_seq', 1, false);


--
-- Name: crypto_subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.crypto_subscriptions_id_seq', 1, false);


--
-- Name: expenses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.expenses_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.feedback_id_seq', 1, false);


--
-- Name: incomes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.incomes_id_seq', 1, false);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.migrations_id_seq', 66, true);


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.order_items_id_seq', 1, false);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, false);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: plan_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.plan_features_id_seq', 1, false);


--
-- Name: plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.plans_id_seq', 1, false);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: price_list_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.price_list_items_id_seq', 1, false);


--
-- Name: price_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.price_lists_id_seq', 1, false);


--
-- Name: product_prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.product_prices_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: providers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.providers_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.services_id_seq', 1, false);


--
-- Name: subscription_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.subscription_items_id_seq', 1, false);


--
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.subscriptions_id_seq', 1, false);


--
-- Name: taxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.taxes_id_seq', 1, false);


--
-- Name: team_invitations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.team_invitations_id_seq', 1, false);


--
-- Name: team_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.team_user_id_seq', 1, false);


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.teams_id_seq', 1, false);


--
-- Name: telescope_entries_sequence_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.telescope_entries_sequence_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: activity_log activity_log_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.activity_log
    ADD CONSTRAINT activity_log_pkey PRIMARY KEY (id);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);


--
-- Name: crypto_subscriptions crypto_subscriptions_cryptomus_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.crypto_subscriptions
    ADD CONSTRAINT crypto_subscriptions_cryptomus_uuid_unique UNIQUE (cryptomus_uuid);


--
-- Name: crypto_subscriptions crypto_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.crypto_subscriptions
    ADD CONSTRAINT crypto_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: expenses expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: feedback feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (id);


--
-- Name: incomes incomes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.incomes
    ADD CONSTRAINT incomes_pkey PRIMARY KEY (id);


--
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: model_has_permissions model_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);


--
-- Name: model_has_roles model_has_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: payments payments_cryptomus_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_cryptomus_uuid_unique UNIQUE (cryptomus_uuid);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_name_guard_name_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_name_guard_name_unique UNIQUE (name, guard_name);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: plan_features plan_features_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.plan_features
    ADD CONSTRAINT plan_features_pkey PRIMARY KEY (id);


--
-- Name: plans plans_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_pkey PRIMARY KEY (id);


--
-- Name: plans plans_slug_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_slug_unique UNIQUE (slug);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: posts posts_slug_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_slug_unique UNIQUE (slug);


--
-- Name: price_list_items price_list_items_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.price_list_items
    ADD CONSTRAINT price_list_items_pkey PRIMARY KEY (id);


--
-- Name: price_lists price_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.price_lists
    ADD CONSTRAINT price_lists_pkey PRIMARY KEY (id);


--
-- Name: product_prices product_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_prices
    ADD CONSTRAINT product_prices_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: providers providers_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_pkey PRIMARY KEY (id);


--
-- Name: role_has_permissions role_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);


--
-- Name: roles roles_name_guard_name_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_guard_name_unique UNIQUE (name, guard_name);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: subscription_items subscription_items_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_items
    ADD CONSTRAINT subscription_items_pkey PRIMARY KEY (id);


--
-- Name: subscription_items subscription_items_stripe_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscription_items
    ADD CONSTRAINT subscription_items_stripe_id_unique UNIQUE (stripe_id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: subscriptions subscriptions_stripe_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_stripe_id_unique UNIQUE (stripe_id);


--
-- Name: taxes taxes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.taxes
    ADD CONSTRAINT taxes_pkey PRIMARY KEY (id);


--
-- Name: team_invitations team_invitations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_invitations
    ADD CONSTRAINT team_invitations_pkey PRIMARY KEY (id);


--
-- Name: team_invitations team_invitations_team_id_email_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_invitations
    ADD CONSTRAINT team_invitations_team_id_email_unique UNIQUE (team_id, email);


--
-- Name: team_invitations team_invitations_token_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_invitations
    ADD CONSTRAINT team_invitations_token_unique UNIQUE (token);


--
-- Name: team_user team_user_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_user
    ADD CONSTRAINT team_user_pkey PRIMARY KEY (id);


--
-- Name: team_user team_user_team_id_user_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_user
    ADD CONSTRAINT team_user_team_id_user_id_unique UNIQUE (team_id, user_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: telescope_entries telescope_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.telescope_entries
    ADD CONSTRAINT telescope_entries_pkey PRIMARY KEY (sequence);


--
-- Name: telescope_entries_tags telescope_entries_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.telescope_entries_tags
    ADD CONSTRAINT telescope_entries_tags_pkey PRIMARY KEY (entry_uuid, tag);


--
-- Name: telescope_entries telescope_entries_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.telescope_entries
    ADD CONSTRAINT telescope_entries_uuid_unique UNIQUE (uuid);


--
-- Name: telescope_monitoring telescope_monitoring_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.telescope_monitoring
    ADD CONSTRAINT telescope_monitoring_pkey PRIMARY KEY (tag);


--
-- Name: price_list_items unique_price_list_item; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.price_list_items
    ADD CONSTRAINT unique_price_list_item UNIQUE (price_list_id, priceable_type, priceable_id);


--
-- Name: users users_apple_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_apple_id_unique UNIQUE (apple_id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_github_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_github_id_unique UNIQUE (github_id);


--
-- Name: users users_google_id_unique; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_google_id_unique UNIQUE (google_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: activity_log_log_name_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX activity_log_log_name_index ON public.activity_log USING btree (log_name);


--
-- Name: causer; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX causer ON public.activity_log USING btree (causer_type, causer_id);


--
-- Name: crypto_subscriptions_cryptomus_uuid_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX crypto_subscriptions_cryptomus_uuid_index ON public.crypto_subscriptions USING btree (cryptomus_uuid);


--
-- Name: crypto_subscriptions_user_id_status_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX crypto_subscriptions_user_id_status_index ON public.crypto_subscriptions USING btree (user_id, status);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- Name: model_has_permissions_model_id_model_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);


--
-- Name: model_has_roles_model_id_model_type_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);


--
-- Name: notifications_notifiable_type_notifiable_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX notifications_notifiable_type_notifiable_id_index ON public.notifications USING btree (notifiable_type, notifiable_id);


--
-- Name: payments_cryptomus_uuid_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX payments_cryptomus_uuid_index ON public.payments USING btree (cryptomus_uuid);


--
-- Name: payments_subscription_id_status_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX payments_subscription_id_status_index ON public.payments USING btree (subscription_id, status);


--
-- Name: payments_user_id_status_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX payments_user_id_status_index ON public.payments USING btree (user_id, status);


--
-- Name: personal_access_tokens_expires_at_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX personal_access_tokens_expires_at_index ON public.personal_access_tokens USING btree (expires_at);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: price_list_items_priceable_type_priceable_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX price_list_items_priceable_type_priceable_id_index ON public.price_list_items USING btree (priceable_type, priceable_id);


--
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


--
-- Name: subject; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX subject ON public.activity_log USING btree (subject_type, subject_id);


--
-- Name: subscription_items_subscription_id_stripe_price_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX subscription_items_subscription_id_stripe_price_index ON public.subscription_items USING btree (subscription_id, stripe_price);


--
-- Name: subscriptions_user_id_stripe_status_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX subscriptions_user_id_stripe_status_index ON public.subscriptions USING btree (user_id, stripe_status);


--
-- Name: teams_user_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX teams_user_id_index ON public.teams USING btree (user_id);


--
-- Name: telescope_entries_batch_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX telescope_entries_batch_id_index ON public.telescope_entries USING btree (batch_id);


--
-- Name: telescope_entries_created_at_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX telescope_entries_created_at_index ON public.telescope_entries USING btree (created_at);


--
-- Name: telescope_entries_family_hash_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX telescope_entries_family_hash_index ON public.telescope_entries USING btree (family_hash);


--
-- Name: telescope_entries_tags_tag_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX telescope_entries_tags_tag_index ON public.telescope_entries_tags USING btree (tag);


--
-- Name: telescope_entries_type_should_display_on_index_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX telescope_entries_type_should_display_on_index_index ON public.telescope_entries USING btree (type, should_display_on_index);


--
-- Name: users_stripe_id_index; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX users_stripe_id_index ON public.users USING btree (stripe_id);


--
-- Name: accounts accounts_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: clients clients_price_list_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_price_list_id_foreign FOREIGN KEY (price_list_id) REFERENCES public.price_lists(id) ON DELETE SET NULL;


--
-- Name: clients clients_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: crypto_subscriptions crypto_subscriptions_plan_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.crypto_subscriptions
    ADD CONSTRAINT crypto_subscriptions_plan_id_foreign FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE SET NULL;


--
-- Name: crypto_subscriptions crypto_subscriptions_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.crypto_subscriptions
    ADD CONSTRAINT crypto_subscriptions_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: expenses expenses_account_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_account_id_foreign FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: expenses expenses_client_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_client_id_foreign FOREIGN KEY (client_id) REFERENCES public.clients(id) ON DELETE SET NULL;


--
-- Name: expenses expenses_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_order_id_foreign FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE SET NULL;


--
-- Name: expenses expenses_provider_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_provider_id_foreign FOREIGN KEY (provider_id) REFERENCES public.providers(id) ON DELETE SET NULL;


--
-- Name: expenses expenses_tax_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_tax_id_foreign FOREIGN KEY (tax_id) REFERENCES public.taxes(id) ON DELETE SET NULL;


--
-- Name: expenses expenses_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: feedback feedback_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: incomes incomes_account_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.incomes
    ADD CONSTRAINT incomes_account_id_foreign FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: incomes incomes_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.incomes
    ADD CONSTRAINT incomes_order_id_foreign FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE SET NULL;


--
-- Name: incomes incomes_provider_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.incomes
    ADD CONSTRAINT incomes_provider_id_foreign FOREIGN KEY (provider_id) REFERENCES public.providers(id) ON DELETE SET NULL;


--
-- Name: incomes incomes_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.incomes
    ADD CONSTRAINT incomes_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: model_has_permissions model_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- Name: model_has_roles model_has_roles_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: order_items order_items_order_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_foreign FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: order_items order_items_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE SET NULL;


--
-- Name: order_items order_items_service_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_service_id_foreign FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE SET NULL;


--
-- Name: orders orders_client_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_client_id_foreign FOREIGN KEY (client_id) REFERENCES public.clients(id) ON DELETE SET NULL;


--
-- Name: orders orders_provider_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_provider_id_foreign FOREIGN KEY (provider_id) REFERENCES public.providers(id) ON DELETE SET NULL;


--
-- Name: orders orders_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: payments payments_subscription_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_subscription_id_foreign FOREIGN KEY (subscription_id) REFERENCES public.crypto_subscriptions(id) ON DELETE CASCADE;


--
-- Name: payments payments_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: plan_features plan_features_plan_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.plan_features
    ADD CONSTRAINT plan_features_plan_id_foreign FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;


--
-- Name: price_list_items price_list_items_price_list_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.price_list_items
    ADD CONSTRAINT price_list_items_price_list_id_foreign FOREIGN KEY (price_list_id) REFERENCES public.price_lists(id) ON DELETE CASCADE;


--
-- Name: price_lists price_lists_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.price_lists
    ADD CONSTRAINT price_lists_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: product_prices product_prices_price_list_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_prices
    ADD CONSTRAINT product_prices_price_list_id_foreign FOREIGN KEY (price_list_id) REFERENCES public.price_lists(id) ON DELETE CASCADE;


--
-- Name: product_prices product_prices_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.product_prices
    ADD CONSTRAINT product_prices_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: products products_tax_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_tax_id_foreign FOREIGN KEY (tax_id) REFERENCES public.taxes(id) ON DELETE SET NULL;


--
-- Name: products products_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: providers providers_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: role_has_permissions role_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- Name: role_has_permissions role_has_permissions_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: services services_tax_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_tax_id_foreign FOREIGN KEY (tax_id) REFERENCES public.taxes(id) ON DELETE SET NULL;


--
-- Name: services services_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: taxes taxes_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.taxes
    ADD CONSTRAINT taxes_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: team_invitations team_invitations_team_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.team_invitations
    ADD CONSTRAINT team_invitations_team_id_foreign FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: telescope_entries_tags telescope_entries_tags_entry_uuid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.telescope_entries_tags
    ADD CONSTRAINT telescope_entries_tags_entry_uuid_foreign FOREIGN KEY (entry_uuid) REFERENCES public.telescope_entries(uuid) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict jubqsE2f4QF8t6coksnrq9mmSt8ThRebXiSgbTgw6XT6PszwBRx7fsw4xN770fR

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

\restrict evLLCc4kmWXgTAm5klgcx5jWDpaKhGrqlSl5UZAzKFqjtlYwOVp3rJAOphEUcZR

-- Dumped from database version 17.7 (Debian 17.7-3.pgdg13+1)
-- Dumped by pg_dump version 17.7 (Debian 17.7-3.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO root;

\unrestrict evLLCc4kmWXgTAm5klgcx5jWDpaKhGrqlSl5UZAzKFqjtlYwOVp3rJAOphEUcZR
\connect postgres
\restrict evLLCc4kmWXgTAm5klgcx5jWDpaKhGrqlSl5UZAzKFqjtlYwOVp3rJAOphEUcZR

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: root
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

\unrestrict evLLCc4kmWXgTAm5klgcx5jWDpaKhGrqlSl5UZAzKFqjtlYwOVp3rJAOphEUcZR

--
-- Database "root" dump
--

--
-- PostgreSQL database dump
--

\restrict 4lNzidONoIyQKFIqMbI9o8hcPLMCdZlCp0x9fZ5Gg9empT5SVWsWn1PFQcTQ0ox

-- Dumped from database version 17.7 (Debian 17.7-3.pgdg13+1)
-- Dumped by pg_dump version 17.7 (Debian 17.7-3.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: root; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE root WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE root OWNER TO root;

\unrestrict 4lNzidONoIyQKFIqMbI9o8hcPLMCdZlCp0x9fZ5Gg9empT5SVWsWn1PFQcTQ0ox
\connect root
\restrict 4lNzidONoIyQKFIqMbI9o8hcPLMCdZlCp0x9fZ5Gg9empT5SVWsWn1PFQcTQ0ox

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict 4lNzidONoIyQKFIqMbI9o8hcPLMCdZlCp0x9fZ5Gg9empT5SVWsWn1PFQcTQ0ox

--
-- PostgreSQL database cluster dump complete
--

