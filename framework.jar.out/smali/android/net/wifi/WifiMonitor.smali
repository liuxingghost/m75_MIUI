.class public Landroid/net/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiMonitor$MonitorThread;,
        Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;
    }
.end annotation


# static fields
.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field private static final ASSOC_REJECT:I = 0x9

.field private static final ASSOC_REJECT_STR:Ljava/lang/String; = "ASSOC-REJECT"

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final AUTHENTICATION_TIMEOUT_PREFIX_STR:Ljava/lang/String; = "Authentication with"

.field private static final AUTHENTICATION_TIMEOUT_STR:Ljava/lang/String; = "timed out"

.field private static final BASE:I = 0x24000

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field private static final CONNECTED:I = 0x1

.field private static final CONNECTED_STR:Ljava/lang/String; = "CONNECTED"

.field private static final DBG:Z = true

.field private static final DISCONNECTED:I = 0x2

.field private static final DISCONNECTED_STR:Ljava/lang/String; = "DISCONNECTED"

.field public static final DRIVER_HUNG_EVENT:I = 0x2400c

.field private static final DRIVER_STATE:I = 0x7

.field private static final DRIVER_STATE_STR:Ljava/lang/String; = "DRIVER-STATE"

.field private static final EAP_AUTH_FAILURE_STR:Ljava/lang/String; = "EAP authentication failed"

.field private static final EAP_FAILURE:I = 0x8

.field private static final EAP_FAILURE_STR:Ljava/lang/String; = "EAP-FAILURE"

.field private static final EAP_FAST_NEW_PAC_UPDATED:Ljava/lang/String; = "EAP-FAST-NEW-PAC-UPDATED"

.field private static final EVENT_PREFIX_LEN_STR:I

.field private static final EVENT_PREFIX_STR:Ljava/lang/String; = "CTRL-EVENT-"

.field private static final HOST_AP_EVENT_PREFIX_STR:Ljava/lang/String; = "AP"

.field public static final HS20_ADD_CRED:I = 0x24049

.field public static final HS20_ANQP_DONE:I = 0x2403c

.field public static final HS20_BTM_URL:I = 0x2404a

.field public static final HS20_CONNECT:I = 0x24044

.field public static final HS20_DEAUTH_URL:I = 0x2404f

.field public static final HS20_DUMP_TOAST:I = 0x24048

.field public static final HS20_EAP_FAILURE:I = 0x24052

.field public static final HS20_ICON_RECEIVED:I = 0x2403e

.field public static final HS20_ICON_RECV_TIMEOUT:I = 0x24047

.field public static final HS20_IGNORE_BLACKLIST:I = 0x24054

.field public static final HS20_INSTALL_PPSMO:I = 0x24043

.field public static final HS20_IPV4_DAD:I = 0x24040

.field public static final HS20_IPV6_DAD:I = 0x24041

.field public static final HS20_IP_DAD:I = 0x2403f

.field public static final HS20_POLICY_UPDATE:I = 0x24042

.field public static final HS20_PPSMO_MANAGEMENT_TREE_URI:I = 0x24057

.field public static final HS20_PPSMO_MNC_LENGTH:I = 0x24056

.field public static final HS20_REM_URL:I = 0x2403d

.field public static final HS20_RESET:I = 0x24046

.field public static final HS20_RESET_EAP_FAILURE_COUNT:I = 0x24053

.field public static final HS20_SERVER_METHOD:I = 0x24050

.field public static final HS20_SET_OSU_CONNECT:I = 0x2404c

.field public static final HS20_SET_OSU_CONNECT_NO:I = 0x2404d

.field public static final HS20_SET_PROV_PROTOCOL:I = 0x2404e

.field public static final HS20_WEB_INSTALL_AAA_ROOTCA:I = 0x24051

.field public static final HS20_WEB_INSTALL_CLIENT_CERT:I = 0x24055

.field public static final HS20_WEB_INSTALL_PPSMO:I = 0x2404b

.field private static final LINK_SPEED:I = 0x5

.field private static final LINK_SPEED_STR:Ljava/lang/String; = "LINK-SPEED"

.field private static final MAX_RECV_ERRORS:I = 0xa

.field private static final MONITOR_SOCKET_CLOSED_STR:Ljava/lang/String; = "connection closed"

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final NEW_PAC_UPDATED_EVENT:I = 0x24034

.field private static final NO_CERTIFICATION:I = 0xb

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field private static final P2P_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-DEVICE-FOUND"

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field private static final P2P_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field private static final P2P_FIND_STOPPED_STR:Ljava/lang/String; = "P2P-FIND-STOPPED"

.field public static final P2P_GC_IP_GET_EVENT:I = 0x2403a

.field private static final P2P_GC_IP_GET_STR:Ljava/lang/String; = "P2P-GC-IP-GET"

.field public static final P2P_GO_IP_ALLOCATE_EVENT:I = 0x24039

.field private static final P2P_GO_IP_ALLOCATE_STR:Ljava/lang/String; = "P2P-GO-IP-ALLOCATE"

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field private static final P2P_GO_NEG_FAILURE_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final P2P_GO_NEG_REQUEST_STR:Ljava/lang/String; = "P2P-GO-NEG-REQUEST"

.field private static final P2P_GO_NEG_SUCCESS_STR:Ljava/lang/String; = "P2P-GO-NEG-SUCCESS"

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field private static final P2P_GROUP_FORMATION_FAILURE_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field private static final P2P_GROUP_FORMATION_SUCCESS_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-SUCCESS"

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field private static final P2P_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field private static final P2P_GROUP_STARTED_STR:Ljava/lang/String; = "P2P-GROUP-STARTED"

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field private static final P2P_INVITATION_RECEIVED_STR:Ljava/lang/String; = "P2P-INVITATION-RECEIVED"

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field private static final P2P_INVITATION_RESULT_STR:Ljava/lang/String; = "P2P-INVITATION-RESULT"

.field public static final P2P_NFC_DEVICE_FOUND_EVENT:I = 0x24038

.field private static final P2P_NFC_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-NFC-DEVICE-FOUND"

.field public static final P2P_NFC_GO_INVITED_EVENT:I = 0x2403b

.field private static final P2P_NFC_GO_INVITED_STR:Ljava/lang/String; = "P2P-NFC-GO-INVITED"

.field public static final P2P_PEER_DISCONNECT_EVENT:I = 0x24028

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field private static final P2P_PROV_DISC_ENTER_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-ENTER-PIN"

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field private static final P2P_PROV_DISC_FAILURE_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field private static final P2P_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-REQ"

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field private static final P2P_PROV_DISC_PBC_RSP_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-RESP"

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field private static final P2P_PROV_DISC_SHOW_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-SHOW-PIN"

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field private static final P2P_SERV_DISC_RESP_STR:Ljava/lang/String; = "P2P-SERV-DISC-RESP"

.field private static final PASSWORD_MAY_BE_INCORRECT_STR:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field private static final SCAN_RESULTS:I = 0x4

.field public static final SCAN_RESULTS_EVENT:I = 0x24005

.field private static final SCAN_RESULTS_STR:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final STATE_CHANGE:I = 0x3

.field private static final STATE_CHANGE_STR:Ljava/lang/String; = "STATE-CHANGE"

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TERMINATING:I = 0x6

.field private static final TERMINATING_STR:Ljava/lang/String; = "TERMINATING"

.field private static final UNKNOWN:I = 0xa

.field public static final WAPI_NO_CERTIFICATION_EVENT:I = 0x24033

.field private static final WAPI_NO_CERTIFICATION_STRING:Ljava/lang/String; = "EAP-NO-CERTIFICATION"

.field public static final WHOLE_CHIP_RESET_FAIL_EVENT:I = 0x24035

.field private static final WHOLE_CHIP_RESET_FAIL_STRING:Ljava/lang/String; = "WHOLE-CHIP-RESET-FAIL"

.field private static final WPA_EVENT_PREFIX_STR:Ljava/lang/String; = "WPA:"

.field private static final WPA_RECV_ERROR_STR:Ljava/lang/String; = "recv error"

.field public static final WPS_ER_AP_ADD_EVENT:I = 0x24037

.field private static final WPS_ER_AP_ADD_STR:Ljava/lang/String; = "WPS-ER-AP-ADD"

.field public static final WPS_ER_ENROLLEE_ADD_EVENT:I = 0x24036

.field private static final WPS_ER_ENROLLEE_ADD_STR:Ljava/lang/String; = "WPS-ER-ENROLLEE-ADD-PBC"

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field private static final WPS_FAIL_PATTERN:Ljava/lang/String; = "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

.field private static final WPS_FAIL_STR:Ljava/lang/String; = "WPS-FAIL"

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field private static final WPS_OVERLAP_STR:Ljava/lang/String; = "WPS-OVERLAP-DETECTED"

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field private static final WPS_SUCCESS_STR:Ljava/lang/String; = "WPS-SUCCESS"

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b

.field private static final WPS_TIMEOUT_STR:Ljava/lang/String; = "WPS-TIMEOUT"

.field private static final hasIgnoreBlackList:Ljava/lang/String; = "HS20-IGNORE-BLACKLIST"

.field private static final hasRestEapFailureCount:Ljava/lang/String; = "HS20-UNLOCK-AUTH"

.field private static final hsAddCredEvent:Ljava/lang/String; = "HS20-ADD-CREDENTIAL"

.field private static final hsAnqpDoneEvent:Ljava/lang/String; = "HS20-ANQP-DONE"

.field private static final hsBtmUrlEvent:Ljava/lang/String; = "HS20-BTM-URL"

.field private static final hsConnectEvent:Ljava/lang/String; = "HS20-CONNECT"

.field private static final hsDeauthUrlEvent:Ljava/lang/String; = "HS20-DEAUTH-URL"

.field private static final hsDumpToastEvent:Ljava/lang/String; = "HS20-DUMP-TOAST"

.field private static final hsEapFailure:Ljava/lang/String; = "EAP-FAILURE"

.field private static final hsIconReceviedEvent:Ljava/lang/String; = "HS20-ICON-RECV"

.field private static final hsIconRecvTimeoutEvent:Ljava/lang/String; = "HS20-ICON-RECV-TIMEOUT"

.field private static final hsInstallPpsmoEvent:Ljava/lang/String; = "HS20-INSTALL-PPSMO"

.field private static final hsIpv4DadEvent:Ljava/lang/String; = "HS20-IPV4-DAD"

.field private static final hsIpv6DadEvent:Ljava/lang/String; = "HS20-IPV6-DAD"

.field private static final hsMgntTreeUri:Ljava/lang/String; = "HS20-MGNT-TREE-URI"

.field private static final hsPolicyUpdateEvent:Ljava/lang/String; = "HS20-POLICY-UPDATE"

.field private static final hsRemUrlEvent:Ljava/lang/String; = "HS20-REM-URL"

.field private static final hsResetEvent:Ljava/lang/String; = "HS20-DEFAULT-RESET"

.field private static final hsServerMethodEvent:Ljava/lang/String; = "HS20-SVR-MTD"

.field private static final hsSetOsuConnectEvent:Ljava/lang/String; = "HS20-SET-OSU-CONNECT"

.field private static final hsSetOsuConnectNoEvent:Ljava/lang/String; = "HS20-SET-OSU-CONNECT-NO"

.field private static final hsSetProvProtocolEvent:Ljava/lang/String; = "HS20-SET-PROV-PROTOCOL"

.field private static final hsWebInstallAAARootCAEvent:Ljava/lang/String; = "HS20-WEB-INSTALL-ROOTCA"

.field private static final hsWebInstallClientCertEvent:Ljava/lang/String; = "HS20-WEB-INSTALL-CLIENTCA"

.field private static final hsWebInstallPpsmoEvent:Ljava/lang/String; = "HS20-WEB-INSTALL-PPSMO"

.field private static final hsWebInstallPpsmoMncLength:Ljava/lang/String; = "HS20-PPSMO-MNC-LENGTH"

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mInterfaceName:Ljava/lang/String;

.field private mMonitoring:Z

.field private final mWifiNative:Landroid/net/wifi/WifiNative;

.field private final mWifiStateMachine:Lcom/android/internal/util/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    .line 174
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V
    .locals 2
    .param p1, "wifiStateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p2, "wifiNative"    # Landroid/net/wifi/WifiNative;

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    const-string v0, "WifiMonitor"

    const-string v1, "Creating WifiMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iput-object p2, p0, Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 485
    iget-object v0, p2, Landroid/net/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    .line 486
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiMonitor;->mMonitoring:Z

    .line 489
    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->registerInterfaceMonitor(Ljava/lang/String;Landroid/net/wifi/WifiMonitor;)V

    .line 490
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiMonitor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor;

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/net/wifi/WifiMonitor;->mMonitoring:Z

    return v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/net/wifi/WifiMonitor;->mMonitoring:Z

    return p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiMonitor;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 50
    sget v0, Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    return v0
.end method

.method static synthetic access$800()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public isMonitoring()Z
    .locals 2

    .prologue
    .line 502
    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->isMonitoring(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public killSupplicant(Z)V
    .locals 1
    .param p1, "p2pSupported"    # Z

    .prologue
    .line 511
    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->killSupplicant(Z)V

    .line 512
    return-void
.end method

.method public startMonitoring()V
    .locals 2

    .prologue
    .line 493
    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->startMonitoring(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .prologue
    .line 497
    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->stopMonitoring(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public stopSupplicant()V
    .locals 1

    .prologue
    .line 507
    invoke-static {}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor()Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->stopSupplicant()V

    .line 508
    return-void
.end method
