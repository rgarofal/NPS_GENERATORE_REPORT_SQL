import mysql.connector
import logging
import psycopg2
import pymysql
import argparse
# from nps_zip_module import zip_dir
from datetime import datetime, timedelta


def help_msg():
    """ help to describe the script"""
    help_str = """
               """
    return help_str



def log_tables_on_working(lg, dict_tables_column ):
    num_tbl_da_lavorare=0
    num_tbl_escluse = 0
    for tab in dict_tables_column:
       columns_list_tbl = dict_tables_column[tab]
       if len(columns_list_tbl) != 0:
           lg.info(f'Tabella da processare = {tab}')
           num_tbl_da_lavorare = num_tbl_da_lavorare + 1
       else:
           lg.info(f'Tabella ESCLUSA = {tab}')
           num_tbl_escluse = num_tbl_escluse + 1
    report = f'Num Tabelle Processate = {num_tbl_da_lavorare} - Num Tabelle Escluse = {num_tbl_escluse} '
    return report

if __name__ == '__main__':


    parser = argparse.ArgumentParser(description=help_msg())
    parser.add_argument('-d', '--directory_report',
                        default='C:\\Users\\roberto.garofalo\\Documents\\WorkingEnv\\NPS_TEMPLATE',
                        help='Directory dove risiedono gli script sql ', required=False)
    parser.add_argument('-f', '--flusso',
                        default='',
                        help='identificativo flusso', required=True)
    parser.add_argument('-p', '--prefisso_tabella',
                        default='',
                        help='prefisso della tabella da configurare', required=True)
    parser.add_argument('-t', '--template',
                        default='C:\\Users\\roberto.garofalo\\Documents\\WorkingEnv\\NPS_TEMPLATE\\SCHEMA_REPORT_SANDSIV_STATS_TEMPLATE.sql',
                        help='file con il template delle viste da creare', required=False)
    parser.add_argument('-r', '--db_repository',
                        default='false',
                        help='database storico', required=False)
    args = parser.parse_args()

    directory = args.directory_report
    db_storico = args.db_repository


    days_to_subtract = 0
    now = datetime.today() - timedelta(days=days_to_subtract)
    time_label = now.strftime("%d-%m-%Y")

    #logging setting
    log_file = '{}\{}_{!s}.{}'.format(directory, 'nps_report_template_app', time_label, 'log')
    lg = logging
    lg.basicConfig(filename=log_file, filemode='w', format='%(asctime)s - %(levelname)s - %(message)s', level=logging.INFO)
    lg.info("START - ")
    lg.debug(f'Directory script = {directory}')
    schema_name = 'nps'
    schema_name_dest = 'nps'

    flusso = args.flusso
    flusso_m = flusso.lower()
    tabella_base = args.prefisso_tabella
    file_template = args.template
    file_name = 'script_sql_'
    tabella_principale_u = tabella_base.upper()
    tabella_stage = tabella_base + '_stage'
    tabella_report = tabella_base + '_report'
    search_pattern = {'{TABELLA_PRINCIPALE}': tabella_principale_u,
    '{TABELLA_PRINCIPALE_MIN}': tabella_base,
    '{FLUSSO}': flusso,
    '{FLUSSO_MIN}': flusso_m,
    '{TABELLA_STAGE_MIN}': tabella_stage,
    '{TABELLA_REPORT_MIN}': tabella_report}

    search_string = list(search_pattern.keys())
    replace_string = list(search_pattern.values())
    lg.info("SCRITTURA SUL FILE SCRIPT SQL")

    report_file = '{}\{}_{}_{!s}.{}'.format(directory, file_name, flusso, time_label, 'sql')

    output = open(report_file, 'w+')
    input = open(file_template, 'r')

    output.write(input.read().replace(search_string[0],replace_string[0]).replace(search_string[1],replace_string[1]).replace(search_string[2],replace_string[2]).replace(search_string[3],replace_string[3]).replace(search_string[4],replace_string[4]).replace(search_string[5],replace_string[5]))
    input.close()
    output.close()
    lg.info("FINE SCRITTURA SCRIPT SQL")