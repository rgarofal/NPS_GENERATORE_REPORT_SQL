#SANDSIV REPORT

CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.{TABELLA_PRINCIPALE} AS
    SELECT
        `survey_id` AS `survey_id`,
        `nps` AS `nps`,
        `language` AS `language`,
        `id_ticket_proc` AS `id_ticket_proc`,
        `account_no` AS `account_no`,
        `customer_class` AS `customer_class`,
        `nuovo_user` AS `nuovo_user`,
        `tipo_problema` AS `tipo_problema`,
        `categoria_problema` AS `categoria_problema`,
        `sottocategoria_problema` AS `sottocategoria_problema`,
        `nuovo_time` AS `nuovo_time`,
        `chiuso_time` AS `chiuso_time`,
        `chiuso_user` AS `chiuso_user`,
        `confermato_time` AS `confermato_time`,
        `confermato_user` AS `confermato_user`,
        `stato` AS `stato`,
        `codice_chiusura` AS `codice_chiusura`,
        `codice_conferma` AS `codice_conferma`,
        `sorgente` AS `sorgente`,
        `tech_descr` AS `tech_descr`,
        `partnership` AS `partnership`,
        `cust_service_desc` AS `cust_service_desc`,
        `email` AS `email`,
        `createddate` AS `createddate`,
        `closeddate` AS `closeddate`,
        `id` AS `id`,
        `type` AS `type`,
        `reasonofcontact` AS `reasonofcontact`,
        `techresolution` AS `techresolution`,
        `origin` AS `origin`,
        `status` AS `status`,
        `closurereason` AS `closurereason`,
        `customer_activation_date` AS `customer_activation_date`,
        `mcb_macrostatus` AS `mcb_macrostatus`,
        `mcb_microstatus` AS `mcb_microstatus`,
        `retention_status_desc` AS `retention_status_desc`,
        `createdbyid` AS `login_apertura`,
        `login` AS `login`,
        `ambito` AS `ambito`,
        `sito` AS `sito`,
        `esito_rco` AS `esito_rco`,
        `data_insert_rco` AS `data_insert_rco`,
        `lastmodifiedbyid` AS `lastmodifiedbyid`,
        `ownerid` AS `ownerid`,
        `lastmodifiedbyid_cnn` AS `lastmodifiedbyid_cnn`,
        `ownerid_cnn` AS `ownerid_cnn`,
        `techissue` AS `techissue`,
        `stato_account` AS `stato_account`,
        `tipo_utente_apertura_roc` AS `tipo_utente_apertura`,
        `tipo_utente_gestione_roc` AS `tipo_utente_chiusura`,
        `tipo_utente_modifica_roc` AS `tipo_utente_modifica`,
        `email_creazione` AS `email_creazione`,
        `team` AS `team_apertura`,
        `fornitore` AS `fornitore_apertura`,
        `activity` AS `activity_apertura`,
        `email_gestione` AS `email_gestione`,
        `login_gestione` AS `login_gestione`,
        `team_gestione` AS `team_gestione`,
        `fornitore_gestione` AS `fornitore_gestione`,
        `activity_gestione` AS `activity_gestione`,
        `email_modifica` AS `email_chiusura`,
        `login_modifica` AS `login_chiusura`,
        `team_modifica` AS `team_chiusura`,
        `fornitore_modifica` AS `fornitore_chiusura`,
        `activity_modifica` AS `activity_chiusura`,
        `tipo_utente_apertura_tts` AS `tipo_utente_apertura_tts`,
        `tipo_utente_gestione_tts` AS `tipo_utente_chiusura_tts`,
        `tipo_utente_modifica_tts` AS `tipo_utente_modifica_tts`,
        `email_creazione_tts` AS `email_creazione_tts`,
        `team_tts` AS `team_apertura_tts`,
        `fornitore_tts` AS `fornitore_apertura_tts`,
        `activity_tts` AS `activity_apertura_tts`,
        `email_gestione_tts` AS `email_gestione_tts`,
        `login_gestione_tts` AS `login_gestione_tts`,
        `team_gestione_tts` AS `team_gestione_tts`,
        `fornitore_gestione_tts` AS `fornitore_gestione_tts`,
        `activity_gestione_tts` AS `activity_gestione_tts`,
        `email_modifica_tts` AS `email_chiusura_tts`,
        `login_modifica_tts` AS `login_chiusura_tts`,
        `team_modifica_tts` AS `team_chiusura_tts`,
        `fornitore_modifica_tts` AS `fornitore_chiusura_tts`,
        `activity_modifica_tts` AS `activity_chiusura_tts`,
        `Sottomesso_da` AS `Sottomesso_da`,
        `case_id` AS `case_id`,
        `TECHINTERNALCOMMENT` AS `TECHINTERNALCOMMENT`,
        `tipologia_inclusione_migrazione` AS `tipologia_inclusione_migrazione`,
        `tipologia_inclusione_social` AS `tipologia_inclusione_social`,
        `FORNITORE_OS` AS `FORNITORE_OS`,
        `TEAM_OS` AS `TEAM_OS`,
        `SOCIALSOURCECASE` AS `SOCIALSOURCECASE`,
        `tipo_cliente` AS `tipo_cliente`,
        `Codice_Chiusura_Intervento` AS `Codice_Chiusura_Intervento`
    FROM
        `nps`.{TABELLA_PRINCIPALE_MIN}



CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`REPORT_SANDSIV_{FLUSSO}` AS
    SELECT
        {TABELLA_PRINCIPALE}.`account_no` AS `CUSTOMER_ID`,
        {TABELLA_PRINCIPALE}.`email` AS `ADDRESS`,
        {TABELLA_PRINCIPALE}.`language` AS `LANGUAGE`,
        {TABELLA_PRINCIPALE}.`survey_id` AS `JOB_ID`,
        {TABELLA_PRINCIPALE}.`nps` AS `nps`,
        {TABELLA_PRINCIPALE}.`id_ticket_proc` AS `CODICE_TICKET_PROC`,
        {TABELLA_PRINCIPALE}.`id` AS `id`,
        {TABELLA_PRINCIPALE}.`customer_activation_date` AS `customer_activation_date`,
        {TABELLA_PRINCIPALE}.`tech_descr` AS `Customer_Technology`,
        {TABELLA_PRINCIPALE}.`customer_class` AS `CLASSE`,
        {TABELLA_PRINCIPALE}.`partnership` AS `partnership`,
        {TABELLA_PRINCIPALE}.`cust_service_desc` AS `Customer_Service`,
        {TABELLA_PRINCIPALE}.`tipo_problema` AS `TIPO`,
        {TABELLA_PRINCIPALE}.`categoria_problema` AS `CATEGORIA`,
        {TABELLA_PRINCIPALE}.`sottocategoria_problema` AS `SOTTOCATEGORIA`,
        {TABELLA_PRINCIPALE}.`codice_chiusura` AS `CODICE_CHIUSURA`,
        {TABELLA_PRINCIPALE}.`codice_conferma` AS `codice_conferma`,
        {TABELLA_PRINCIPALE}.`Sottomesso_da` AS `Sottomesso_da`,
        {TABELLA_PRINCIPALE}.`nuovo_user` AS `Ticket_User_New`,
        {TABELLA_PRINCIPALE}.`chiuso_user` AS `chiuso_user`,
        {TABELLA_PRINCIPALE}.`confermato_user` AS `Ticket_user_confirm`,
        {TABELLA_PRINCIPALE}.`nuovo_time` AS `Ticket_Open_Date`,
        {TABELLA_PRINCIPALE}.`chiuso_time` AS `TicketClosedDate`,
        {TABELLA_PRINCIPALE}.`confermato_time` AS `Ticket_Confirm_Date`,
        {TABELLA_PRINCIPALE}.`origin` AS `origin`,
        {TABELLA_PRINCIPALE}.`type` AS `type`,
        {TABELLA_PRINCIPALE}.`reasonofcontact` AS `reasonofcontact`,
        {TABELLA_PRINCIPALE}.`techissue` AS `techissue`,
        {TABELLA_PRINCIPALE}.`techresolution` AS `techresolution`,
        {TABELLA_PRINCIPALE}.`closurereason` AS `closurereason`,
        {TABELLA_PRINCIPALE}.`createddate` AS `createddate`,
        {TABELLA_PRINCIPALE}.`closeddate` AS `closeddate`,
        {TABELLA_PRINCIPALE}.`login_apertura` AS `login_apertura`,
        {TABELLA_PRINCIPALE}.`login` AS `login`,
        {TABELLA_PRINCIPALE}.`email_creazione` AS `email_creazione`,
        {TABELLA_PRINCIPALE}.`team_apertura` AS `team_apertura`,
        {TABELLA_PRINCIPALE}.`fornitore_apertura` AS `fornitore_apertura`,
        {TABELLA_PRINCIPALE}.`activity_apertura` AS `activity_apertura`,
        {TABELLA_PRINCIPALE}.`tipo_utente_apertura` AS `tipo_utente_apertura`,
        {TABELLA_PRINCIPALE}.`ownerid` AS `ownerid_nocnn`,
        {TABELLA_PRINCIPALE}.`login_chiusura` AS `login_chiusura`,
        {TABELLA_PRINCIPALE}.`email_chiusura` AS `email_chiusura`,
        {TABELLA_PRINCIPALE}.`team_chiusura` AS `team_chiusura`,
        {TABELLA_PRINCIPALE}.`fornitore_chiusura` AS `fornitore_chiusura`,
        {TABELLA_PRINCIPALE}.`activity_chiusura` AS `activity_chiusura`,
        {TABELLA_PRINCIPALE}.`tipo_utente_chiusura` AS `tipo_utente_chiusura`,
        {TABELLA_PRINCIPALE}.`lastmodifiedbyid` AS `lastmodifiedbyid_nocnn`,
        {TABELLA_PRINCIPALE}.`login_gestione` AS `login_gestione`,
        {TABELLA_PRINCIPALE}.`email_gestione` AS `email_gestione`,
        {TABELLA_PRINCIPALE}.`team_gestione` AS `team_gestione`,
        {TABELLA_PRINCIPALE}.`fornitore_gestione` AS `fornitore_gestione`,
        {TABELLA_PRINCIPALE}.`activity_gestione` AS `activity_gestione`,
        {TABELLA_PRINCIPALE}.`tipo_utente_modifica` AS `tipo_utente_modifica`,
        {TABELLA_PRINCIPALE}.`data_insert_rco` AS `data_insert_rco`,
        {TABELLA_PRINCIPALE}.`tipo_utente_apertura_tts` AS `tipo_utente_apertura_tts`,
        {TABELLA_PRINCIPALE}.`tipo_utente_chiusura_tts` AS `tipo_utente_chiusura_tts`,
        {TABELLA_PRINCIPALE}.`tipo_utente_modifica_tts` AS `tipo_utente_modifica_tts`,
        {TABELLA_PRINCIPALE}.`email_creazione_tts` AS `email_creazione_tts`,
        {TABELLA_PRINCIPALE}.`team_apertura_tts` AS `team_apertura_tts`,
        {TABELLA_PRINCIPALE}.`fornitore_apertura_tts` AS `fornitore_apertura_tts`,
        {TABELLA_PRINCIPALE}.`activity_apertura_tts` AS `activity_apertura_tts`,
        {TABELLA_PRINCIPALE}.`email_gestione_tts` AS `email_gestione_tts`,
        {TABELLA_PRINCIPALE}.`login_gestione_tts` AS `login_gestione_tts`,
        {TABELLA_PRINCIPALE}.`team_gestione_tts` AS `team_gestione_tts`,
        {TABELLA_PRINCIPALE}.`fornitore_gestione_tts` AS `fornitore_gestione_tts`,
        {TABELLA_PRINCIPALE}.`activity_gestione_tts` AS `activity_gestione_tts`,
        {TABELLA_PRINCIPALE}.`email_chiusura_tts` AS `email_chiusura_tts`,
        {TABELLA_PRINCIPALE}.`login_chiusura_tts` AS `login_chiusura_tts`,
        {TABELLA_PRINCIPALE}.`team_chiusura_tts` AS `team_chiusura_tts`,
        {TABELLA_PRINCIPALE}.`fornitore_chiusura_tts` AS `fornitore_chiusura_tts`,
        {TABELLA_PRINCIPALE}.`activity_chiusura_tts` AS `activity_chiusura_tts`,
        {TABELLA_PRINCIPALE}.`TECHINTERNALCOMMENT` AS `TECHINTERNALCOMMENT`,
        {TABELLA_PRINCIPALE}.`lastmodifiedbyid_cnn` AS `LASTMODIFIEDBYID`,
        {TABELLA_PRINCIPALE}.`ownerid_cnn` AS `OWNERID`,
        {TABELLA_PRINCIPALE}.`tipologia_inclusione_migrazione` AS `tipologia_inclusione_migrazione`,
        {TABELLA_PRINCIPALE}.`tipologia_inclusione_social` AS `tipologia_inclusione_social`,
        {TABELLA_PRINCIPALE}.`FORNITORE_OS` AS `FORNITORE_OS`,
        {TABELLA_PRINCIPALE}.`TEAM_OS` AS `TEAM_OS`,
        {TABELLA_PRINCIPALE}.`SOCIALSOURCECASE` AS `SOCIALSOURCECASE`,
        {TABELLA_PRINCIPALE}.`tipo_cliente` AS `tipo_cliente`,
        {TABELLA_PRINCIPALE}.`Codice_Chiusura_Intervento` AS `Codice_Chiusura_Intervento`
    FROM
        `nps`.{TABELLA_PRINCIPALE}
    WHERE
        ({TABELLA_PRINCIPALE}.`esito_rco` = 'valido');


# REPORT MESSAGISTICA E STATISTICHE




CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`REPORT_{FLUSSO}_CUMULATIVO` AS
    SELECT
        `rep`.`account_no` AS `ACCOUNT`,
        `rep_2`.`etichetta_out_regola` AS `CATEGORIA`
    FROM
        (`nps`.`output_regole_esclusioni` `rep_2`
        JOIN (`nps`.{TABELLA_REPORT_MIN} `rep`
        LEFT JOIN `nps`.{TABELLA_REPORT_MIN} `rep_1` ON ((`rep_1`.`account_no` = `rep`.`account_no`))))
    WHERE
        ((`rep_1`.`categoria_filtro` = `rep`.`categoria_filtro`)
            AND (`rep_2`.`categoria_filtro` = `rep`.`categoria_filtro`)
            AND (CAST(`rep`.`data_insert_rco` AS DATE) = CURDATE())
            AND (`rep_2`.`flusso` = '{FLUSSO}'));

CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`REPORT_{FLUSSO}_CAMPIONE_FINALE_GIORN_DIST` AS
    SELECT DISTINCT
        `account_no` AS `ACCOUNT`,
        CAST(`data_insert_rco`
            AS DATE) AS `DATA_INSERIMENTO`
    FROM
        `nps`.{TABELLA_PRINCIPALE_MIN}
    WHERE
        (CAST(`data_insert_rco`
            AS DATE) = CURDATE());

CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`REPORT__CAMPIONE_GIORN_DIST` AS
    SELECT DISTINCT
        `nps`.{TABELLA_STAGE_MIN}.`account_no` AS `ACCOUNT`,
        CAST(`nps`.{TABELLA_STAGE_MIN}.`data_insert_rco`
            AS DATE) AS `DATA_INSERIMENTO`
    FROM
        `nps`.{TABELLA_STAGE_MIN}
    WHERE
        (CAST(`nps`.{TABELLA_STAGE_MIN}.`data_insert_rco`
            AS DATE) = CURDATE());
CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`REPORT_{FLUSSO}_SCARTI` AS
    SELECT
        COUNT(0) AS `numerosita`,
        `rep_2`.`etichetta_out_regola` AS `categoria_filtro`,
        CAST(`rep_1`.`data_insert_rco` AS DATE) AS `data`
    FROM
        (`nps`.{TABELLA_REPORT_MIN} `rep_1`
        JOIN `nps`.`output_regole_esclusioni` `rep_2` ON ((`rep_1`.`categoria_filtro` = `rep_2`.`categoria_filtro`)))
    WHERE
        (`rep_2`.`flusso` = '{FLUSSO}')
    GROUP BY `rep_2`.`etichetta_out_regola` , CAST(`rep_1`.`data_insert_rco` AS DATE)
    ORDER BY CAST(`rep_1`.`data_insert_rco` AS DATE);

CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`REPORT_{FLUSSO}_MESSAGGIO` AS
    SELECT
        `rep_3`.`codice_esclusione` AS `CATEGORIA`,
        `rep_3`.`Automatica_numrighe_tab_temp` AS `CAMPIONE_TOTALE`,
        IFNULL((SELECT
                        IFNULL(`rep_1`.`numerosita`, 'NA')
                    FROM
                        `nps`.`REPORT_{FLUSSO}_SCARTI` `rep_1`
                    WHERE
                        ((`rep_1`.`categoria_filtro` = `rep_3`.`codice_esclusione`)
                            AND (CAST(`rep_1`.`data` AS DATE) = CURDATE()))),
                'NA') AS `NUMERO_ESCLUSIONI`,
        `rep_3`.`descrizione` AS `DESCRIZIONE`
    FROM
        `nps`.`tab_descrizione_nps_regole_esclusioni` `rep_3`
    WHERE
        ((`rep_3`.`tabella_temp` = 'S')
            AND (`rep_3`.`stato` = 'Abilitato')
            AND (`rep_3`.`flusso` = '{FLUSSO}'));

CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`REPORT_{FLUSSO}_MESSAGGIO_ESCLUSIONI` AS
    SELECT
        `rep_3`.`codice_esclusione` AS `CATEGORIA`,
        IFNULL((SELECT
                        IFNULL(`rep_1`.`numerosita`, 'NA')
                    FROM
                        `nps`.`REPORT_{FLUSSO}_SCARTI` `rep_1`
                    WHERE
                        ((`rep_1`.`categoria_filtro` = `rep_3`.`codice_esclusione`)
                            AND (CAST(`rep_1`.`data` AS DATE) = CURDATE()))),
                'NA') AS `NUMERO_ESCLUSIONI`,
        `rep_3`.`descrizione` AS `DESCRIZIONE`
    FROM
        `nps`.`tab_descrizione_nps_regole_esclusioni` `rep_3`
    WHERE
        ((`rep_3`.`tabella_temp` = 'N')
            AND (`rep_3`.`stato` = 'Abilitato')
            AND (`rep_3`.`flusso` = '{FLUSSO}'));



CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`REPORT_{FLUSSO}_SCARTI_CUMULATIVO` AS
    SELECT
        `rep`.`account_no` AS `ACCOUNT`,
        `rep_2`.`etichetta_out_regola` AS `CATEGORIA`
    FROM
        (`nps`.`output_regole_esclusioni` `rep_2`
        JOIN (`nps`.`assistenza_tecnica_mobile_report` `rep`
        LEFT JOIN `nps`.`assistenza_tecnica_mobile_report` `rep_1` ON ((`rep_1`.`account_no` = `rep`.`account_no`))))
    WHERE
        ((`rep_1`.`categoria_filtro` = `rep`.`categoria_filtro`)
            AND (`rep_2`.`categoria_filtro` = `rep`.`categoria_filtro`)
            AND (CAST(`rep`.`data_insert_rco` AS DATE) = CURDATE())
            AND (`rep_2`.`flusso` = '{FLUSSO}'));

CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`REPORT_{FLUSSO}_SCARTI_GIORN_DIST` AS
    SELECT DISTINCT
        `nps`.{TABELLA_REPORT_MIN}.`account_no` AS `ACCOUNT`,
        CAST(`nps`.{TABELLA_REPORT_MIN}.`data_insert_rco`
            AS DATE) AS `DATA_INSERIMENTO`
    FROM
        `nps`.{TABELLA_REPORT_MIN}
    WHERE
        (CAST(`nps`.{TABELLA_REPORT_MIN}.`data_insert_rco`
            AS DATE) = CURDATE());

CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`REPORT_{FLUSSO}_MOB_SCARTI_GIORNALIERA` AS
    SELECT
        COUNT(0) AS `NUM`,
        `rep_2`.`etichetta_out_regola` AS `CATEGORIA`
    FROM
        (`nps`.{TABELLA_REPORT_MIN} `rep_1`
        JOIN `nps`.`output_regole_esclusioni` `rep_2` ON ((`rep_1`.`categoria_filtro` = `rep_2`.`categoria_filtro`)))
    WHERE
        ((CAST(`rep_1`.`data_insert_rco` AS DATE) = CURDATE())
            AND (`rep_2`.`flusso` = '{FLUSSO}'))
    GROUP BY `rep_2`.`categoria_filtro`;


CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`_temp_all_account_{FLUSSO_MIN}` AS
    SELECT
        `REPORT_{FLUSSO}_SCARTI_CUMULATIVO`.`ACCOUNT` AS `ACCOUNT`
    FROM
        `nps`.`REPORT_{FLUSSO}_SCARTI_CUMULATIVO`
    ORDER BY `REPORT_{FLUSSO}_SCARTI_CUMULATIVO`.`ACCOUNT`;

CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`_temp_all_account_{FLUSSO_MIN}_more_rules` AS
    SELECT
        COUNT(0) AS `NUM`, `g`.`ACCOUNT` AS `ACCOUNT`
    FROM
        `nps`.`_temp_all_account_{FLUSSO_MIN}` `g`
    GROUP BY `g`.`ACCOUNT`;



CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `rogarofalo`@`%`
    SQL SECURITY DEFINER
VIEW `nps`.`REPORT_{FLUSSO}_SCARTI_MULTIPLE_REGOLE` AS
    SELECT
        `cc`.`ACCOUNT` AS `ACCOUNT`, `cc`.`CATEGORIA` AS `CATEGORIA`
    FROM
        `nps`.`REPORT_{FLUSSO}_SCARTI_CUMULATIVO` `cc`
    WHERE
        `cc`.`ACCOUNT` IN (SELECT
                `r`.`ACCOUNT`
            FROM
                `nps`.`_temp_all_account_{FLUSSO_MIN}_more_rules` `r`
            WHERE
                (`r`.`NUM` > 1));
