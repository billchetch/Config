<?php
use chetch\Config as Config;
use chetch\api\APIHandleRequest as APIHandleRequest;

Config::initialise();

Config::set('ERROR_REPORTING', E_ALL);
Config::set('DBHOST', 'mysql:host=127.0.0.1');
Config::set('DBNAME', 'surf_forecast');
Config::set('DBUSERNAME', 'rogon');
Config::set('DBPASSWORD', 'frank1yn');

$dbtblpfx = ''; //table prefix for database
Config::set('SYS_DIGESTS_TABLE', $dbtblpfx.'sf_digests');
Config::set('FEED_RUNS_TABLE', $dbtblpfx.'sf_feed_runs');
Config::set('FEEDS_TABLE', $dbtblpfx.'sf_feeds');
Config::set('FEED_RESULTS_TABLE', $dbtblpfx.'sf_feed_results');
Config::set('SOURCES_TABLE', $dbtblpfx.'sf_sources');
Config::set('LOCATIONS_TABLE', $dbtblpfx.'sf_locations');
Config::set('FORECASTS_TABLE', $dbtblpfx.'sf_forecasts');
Config::set('FORECAST_HOURS_TABLE', $dbtblpfx.'sf_forecast_hours');
Config::set('FORECAST_DAYS_TABLE', $dbtblpfx.'sf_forecast_days');
Config::set('LOCATIONS_TABLE', $dbtblpfx.'sf_locations');

Config::set('FORECAST_MAX_DAYS', 14);
Config::set('FORECAST_MAX_SECONDS', Config::get('FORECAST_MAX_DAYS')*24*3600);
Config::set('FEED_CACHE_IN_SECS', 0); //60*60);
Config::set('CURLOPT_CONNECTTIMEOUT', 3*60);
Config::set('CURLOPT_TIMEOUT', 2*Config::get('CURLOPT_CONNECTTIMEOUT'));
Config::set('MAX_ALLOWED_PACKET', 33554432);
Config::set('MEMORY_LIMIT', '2048M');
Config::set('FEED_RUNS_MAX_DOWNLOAD_ATTEMPTS', 10);
Config::set('FEED_RUNS_MAX_PARSE_ATTEMPTS', 10);

Config::set('BMKG_DATETIME', BMKGParser2::getDateTime());
//Config::set('BMKG_DATETIME', '2020-07-31T00:00:00Z');
Config::set('BMKG_MODEL', BMKGParser2::DEFAULT_MODEL);
//Config::set('BMKG_MODEL', 'w3e_reg');
//Config::set('BMKG_MODEL', 'w3g_res');
Config::set('BMKG_MODEL_VARS', BMKGParser2::DEFAULT_MODEL_VARS);

//Config::set('API_REMOTE_URL', 'http://dev4.bulan-baru.com/forecast/api');
//Config::set('API_REMOTE_URL', 'http://dev4.bulan-baru.com:8001/api');
Config::set('GPS_API_LOCAL_URL', 'http://localhost:8003/api');
Config::set('API_REMOTE_URL', 'http://sf.bulan-baru.com:8002/api');
//Config::set('API_SOURCE', APIHandleRequest::SOURCE_DATABASE);
Config::set('API_SOURCE', APIHandleRequest::SOURCE_CACHE);
Config::set('FORECAST_WEIGHTING', array(5=>3));
//Config::set('FORECAST_WEIGHTING', null);
Config::set('EMAIL_EXCEPTIONS_TO', 'bill@bulan-baru.com');
/*Config::set('PHP_MAILER', _SITESROOT_.'services/lib/php/phpmailer/class.phpmailer.php');
Config::set('SMTP_HOST', _SMTP_HOST_);
Config::set('SMTP_SECURE', _SMTP_SECURE_);
Config::set('SMTP_USERNAME', _SMTP_USERNAME_);
Config::set('SMTP_PASSWORD', _SMTP_PASSWORD_);
Config::set('SMTP_PORT', _SMTP_PORT_);*/

/*
Config::set('INTERNET_ROUTER_IP', '192.168.0.1');
Config::set('INTERNET_ROUTER_CLASS', 'DLinkDWR932CRouter');
Config::set('INTERNET_ROUTER_PASSWORD', '93874b88363075405526c35f5d3baef3');
Config::set('INTERNET_ROUTER_USERNAME', 'admin');*/

/*Config::set('INTERNET_ROUTER_CLASS', 'HuaweiE5673Router');
Config::set('INTERNET_ROUTER_PASSWORD', '');
Config::set('INTERNET_ROUTER_USERNAME', 'admin');*/

Config::set('PING_REMOTE_HOST', 'www.google.com');

Config::set('UPDATE_FROM_NETWORK_TIME', 60*60*4); //in secs the min time between updates retreived from internet (to avoid too many updates)
Config::set('DIGEST_FROM_NETWORK_TIME', 60*60*4); //in secs the min time between saving digests (to avoid too many digests)
?>