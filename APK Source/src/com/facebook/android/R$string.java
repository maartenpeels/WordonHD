// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.android;


// Referenced classes of package com.facebook.android:
//            R

public final class 
{

    public static final int IDA_APP_DEBUGGER_TIMEOUT_INFO = 0x7f08005a;
    public static final int IDA_APP_UNABLE_LISTEN_ERROR = 0x7f080058;
    public static final int IDA_APP_WAITING_DEBUGGER_TITLE = 0x7f080057;
    public static final int IDA_APP_WAITING_DEBUGGER_WARNING = 0x7f080059;
    public static final int IDA_CERTIFICATE_DETAILS = 0x7f080056;
    public static final int IDA_CURL_INTERFACE_ALLSESS = 0x7f080050;
    public static final int IDA_CURL_INTERFACE_CERTIFICATE_DETAILS_TITLE = 0x7f080055;
    public static final int IDA_CURL_INTERFACE_CNAME_MSG = 0x7f080053;
    public static final int IDA_CURL_INTERFACE_NOSESS = 0x7f08004d;
    public static final int IDA_CURL_INTERFACE_OK = 0x7f08004e;
    public static final int IDA_CURL_INTERFACE_SERVER = 0x7f080051;
    public static final int IDA_CURL_INTERFACE_THISSESS = 0x7f08004c;
    public static final int IDA_CURL_INTERFACE_TRUSTSER = 0x7f080052;
    public static final int IDA_CURL_INTERFACE_UNVERSER_2 = 0x7f08004f;
    public static final int IDA_CURL_INTERFACE_VIEW_CERT = 0x7f080054;
    public static final int IDA_CURL_SSL_SECURITY_WARNING = 0x7f08004b;
    public static final int app_name = 0x7f08004a;
    public static final int app_version = 0x7f08005b;
    public static final int audio_files = 0x7f08003e;
    public static final int auth_client_needs_enabling_title = 0x7f08001e;
    public static final int auth_client_needs_installation_title = 0x7f08001f;
    public static final int auth_client_needs_update_title = 0x7f080020;
    public static final int auth_client_play_services_err_notification_msg = 0x7f080021;
    public static final int auth_client_requested_by_msg = 0x7f080022;
    public static final int auth_client_using_bad_version_title = 0x7f08001d;
    public static final int button_cancel = 0x7f080043;
    public static final int button_continue = 0x7f080044;
    public static final int button_exit = 0x7f08005d;
    public static final int button_install = 0x7f08005c;
    public static final int button_install_air_from_playstore = 0x7f080067;
    public static final int button_no = 0x7f080049;
    public static final int button_ok = 0x7f080042;
    public static final int button_yes = 0x7f080048;
    public static final int com_facebook_choose_friends = 0x7f080011;
    public static final int com_facebook_dialogloginactivity_ok_button = 0x7f080000;
    public static final int com_facebook_image_download_unknown_error = 0x7f08001c;
    public static final int com_facebook_internet_permission_error_message = 0x7f080015;
    public static final int com_facebook_internet_permission_error_title = 0x7f080014;
    public static final int com_facebook_like_button_liked = 0x7f080002;
    public static final int com_facebook_like_button_not_liked = 0x7f080001;
    public static final int com_facebook_loading = 0x7f080013;
    public static final int com_facebook_loginview_cancel_action = 0x7f080008;
    public static final int com_facebook_loginview_log_in_button = 0x7f080004;
    public static final int com_facebook_loginview_log_out_action = 0x7f080007;
    public static final int com_facebook_loginview_log_out_button = 0x7f080003;
    public static final int com_facebook_loginview_logged_in_as = 0x7f080005;
    public static final int com_facebook_loginview_logged_in_using_facebook = 0x7f080006;
    public static final int com_facebook_logo_content_description = 0x7f080009;
    public static final int com_facebook_nearby = 0x7f080012;
    public static final int com_facebook_picker_done_button_text = 0x7f080010;
    public static final int com_facebook_placepicker_subtitle_catetory_only_format = 0x7f08000e;
    public static final int com_facebook_placepicker_subtitle_format = 0x7f08000d;
    public static final int com_facebook_placepicker_subtitle_were_here_only_format = 0x7f08000f;
    public static final int com_facebook_requesterror_password_changed = 0x7f080018;
    public static final int com_facebook_requesterror_permissions = 0x7f08001a;
    public static final int com_facebook_requesterror_reconnect = 0x7f080019;
    public static final int com_facebook_requesterror_relogin = 0x7f080017;
    public static final int com_facebook_requesterror_web_login = 0x7f080016;
    public static final int com_facebook_tooltip_default = 0x7f08001b;
    public static final int com_facebook_usersettingsfragment_log_in_button = 0x7f08000a;
    public static final int com_facebook_usersettingsfragment_logged_in = 0x7f08000b;
    public static final int com_facebook_usersettingsfragment_not_logged_in = 0x7f08000c;
    public static final int common_google_play_services_enable_button = 0x7f08002e;
    public static final int common_google_play_services_enable_text = 0x7f08002d;
    public static final int common_google_play_services_enable_title = 0x7f08002c;
    public static final int common_google_play_services_error_notification_requested_by_msg = 0x7f080027;
    public static final int common_google_play_services_install_button = 0x7f08002b;
    public static final int common_google_play_services_install_text_phone = 0x7f080029;
    public static final int common_google_play_services_install_text_tablet = 0x7f08002a;
    public static final int common_google_play_services_install_title = 0x7f080028;
    public static final int common_google_play_services_invalid_account_text = 0x7f080034;
    public static final int common_google_play_services_invalid_account_title = 0x7f080033;
    public static final int common_google_play_services_needs_enabling_title = 0x7f080026;
    public static final int common_google_play_services_network_error_text = 0x7f080032;
    public static final int common_google_play_services_network_error_title = 0x7f080031;
    public static final int common_google_play_services_notification_needs_installation_title = 0x7f080024;
    public static final int common_google_play_services_notification_needs_update_title = 0x7f080025;
    public static final int common_google_play_services_notification_ticker = 0x7f080023;
    public static final int common_google_play_services_unknown_issue = 0x7f080035;
    public static final int common_google_play_services_unsupported_date_text = 0x7f080038;
    public static final int common_google_play_services_unsupported_text = 0x7f080037;
    public static final int common_google_play_services_unsupported_title = 0x7f080036;
    public static final int common_google_play_services_update_button = 0x7f080039;
    public static final int common_google_play_services_update_text = 0x7f080030;
    public static final int common_google_play_services_update_title = 0x7f08002f;
    public static final int common_signin_button_text = 0x7f08003a;
    public static final int common_signin_button_text_long = 0x7f08003b;
    public static final int empty_file_list = 0x7f080041;
    public static final int file_download = 0x7f080046;
    public static final int file_save_as = 0x7f080045;
    public static final int file_upload = 0x7f080047;
    public static final int flash_browser_plugin = 0x7f08003d;
    public static final int image_files = 0x7f08003f;
    public static final int text_air_missing_header = 0x7f080065;
    public static final int text_air_missing_text = 0x7f080066;
    public static final int text_dont_show_again = 0x7f080068;
    public static final int text_gamepreview_loading = 0x7f080062;
    public static final int text_gamepreview_loading_error = 0x7f080063;
    public static final int text_install_gamepreview_app = 0x7f080064;
    public static final int text_install_runtime = 0x7f080060;
    public static final int text_runtime_on_external_storage = 0x7f080061;
    public static final int text_runtime_required = 0x7f08005f;
    public static final int title_adobe_air = 0x7f08005e;
    public static final int video_files = 0x7f080040;
    public static final int wallet_buy_button_place_holder = 0x7f08003c;

    public ()
    {
    }
}
