.class final Lcom/android/server/display/WifiDisplayController;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayController$Listener;,
        Lcom/android/server/display/WifiDisplayController$SinkState;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x3c

.field private static final CONNECT_MAX_RETRIES:I = 0x3

.field private static final CONNECT_MIN_RETRIES:I = 0x0

.field private static final CONNECT_RETRY_DELAY_MILLIS:I = 0x1f4

.field private static DEBUG:Z = false

.field private static final DEFAULT_CONTROL_PORT:I = 0x1c44

.field private static final DISCOVER_PEERS_INTERVAL_MILLIS:I = 0x2710

.field public static final DRM_CONTENT_MEDIAPLAYER:Ljava/lang/String; = "com.mediatek.mediaplayer.DRM_PLAY"

.field private static final MAX_THROUGHPUT:I = 0x32

.field private static final RECONNECT_RETRY_DELAY_MILLIS:I = 0x3e8

.field private static final RTSP_SINK_TIMEOUT_SECONDS:I = 0xa

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x4b

.field private static final RTSP_TIMEOUT_SECONDS_CERT_MODE:I = 0x78

.field private static final TAG:Ljava/lang/String; = "WifiDisplayController"

.field private static final WFDCONTROLLER_AVERATE_SCORE_COUNT:I = 0x4

.field private static final WFDCONTROLLER_HDMI_UPDATE:I = 0x2

.field private static final WFDCONTROLLER_INVALID_VALUE:I = -0x1

.field private static final WFDCONTROLLER_LATENCY_INFO_DELAY_MILLIS:I = 0x7d0

.field private static final WFDCONTROLLER_LATENCY_INFO_FIRST_MILLIS:I = 0x64

.field private static final WFDCONTROLLER_LATENCY_INFO_PERIOD_MILLIS:I = 0xbb8

.field private static final WFDCONTROLLER_LINK_INFO_PERIOD_MILLIS:I = 0x7d0

.field private static final WFDCONTROLLER_PRE_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_PRE_SHUTDOWN"

.field private static final WFDCONTROLLER_SCORE_THRESHOLD1:I = 0x64

.field private static final WFDCONTROLLER_SCORE_THRESHOLD2:I = 0x50

.field private static final WFDCONTROLLER_SCORE_THRESHOLD3:I = 0x1e

.field private static final WFDCONTROLLER_SCORE_THRESHOLD4:I = 0xa

.field private static final WFDCONTROLLER_WFD_STAT_DISCONNECT:I = 0x0

.field private static final WFDCONTROLLER_WFD_STAT_FILE:Ljava/lang/String; = "/proc/wmt_tm/wfd_stat"

.field private static final WFDCONTROLLER_WFD_STAT_STANDBY:I = 0x1

.field private static final WFDCONTROLLER_WFD_STAT_STREAMING:I = 0x2

.field private static final WFDCONTROLLER_WFD_UPDATE:I = 0x0

.field private static final WFDCONTROLLER_WIFI_APP_SCAN_PERIOD_MILLIS:I = 0x64

.field private static final WFD_BUILD_CONNECT_DIALOG:I = 0x9

.field private static final WFD_CHANGE_RESOLUTION_DIALOG:I = 0x5

.field public static final WFD_CLEARMOTION_DIMMED:Ljava/lang/String; = "com.mediatek.clearmotion.DIMMED_UPDATE"

.field private static final WFD_CONFIRM_CONNECT_DIALOG:I = 0x8

.field public static final WFD_CONNECTION:Ljava/lang/String; = "com.mediatek.wfd.connection"

.field private static final WFD_HDMI_EXCLUDED_DIALOG_HDMI_UPDATE:I = 0x3

.field private static final WFD_HDMI_EXCLUDED_DIALOG_WFD_UPDATE:I = 0x2

.field private static final WFD_RECONNECT_DIALOG:I = 0x4

.field public static final WFD_SINK_GC_REQUEST_CONNECT:Ljava/lang/String; = "com.mediatek.wifi.p2p.GO.GCrequest.connect"

.field private static final WFD_SINK_IP_RETRY_COUNT:I = 0x32

.field private static final WFD_SINK_IP_RETRY_DELAY_MILLIS:I = 0x3e8

.field private static final WFD_SINK_IP_RETRY_FIRST_DELAY:I = 0x12c

.field private static final WFD_SOUND_PATH_DIALOG:I = 0x6

.field private static final WFD_WAIT_CONNECT_DIALOG:I = 0x7

.field private static final WFD_WIFIP2P_EXCLUDED_DIALOG:I = 0x1

.field private static final wfdLinkInfoPattern:Ljava/util/regex/Pattern;


# instance fields
.field private WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

.field private WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

.field private WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

.field private WFDCONTROLLER_DISPLAY_RESOLUTION:I

.field private WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

.field private WFDCONTROLLER_DISPLAY_TOAST_TIME:I

.field private WFDCONTROLLER_QE_ON:Z

.field private WFDCONTROLLER_SQC_INFO_ON:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private mAutoChannelSelection:Z

.field private mAutoEnableWifi:Z

.field private final mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupShowTouchVal:I

.field private mBuildConnectDialog:Landroid/app/AlertDialog;

.field private mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mChangeResolutionDialog:Landroid/app/AlertDialog;

.field private mConfirmConnectDialog:Landroid/app/AlertDialog;

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectionRetriesLeft:I

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDRMContent_Mediaplayer:Z

.field private final mDelayProfiling:Ljava/lang/Runnable;

.field private mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mDiscoverPeers:Ljava/lang/Runnable;

.field private mDiscoverPeersInProgress:Z

.field private final mDisplayNotification:Ljava/lang/Runnable;

.field private final mDisplayToast:Ljava/lang/Runnable;

.field private final mEnableWifiDelay:Ljava/lang/Runnable;

.field private mFast_DesiredMac:Ljava/lang/String;

.field private mFast_NeedFastRtsp:Z

.field private final mGetSinkIpAddr:Ljava/lang/Runnable;

.field private mHDMIExcludeDialog_HDMIUpdate:Landroid/app/AlertDialog;

.field private mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

.field private mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field private mIsConnected_OtherP2p:Z

.field private mIsConnecting_P2p_Rtsp:Z

.field private mIsNeedRotate:Z

.field private mIsWFDConnected:Z

.field private mLastTimeConnected:Z

.field private final mLatencyInfo:Ljava/lang/Runnable;

.field mLatencyPanelView:Landroid/view/View;

.field private mLatencyProfiling:I

.field private mLevel:I

.field private final mListener:Lcom/android/server/display/WifiDisplayController$Listener;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotiTimerStarted:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mPlayerID_Mediaplayer:I

.field private mPrevResolution:I

.field private mRSSI:I

.field private mRTSPConnecting:Z

.field private final mReConnect:Ljava/lang/Runnable;

.field private mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mReConnecteDialog:Landroid/app/AlertDialog;

.field private mReConnecting:Z

.field private mReConnection_Timeout_Remain_Seconds:I

.field private mReconnectForResolutionChange:Z

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private mResolution:I

.field private final mRtspSinkTimeout:Ljava/lang/Runnable;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mScanRequested:Z

.field private final mScanWifiAp:Ljava/lang/Runnable;

.field private mScore:[I

.field private mScoreIndex:I

.field private mScoreLevel:I

.field private mSinkDeviceName:Ljava/lang/String;

.field private mSinkEnabled:Z

.field private mSinkIpAddress:Ljava/lang/String;

.field private mSinkIpRetryCount:I

.field private mSinkMacAddress:Ljava/lang/String;

.field private mSinkPort:I

.field private mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

.field private mSinkSurface:Landroid/view/Surface;

.field private mSoundPathDialog:Landroid/app/AlertDialog;

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field mTextView:Landroid/widget/TextView;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mToastTimerStarted:Z

.field private mUserDecided:Z

.field private mWaitConnectDialog:Landroid/app/AlertDialog;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockSink:Landroid/os/PowerManager$WakeLock;

.field private mWfdEnabled:Z

.field private mWfdEnabling:Z

.field mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

.field private mWifiApConnected:Z

.field private mWifiChannelId:I

.field private mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

.field private mWifiDisplayCertMode:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayWpsConfig:I

.field private final mWifiLinkInfo:Ljava/lang/Runnable;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pEnabled:Z

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiPowerSaving:Z

.field private mWifiRate:I

.field private mWifiScore:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    .line 2461
    const-string v0, "sta_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}|any)\nlink_score=(.*)\nper=(.*)\nrssi=(.*)\nphy=(.*)\nrate=(.*)\ntotal_cnt=(.*)\nthreshold_cnt=(.*)\nfail_cnt=(.*)\ntimeout_cnt=(.*)\napt=(.*)\naat=(.*)\nTC_buf_full_cnt=(.*)\nTC_sta_que_len=(.*)\nTC_avg_que_len=(.*)\nTC_cur_que_len=(.*)\nflag=(.*)\nreserved0=(.*)\nreserved1=(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/WifiDisplayController;->wfdLinkInfoPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/WifiDisplayController$Listener;

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    .line 225
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 287
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    .line 288
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    .line 290
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    .line 291
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    .line 294
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    .line 296
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    .line 297
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    .line 299
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    .line 300
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 304
    const/4 v7, 0x4

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    .line 305
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    .line 307
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 308
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 309
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    .line 310
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiRate:I

    .line 311
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mRSSI:I

    .line 353
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiPowerSaving:Z

    .line 358
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    .line 1622
    new-instance v7, Lcom/android/server/display/WifiDisplayController$17;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$17;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    .line 1629
    new-instance v7, Lcom/android/server/display/WifiDisplayController$18;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$18;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    .line 1641
    new-instance v7, Lcom/android/server/display/WifiDisplayController$19;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$19;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    .line 1824
    new-instance v7, Lcom/android/server/display/WifiDisplayController$22;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$22;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    .line 2482
    new-instance v7, Lcom/android/server/display/WifiDisplayController$23;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$23;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    .line 2817
    new-instance v7, Lcom/android/server/display/WifiDisplayController$24;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/server/display/WifiDisplayController$24;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    .line 3352
    new-instance v7, Lcom/android/server/display/WifiDisplayController$26;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$26;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    .line 3404
    new-instance v7, Lcom/android/server/display/WifiDisplayController$27;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$27;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    .line 3423
    new-instance v7, Lcom/android/server/display/WifiDisplayController$28;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$28;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    .line 3481
    new-instance v7, Lcom/android/server/display/WifiDisplayController$29;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayToast:Ljava/lang/Runnable;

    .line 3498
    new-instance v7, Lcom/android/server/display/WifiDisplayController$30;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$30;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayNotification:Ljava/lang/Runnable;

    .line 3542
    new-instance v7, Lcom/android/server/display/WifiDisplayController$31;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$31;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    .line 4465
    new-instance v7, Lcom/android/server/display/WifiDisplayController$63;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$63;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mGetSinkIpAddr:Ljava/lang/Runnable;

    .line 4577
    new-instance v7, Lcom/android/server/display/WifiDisplayController$65;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$65;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;

    .line 4638
    new-instance v7, Lcom/android/server/display/WifiDisplayController$66;

    invoke-direct {v7, p0}, Lcom/android/server/display/WifiDisplayController$66;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mEnableWifiDelay:Ljava/lang/Runnable;

    .line 390
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 391
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 392
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    .line 394
    const-string v7, "wifip2p"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 395
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, p1, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 400
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiLock()V

    .line 402
    new-instance v7, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v7}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 404
    const-string v7, "mtkhdmi"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    .line 408
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 409
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v7, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v7, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string v7, "com.mediatek.mediaplayer.DRM_PLAY"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v7, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v7, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    const-string v7, "com.mediatek.wifi.p2p.GO.GCrequest.connect"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v7, v1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 423
    new-instance v4, Lcom/android/server/display/WifiDisplayController$1;

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v7}, Lcom/android/server/display/WifiDisplayController$1;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    .line 432
    .local v4, "settingsObserver":Landroid/database/ContentObserver;
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 433
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v7, "wifi_display_on"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 435
    const-string v7, "wifi_display_certification_on"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 437
    const-string v7, "wifi_display_wps_config"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 439
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    .line 444
    new-instance v5, Lcom/android/server/display/WifiDisplayController$2;

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v7}, Lcom/android/server/display/WifiDisplayController$2;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    .line 451
    .local v5, "settingsObserverHDMI":Landroid/database/ContentObserver;
    const-string v7, "hdmi_enable_status"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 454
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 455
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 456
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 457
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RealMetrics, Width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v8, :cond_0

    .line 459
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mIsNeedRotate:Z

    .line 463
    :cond_0
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/display/WifiDisplayController;->registerEMObserver(II)V

    .line 465
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 469
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/display/WifiDisplayController;->actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V

    .line 470
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/display/WifiDisplayController;->updateWfdStatFile(I)V

    .line 474
    const-string v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 475
    .local v2, "pm":Landroid/os/PowerManager;
    const/16 v7, 0x1a

    const-string v8, "UIBC Source"

    invoke-virtual {v2, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 478
    const-string v7, "statusbar"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 479
    const/16 v7, 0x1a

    const-string v8, "WFD Sink"

    invoke-virtual {v2, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLockSink:Landroid/os/PowerManager$WakeLock;

    .line 483
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettingsHDMI()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    return-void
.end method

.method static synthetic access$10002(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->chooseNo_HDMIExcludeDialog_WfdUpdate()V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->turnOffHdmi()V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->enableWifiDisplay()V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->revertResolutionChange()V

    return-void
.end method

.method static synthetic access$10502(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    return p1
.end method

.method static synthetic access$10600(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Lcom/android/server/display/WifiDisplayController$SinkState;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->notifyDisplayConnecting()V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$SinkState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplaySource(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11102(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11200(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkPort:I

    return v0
.end method

.method static synthetic access$11202(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkPort:I

    return p1
.end method

.method static synthetic access$11300(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpRetryCount:I

    return v0
.end method

.method static synthetic access$11302(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpRetryCount:I

    return p1
.end method

.method static synthetic access$11310(Lcom/android/server/display/WifiDisplayController;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpRetryCount:I

    return v0
.end method

.method static synthetic access$11400(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mGetSinkIpAddr:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11502(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11584(Lcom/android/server/display/WifiDisplayController;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->connectRtsp()V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 135
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->updateIfSinkConnected(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 135
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanResults()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "x2"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->updateWfdStatFile(I)V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 135
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"    # Landroid/view/Surface;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 135
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/WifiDisplayController;)Lcom/android/internal/view/IInputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/WifiDisplayController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 135
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic access$4320(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->retryConnection()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->actionAtConnectionFailed()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->actionAtConnecting()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->updateIfHdcp(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->actionAtConnected(Landroid/hardware/display/WifiDisplay;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleSinkP2PConnection(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/android/server/display/WifiDisplayController;ZLandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->updateWifiChannelId(ZLandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Lcom/android/server/display/WifiDisplayController$SinkState;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    return-void
.end method

.method static synthetic access$6500()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/android/server/display/WifiDisplayController;->wfdLinkInfoPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->parseDec(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mRSSI:I

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mRSSI:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->parseFloat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiRate:I

    return v0
.end method

.method static synthetic access$7002(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiRate:I

    return p1
.end method

.method static synthetic access$7100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSignalLevel()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    return v0
.end method

.method static synthetic access$7302(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    return p1
.end method

.method static synthetic access$7400(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    return v0
.end method

.method static synthetic access$7502(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    return p1
.end method

.method static synthetic access$7600(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    return v0
.end method

.method static synthetic access$7802(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    return p1
.end method

.method static synthetic access$7900(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleResolutionChange()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleLatencyProfilingChange()V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleSecureOptionChange()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    return v0
.end method

.method static synthetic access$8300(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiApNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$8400(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    return v0
.end method

.method static synthetic access$8500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startProfilingInfo()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    return v0
.end method

.method static synthetic access$8902(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->showNotification()V

    return-void
.end method

.method static synthetic access$9102(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    return p1
.end method

.method static synthetic access$9400(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    return v0
.end method

.method static synthetic access$9502(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    return p1
.end method

.method static synthetic access$9600(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z

    return v0
.end method

.method static synthetic access$9802(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->chooseNo_WifiDirectExcludeDialog()V

    return-void
.end method

.method private actionAtConnected(Landroid/hardware/display/WifiDisplay;I)V
    .locals 13
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "flags"    # I

    .prologue
    const-wide/16 v11, 0x7d0

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 2129
    const-string v7, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    iput-boolean v6, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 2146
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.mediatek.wfd.connection"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2147
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x4000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2148
    const-string v7, "connected"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2149
    if-eqz p1, :cond_8

    .line 2150
    const-string v7, "device_address"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2151
    const-string v7, "device_name"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2152
    const-string v7, "device_alias"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2161
    :goto_0
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_9

    move v3, v6

    .line 2162
    .local v3, "secure":Z
    :goto_1
    if-eqz v3, :cond_a

    .line 2163
    const-string v7, "secure"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2168
    :goto_2
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "secure:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v5

    .line 2174
    .local v5, "usingUIBC":I
    and-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_0

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_b

    .line 2176
    :cond_0
    const-string v7, "uibc_touch_mouse"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2183
    :goto_3
    :try_start_0
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2189
    :goto_4
    iget-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    if-ne v6, v7, :cond_1

    .line 2190
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 2193
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiLock()V

    .line 2194
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v7, :cond_d

    .line 2195
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_c

    .line 2196
    sget-boolean v7, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 2197
    const-string v7, "WifiDisplayController"

    const-string v8, "acquire wifilock"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    :cond_2
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 2208
    :goto_5
    iget-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    if-eqz v7, :cond_3

    .line 2210
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2211
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetSignalParam()V

    .line 2217
    :cond_3
    const-string v7, "af.policy.r_submix_prio_adjust"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4

    move v4, v6

    .line 2218
    .local v4, "show":Z
    :cond_4
    if-eqz v4, :cond_5

    .line 2219
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->checkA2dpStatus()V

    .line 2223
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->updateChosenCapability(I)V

    .line 2225
    const-string v7, "input_method"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2226
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    .line 2229
    iget v7, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 2231
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2238
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/server/display/WifiDisplayController;->notifyClearMotion(Z)V

    .line 2242
    iget-boolean v6, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    if-eqz v6, :cond_7

    .line 2243
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->checkIfWifiApIs11G()V

    .line 2245
    :cond_7
    return-void

    .line 2154
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v3    # "secure":Z
    .end local v4    # "show":Z
    .end local v5    # "usingUIBC":I
    :cond_8
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", null display"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    const-string v7, "device_address"

    const-string v8, "00:00:00:00:00:00"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2156
    const-string v7, "device_name"

    const-string v8, "wifidisplay dongle"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2157
    const-string v7, "device_alias"

    const-string v8, "wifidisplay dongle"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_9
    move v3, v4

    .line 2161
    goto/16 :goto_1

    .line 2166
    .restart local v3    # "secure":Z
    :cond_a
    const-string v7, "secure"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2179
    .restart local v5    # "usingUIBC":I
    :cond_b
    const-string v7, "uibc_touch_mouse"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 2184
    :catch_0
    move-exception v1

    .line 2185
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", failed to sendStickyBroadcastAsUser(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2201
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_c
    const-string v7, "WifiDisplayController"

    const-string v8, "WFD connected, and WifiLock is Held!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2204
    :cond_d
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "actionAtConnected(): mWifiManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mWifiLock: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private actionAtConnecting()V
    .locals 3

    .prologue
    .line 2325
    const-string v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    return-void
.end method

.method private actionAtConnectionFailed()V
    .locals 3

    .prologue
    .line 2334
    const-string v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    if-ne v0, v1, :cond_0

    .line 2337
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v1, 0x2050086

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2339
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 2341
    :cond_0
    return-void
.end method

.method private actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V
    .locals 7
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 2248
    const-string v2, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iput-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 2263
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.wfd.connection"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2264
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2265
    const-string v2, "connected"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2266
    if-eqz p1, :cond_3

    .line 2267
    const-string v2, "device_address"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2268
    const-string v2, "device_name"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2269
    const-string v2, "device_alias"

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2277
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2283
    :goto_1
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    if-ne v2, v3, :cond_0

    .line 2284
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v3, 0x2050086

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2286
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 2289
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiLock()V

    .line 2290
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v2, :cond_5

    .line 2291
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2292
    sget-boolean v2, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2293
    const-string v2, "WifiDisplayController"

    const-string v3, "release wifilock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 2304
    :goto_2
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    if-eqz v2, :cond_2

    .line 2305
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLinkInfo:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2307
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->clearNotify()V

    .line 2313
    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->updateChosenCapability(I)V

    .line 2316
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopProfilingInfo()V

    .line 2321
    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->notifyClearMotion(Z)V

    .line 2322
    return-void

    .line 2271
    :cond_3
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", null display"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    const-string v2, "device_address"

    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2273
    const-string v2, "device_name"

    const-string v3, "wifidisplay dongle"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2274
    const-string v2, "device_alias"

    const-string v3, "wifidisplay dongle"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2278
    :catch_0
    move-exception v0

    .line 2279
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", failed to sendStickyBroadcastAsUser(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2297
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v2, "WifiDisplayController"

    const-string v3, "WFD disconnected, and WifiLock isn\'t Held!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2300
    :cond_5
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actionAtDisconnected(): mWifiManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWifiLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 10
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    .line 1679
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1680
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advertiseDisplay(): ----->\n\tdisplay: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\tsurface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\twidth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\theight: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\tflags: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    if-ne v0, p4, :cond_1

    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    if-eq v0, p5, :cond_3

    .line 1694
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1695
    .local v4, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1697
    .local v2, "oldSurface":Landroid/view/Surface;
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1698
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1699
    iput p3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    .line 1700
    iput p4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    .line 1701
    iput p5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    .line 1703
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/WifiDisplayController$21;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    move v6, p5

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1755
    .end local v2    # "oldSurface":Landroid/view/Surface;
    .end local v4    # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_2
    :goto_0
    return-void

    .line 1750
    :cond_3
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1751
    const-string v0, "WifiDisplayController"

    const-string v1, "advertiseDisplay() : no need update!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private blockNotificationList(Z)V
    .locals 3
    .param p1, "block"    # Z

    .prologue
    .line 4586
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockNotificationList(), block:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4587
    if-eqz p1, :cond_0

    .line 4588
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 4592
    :goto_0
    return-void

    .line 4590
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private checkA2dpStatus()V
    .locals 6

    .prologue
    .line 3041
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 3043
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3044
    const-string v3, "WifiDisplayController"

    const-string v4, "checkA2dpStatus(), BT is not enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    :cond_0
    :goto_0
    return-void

    .line 3050
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_sound_path_do_not_remind"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3054
    .local v2, "value":I
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkA2dpStatus(), value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 3061
    new-instance v1, Lcom/android/server/display/WifiDisplayController$25;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$25;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 3085
    .local v1, "profileListener":Landroid/bluetooth/BluetoothProfile$ServiceListener;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0
.end method

.method private checkIfWifiApIs11G()V
    .locals 11

    .prologue
    .line 4137
    const-string v8, "WifiDisplayController"

    const-string v9, "checkIfWifiApIs11G()"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4139
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiStatus()Ljava/lang/String;

    move-result-object v7

    .line 4140
    .local v7, "wifiStatus":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 4141
    const-string v8, "WifiDisplayController"

    const-string v9, "getWifiStatus() return null."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4173
    :cond_0
    :goto_0
    return-void

    .line 4145
    :cond_1
    sget-boolean v8, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 4146
    const-string v8, "WifiDisplayController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getWifiStatus() return: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    :cond_2
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4151
    .local v6, "tokens":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 4152
    .local v5, "token":Ljava/lang/String;
    const-string v8, "group_cipher="

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4153
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4154
    .local v4, "nameValue":[Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->nameValueAssign([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4155
    .local v1, "cipher":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 4156
    const-string v8, "WifiDisplayController"

    const-string v9, "cipher is null."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4160
    :cond_3
    const-string v8, "WifiDisplayController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cipher is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    const-string v8, "TKIP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "WEP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4164
    :cond_4
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v9, 0x2050092

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4151
    .end local v1    # "cipher":Ljava/lang/String;
    .end local v4    # "nameValue":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private chooseNo_HDMIExcludeDialog_WfdUpdate()V
    .locals 3

    .prologue
    .line 3608
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3609
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 3611
    return-void
.end method

.method private chooseNo_WifiDirectExcludeDialog()V
    .locals 2

    .prologue
    .line 3597
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_0

    .line 3598
    const-string v0, "WifiDisplayController"

    const-string v1, "[sink] callback onDisplayConnectionFailed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    .line 3605
    :goto_0
    return-void

    .line 3602
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->actionAtDisconnected(Landroid/hardware/display/WifiDisplay;)V

    goto :goto_0
.end method

.method private clearNotify()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3464
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    if-eqz v0, :cond_0

    .line 3465
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3466
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    .line 3470
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    if-eqz v0, :cond_1

    .line 3472
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayNotification:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3473
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 3477
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v2, 0x2050080

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3479
    return-void
.end method

.method private computeFeatureState()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 802
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v0, :cond_0

    .line 804
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_0

    .line 805
    const-string v0, "WifiDisplayController"

    const-string v1, "Wifi p2p is disabled, update WIFI_DISPLAY_ON as false."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 809
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 816
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 993
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 997
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 998
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: nothing to do, already connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1007
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1008
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: connecting to the same dongle already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1015
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_3

    .line 1018
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1019
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: nothing to do, already connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and not part way through "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connecting to a different device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1026
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_4

    .line 1027
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring request to connect to Wifi display because the  feature is currently disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1032
    :cond_4
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1033
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    .line 1034
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    goto/16 :goto_0
.end method

.method private connectRtsp()V
    .locals 5

    .prologue
    .line 4500
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectRtsp(), mSinkState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4502
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkSurface:Landroid/view/Surface;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$64;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$64;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v4}, Landroid/media/RemoteDisplay;->connect(Ljava/lang/String;Landroid/view/Surface;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)Landroid/media/RemoteDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 4567
    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4570
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x78

    .line 4573
    .local v0, "rtspTimeout":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4575
    return-void

    .line 4570
    .end local v0    # "rtspTimeout":I
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 7
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1820
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 3
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1812
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method private static describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 3
    .param p0, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 1816
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method private dialogReconnect()V
    .locals 1

    .prologue
    .line 3538
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 3540
    return-void
.end method

.method private dialogWfdHdmiConflict(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x2

    .line 2446
    sget-boolean v0, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2447
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_0
    if-nez p1, :cond_2

    .line 2452
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 2459
    :cond_1
    :goto_0
    return-void

    .line 2454
    :cond_2
    if-ne v3, p1, :cond_1

    .line 2455
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    goto :goto_0
.end method

.method private disconnect()V
    .locals 3

    .prologue
    .line 1038
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect, mRemoteDisplayInterface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_0

    .line 1042
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V

    .line 1055
    :goto_0
    return-void

    .line 1047
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1049
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateWfdStatFile(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1054
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    goto :goto_0
.end method

.method private declared-synchronized disconnectWfdSink()V
    .locals 4

    .prologue
    .line 4316
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SinkState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4321
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mGetSinkIpAddr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4323
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4324
    const-string v0, "WifiDisplayController"

    const-string v1, "Disconnected from WFD sink (P2P)."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4326
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4328
    const-string v0, "WifiDisplayController"

    const-string v1, "[Sink] callback onDisplayDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnected()V

    .line 4331
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateIfSinkConnected(Z)V

    .line 4334
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 4359
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 4360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;

    .line 4361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkMacAddress:Ljava/lang/String;

    .line 4362
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkPort:I

    .line 4363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkIpAddress:Ljava/lang/String;

    .line 4364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkSurface:Landroid/view/Surface;

    .line 4367
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWaitConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4368
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConfirmConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4369
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4370
    monitor-exit p0

    return-void

    .line 4336
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4339
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_4

    .line 4341
    const-string v0, "WifiDisplayController"

    const-string v1, "before dispose()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    .line 4343
    const-string v0, "WifiDisplayController"

    const-string v1, "after dispose()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4346
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRtspSinkTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4348
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4349
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$61;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$61;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 4093
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4094
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4095
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_HDMIUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4096
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecteDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 4098
    return-void
.end method

.method private dismissDialogDetail(Landroid/app/AlertDialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 4101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4102
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4105
    :cond_0
    return-void
.end method

.method private enableWifiDisplay()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2378
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mEnableWifiDelay:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2381
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v2, :cond_0

    .line 2384
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_reenable_delay"

    const-wide/16 v4, 0x1f4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2387
    .local v0, "delay":J
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable wifi with delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mEnableWifiDelay:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2391
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const v3, 0x2050088

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2398
    .end local v0    # "delay":J
    :goto_0
    return-void

    .line 2395
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/display/WifiDisplayController;->mAutoEnableWifi:Z

    .line 2396
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    goto :goto_0
.end method

.method private enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$SinkState;

    .prologue
    .line 4595
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterSinkState(),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4596
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    .line 4597
    return-void
.end method

.method private getAverageScore()I
    .locals 6

    .prologue
    .line 2656
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    rem-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiScore:I

    aput v5, v3, v4

    .line 2657
    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    .line 2659
    const/4 v0, 0x0

    .line 2660
    .local v0, "count":I
    const/4 v2, 0x0

    .line 2661
    .local v2, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 2662
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    aget v3, v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2663
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 2664
    add-int/lit8 v0, v0, 0x1

    .line 2661
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2667
    :cond_1
    div-int v3, v2, v0

    return v3
.end method

.method private getFreqId(I)I
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 3262
    sparse-switch p1, :sswitch_data_0

    .line 3348
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3265
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3267
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 3269
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 3271
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 3273
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 3275
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 3277
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 3279
    :sswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 3281
    :sswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 3283
    :sswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 3285
    :sswitch_a
    const/16 v0, 0xb

    goto :goto_0

    .line 3287
    :sswitch_b
    const/16 v0, 0xc

    goto :goto_0

    .line 3289
    :sswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 3291
    :sswitch_d
    const/16 v0, 0xe

    goto :goto_0

    .line 3294
    :sswitch_e
    const/16 v0, 0x24

    goto :goto_0

    .line 3296
    :sswitch_f
    const/16 v0, 0x26

    goto :goto_0

    .line 3298
    :sswitch_10
    const/16 v0, 0x28

    goto :goto_0

    .line 3300
    :sswitch_11
    const/16 v0, 0x2a

    goto :goto_0

    .line 3302
    :sswitch_12
    const/16 v0, 0x2c

    goto :goto_0

    .line 3304
    :sswitch_13
    const/16 v0, 0x2e

    goto :goto_0

    .line 3306
    :sswitch_14
    const/16 v0, 0x30

    goto :goto_0

    .line 3308
    :sswitch_15
    const/16 v0, 0x34

    goto :goto_0

    .line 3310
    :sswitch_16
    const/16 v0, 0x38

    goto :goto_0

    .line 3312
    :sswitch_17
    const/16 v0, 0x3c

    goto :goto_0

    .line 3314
    :sswitch_18
    const/16 v0, 0x40

    goto :goto_0

    .line 3316
    :sswitch_19
    const/16 v0, 0x64

    goto :goto_0

    .line 3318
    :sswitch_1a
    const/16 v0, 0x68

    goto :goto_0

    .line 3320
    :sswitch_1b
    const/16 v0, 0x6c

    goto :goto_0

    .line 3322
    :sswitch_1c
    const/16 v0, 0x70

    goto :goto_0

    .line 3324
    :sswitch_1d
    const/16 v0, 0x74

    goto :goto_0

    .line 3326
    :sswitch_1e
    const/16 v0, 0x78

    goto :goto_0

    .line 3328
    :sswitch_1f
    const/16 v0, 0x7c

    goto :goto_0

    .line 3330
    :sswitch_20
    const/16 v0, 0x80

    goto :goto_0

    .line 3332
    :sswitch_21
    const/16 v0, 0x84

    goto :goto_0

    .line 3334
    :sswitch_22
    const/16 v0, 0x88

    goto :goto_0

    .line 3336
    :sswitch_23
    const/16 v0, 0x8c

    goto :goto_0

    .line 3338
    :sswitch_24
    const/16 v0, 0x95

    goto :goto_0

    .line 3340
    :sswitch_25
    const/16 v0, 0x99

    goto :goto_0

    .line 3342
    :sswitch_26
    const/16 v0, 0x9d

    goto :goto_0

    .line 3344
    :sswitch_27
    const/16 v0, 0xa1

    goto :goto_0

    .line 3346
    :sswitch_28
    const/16 v0, 0xa5

    goto :goto_0

    .line 3262
    nop

    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_0
        0x971 -> :sswitch_1
        0x976 -> :sswitch_2
        0x97b -> :sswitch_3
        0x980 -> :sswitch_4
        0x985 -> :sswitch_5
        0x98a -> :sswitch_6
        0x98f -> :sswitch_7
        0x994 -> :sswitch_8
        0x999 -> :sswitch_9
        0x99e -> :sswitch_a
        0x9a3 -> :sswitch_b
        0x9a8 -> :sswitch_c
        0x9b4 -> :sswitch_d
        0x143c -> :sswitch_e
        0x1446 -> :sswitch_f
        0x1450 -> :sswitch_10
        0x145a -> :sswitch_11
        0x1464 -> :sswitch_12
        0x146e -> :sswitch_13
        0x1478 -> :sswitch_14
        0x148c -> :sswitch_15
        0x14a0 -> :sswitch_16
        0x14b4 -> :sswitch_17
        0x14c8 -> :sswitch_18
        0x157c -> :sswitch_19
        0x1590 -> :sswitch_1a
        0x15a4 -> :sswitch_1b
        0x15b8 -> :sswitch_1c
        0x15cc -> :sswitch_1d
        0x15e0 -> :sswitch_1e
        0x15f4 -> :sswitch_1f
        0x1608 -> :sswitch_20
        0x161c -> :sswitch_21
        0x1630 -> :sswitch_22
        0x1644 -> :sswitch_23
        0x1671 -> :sswitch_24
        0x1685 -> :sswitch_25
        0x1699 -> :sswitch_26
        0x16ad -> :sswitch_27
        0x16c1 -> :sswitch_28
    .end sparse-switch
.end method

.method private static getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;
    .locals 8
    .param p0, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    const/4 v4, 0x0

    .line 1770
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1777
    .local v3, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 1778
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1779
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1780
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    .line 1781
    check-cast v0, Ljava/net/Inet4Address;

    .line 1787
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "iface":Ljava/net/NetworkInterface;
    :goto_0
    return-object v0

    .line 1771
    :catch_0
    move-exception v2

    .line 1772
    .local v2, "ex":Ljava/net/SocketException;
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not obtain address of network interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 1774
    goto :goto_0

    .line 1785
    .end local v2    # "ex":Ljava/net/SocketException;
    .restart local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v3    # "iface":Ljava/net/NetworkInterface;
    :cond_1
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not obtain address of network interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because it had no IPv4 addresses."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 1787
    goto :goto_0
.end method

.method private static getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .locals 2
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1791
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "DIRECT-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "Broadcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1794
    const/16 v0, 0x216a

    .line 1796
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1c44

    goto :goto_0
.end method

.method private getResolutionIndex(I)I
    .locals 1
    .param p1, "settingValue"    # I

    .prologue
    const/4 v0, 0x5

    .line 2884
    packed-switch p1, :pswitch_data_0

    .line 2892
    :goto_0
    :pswitch_0
    return v0

    .line 2890
    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    .line 2884
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 7
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "session"    # I

    .prologue
    .line 1473
    if-nez p1, :cond_1

    .line 1474
    const/4 v0, 0x0

    .line 1486
    :cond_0
    :goto_0
    return-object v0

    .line 1476
    :cond_1
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 1477
    .local v6, "addr":Ljava/net/Inet4Address;
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    :goto_2
    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    .local v0, "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1484
    const-string v1, "WifiDisplayController"

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1477
    .end local v0    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const-string v5, ""

    goto :goto_2
.end method

.method private getWifiApNum()I
    .locals 11

    .prologue
    .line 3201
    const/4 v1, 0x0

    .line 3202
    .local v1, "count":I
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 3203
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3205
    .local v0, "SSIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_4

    .line 3206
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 3208
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "[IBSS]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3213
    iget v8, v5, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v8}, Lcom/android/server/display/WifiDisplayController;->getFreqId(I)I

    move-result v8

    iget v9, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    if-ne v8, v9, :cond_0

    .line 3215
    const/4 v2, 0x0

    .line 3217
    .local v2, "duplicate":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3218
    .local v7, "ssid":Ljava/lang/String;
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3219
    const/4 v2, 0x1

    .line 3224
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_0

    .line 3225
    sget-boolean v8, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 3226
    const-string v8, "WifiDisplayController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AP SSID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    :cond_3
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3235
    .end local v2    # "duplicate":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    return v1
.end method

.method private getWifiLock()V
    .locals 3

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2113
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 2114
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "WFD_WifiLock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 2116
    :cond_1
    return-void
.end method

.method private handleConnectionChanged(Landroid/net/NetworkInfo;I)V
    .locals 5
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "reason"    # I

    .prologue
    const/4 v4, 0x1

    .line 1510
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConnectionChanged(), mWfdEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1512
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1513
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v0, :cond_1

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$16;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$16;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 1612
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_2

    .line 1613
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    .line 1614
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-ne v4, v0, :cond_2

    .line 1615
    const-string v0, "WifiDisplayController"

    const-string v1, "Wifi P2p connection is connected but it does not wifidisplay trigger"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 1620
    :cond_2
    return-void

    .line 1573
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1576
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    .line 1577
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 1583
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_6

    .line 1584
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    .line 1586
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z

    if-ne v4, v0, :cond_6

    .line 1588
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do scan after disconnected when wfd enabled. forResolutionChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", WifiApConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestStartScan()V

    .line 1592
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    if-eqz v0, :cond_6

    .line 1594
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    .line 1595
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1600
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    .line 1603
    const/4 v0, 0x7

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_1

    .line 1604
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnect procedure start, ReConnectDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->dialogReconnect()V

    goto/16 :goto_0
.end method

.method private handleConnectionFailure(Z)V
    .locals 5
    .param p1, "timeoutOccurred"    # Z

    .prologue
    .line 1655
    const-string v1, "WifiDisplayController"

    const-string v2, "Wifi display connection failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_0

    .line 1658
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    if-lez v1, :cond_2

    .line 1659
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1660
    .local v0, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$20;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/WifiDisplayController$20;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1675
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_1
    return-void

    .line 1660
    .restart local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    const-wide/16 v1, 0x1f4

    goto :goto_0

    .line 1672
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    goto :goto_1
.end method

.method private handleLatencyProfilingChange()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 2964
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_latency_profiling"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2967
    .local v0, "value":I
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-ne v0, v1, :cond_0

    .line 2988
    :goto_0
    return-void

    .line 2971
    :cond_0
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLatencyProfilingChange(), connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    .line 2974
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-eq v1, v4, :cond_1

    .line 2975
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2979
    :cond_1
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    if-ne v1, v4, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-eqz v1, :cond_3

    .line 2983
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->startProfilingInfo()V

    goto :goto_0

    .line 2985
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopProfilingInfo()V

    goto :goto_0
.end method

.method private handleLevelChange()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3434
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    if-gez v0, :cond_2

    .line 3437
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    if-nez v0, :cond_0

    .line 3439
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayToast:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3442
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    .line 3446
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    if-nez v0, :cond_1

    .line 3448
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisplayNotification:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3451
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 3460
    :cond_1
    :goto_0
    return-void

    .line 3457
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->clearNotify()V

    goto :goto_0
.end method

.method private handlePeersChanged()V
    .locals 0

    .prologue
    .line 1503
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    .line 1504
    return-void
.end method

.method private handleResolutionChange()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2899
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_display_max_resolution"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2902
    .local v3, "r":I
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    if-ne v3, v5, :cond_1

    .line 2942
    :cond_0
    :goto_0
    return-void

    .line 2906
    :cond_1
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    .line 2907
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    .line 2909
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleResolutionChange(), resolution:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v1

    .line 2913
    .local v1, "idxModified":I
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v2

    .line 2915
    .local v2, "idxOriginal":I
    if-eq v1, v2, :cond_0

    .line 2919
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_display_change_resolution_remind"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 2923
    .local v0, "doNotRemind":Z
    :cond_2
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", doNotRemind:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    const-string v5, "media.wfd.video-format"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v5, :cond_0

    .line 2930
    :cond_3
    if-eqz v0, :cond_4

    .line 2931
    const-string v5, "WifiDisplayController"

    const-string v6, "-- reconnect for resolution change --"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 2935
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mReconnectForResolutionChange:Z

    goto/16 :goto_0

    .line 2938
    :cond_4
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    goto/16 :goto_0
.end method

.method private handleScanFinished()V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$11;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$11;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 973
    return-void
.end method

.method private handleScanResults()V
    .locals 6

    .prologue
    .line 943
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 944
    .local v0, "count":I
    sget-object v4, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/WifiDisplay;

    .line 945
    .local v2, "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 946
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 947
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aput-object v4, v2, v3

    .line 948
    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 945
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 951
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$10;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/server/display/WifiDisplayController$10;-><init>(Lcom/android/server/display/WifiDisplayController;I[Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 963
    return-void
.end method

.method private handleScanStarted()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$9;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$9;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 940
    return-void
.end method

.method private handleSecureOptionChange()V
    .locals 4

    .prologue
    .line 2869
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_security_option"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2872
    .local v0, "secureOption":I
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    if-ne v0, v1, :cond_0

    .line 2881
    :goto_0
    return-void

    .line 2876
    :cond_0
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSecureOptionChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    .line 2880
    const-string v1, "ro.sf.security.image"

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSinkP2PConnection(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 4373
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSinkP2PConnection(), sinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4378
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4436
    :cond_0
    :goto_0
    return-void

    .line 4382
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$62;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$62;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_0

    .line 4429
    :cond_2
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4433
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V

    goto :goto_0
.end method

.method private handleStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1491
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    .line 1492
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 1494
    if-nez p1, :cond_0

    .line 1495
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->dismissDialog()V

    .line 1498
    :cond_0
    return-void
.end method

.method private hideLatencyPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3024
    const-string v1, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3028
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3031
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3032
    iput-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    .line 3035
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    iput-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 3036
    return-void
.end method

.method private initSecureOption()V
    .locals 3

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_security_option"

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2864
    const-string v0, "wlan.wfd.security.image"

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2865
    return-void
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2000
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InjectKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2003
    return-void
.end method

.method private injectPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2006
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2007
    const-string v0, "Input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InjectPointerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2010
    return-void
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .locals 2
    .param p0, "deviceType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1807
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/server/display/WifiDisplayController$SinkState;

    .prologue
    .line 4600
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSourceDeviceType(I)Z
    .locals 1
    .param p1, "deviceType"    # I

    .prologue
    .line 4461
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1800
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->isPrimarySinkDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiDisplaySource(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 4439
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->isSourceDeviceType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 4444
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_0

    .line 4445
    const-string v1, "WifiDisplayController"

    const-string v2, "This is not WFD source device !!!!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    :cond_0
    return v0

    .line 4439
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDebugLevel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2359
    const-string v1, "wlan.wfd.controller.debug"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2360
    .local v0, "debugLevel":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2361
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", debugLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2371
    sput-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    .line 2374
    :goto_0
    return-void

    .line 2365
    :pswitch_0
    sput-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    goto :goto_0

    .line 2368
    :pswitch_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    goto :goto_0

    .line 2363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadWfdWpsSetup()I
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2344
    const-string v3, "wlan.wfd.wps.setup"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2345
    .local v0, "wfdWpsSetup":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2346
    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", wfdWpsSetup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 2354
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    move v1, v2

    .line 2352
    goto :goto_0

    .line 2348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nameValueAssign([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nameValue"    # [Ljava/lang/String;

    .prologue
    .line 4176
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 4177
    :cond_0
    const/4 v0, 0x0

    .line 4179
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    aget-object v0, p1, v0

    goto :goto_0
.end method

.method private notifyClearMotion(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .prologue
    .line 4111
    const-string v3, "sys.display.clearMotion.dimmed"

    if-eqz p1, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4116
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.clearmotion.DIMMED_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4117
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4120
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4126
    :goto_1
    return-void

    .line 4111
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "0"

    goto :goto_0

    .line 4121
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 4122
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", failed to sendBroadcastAsUser(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private notifyDisplayConnecting()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 4452
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    const-string v1, "Temp address"

    const-string v2, "WiFi Display Device"

    const/4 v3, 0x0

    const/4 v6, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 4456
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    const-string v1, "WifiDisplayController"

    const-string v2, "[sink] callback onDisplayConnecting()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4457
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v1, v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V

    .line 4458
    return-void
.end method

.method private parseDec(Ljava/lang/String;)I
    .locals 5
    .param p1, "decString"    # Ljava/lang/String;

    .prologue
    .line 2529
    const/4 v1, 0x0

    .line 2532
    .local v1, "num":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2536
    :goto_0
    return v1

    .line 2533
    :catch_0
    move-exception v0

    .line 2534
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse dec string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseFloat(Ljava/lang/String;)I
    .locals 5
    .param p1, "floatString"    # Ljava/lang/String;

    .prologue
    .line 2540
    const/4 v1, 0x0

    .line 2543
    .local v1, "num":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    .line 2547
    :goto_0
    return v1

    .line 2544
    :catch_0
    move-exception v0

    .line 2545
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse float string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private popupDialog(Landroid/app/AlertDialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 4079
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 4080
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4082
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 4084
    return-void
.end method

.method private prepareDialog(I)V
    .locals 13
    .param p1, "dialogID"    # I

    .prologue
    .line 3624
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 3626
    .local v3, "mResource":Landroid/content/res/Resources;
    const/4 v10, 0x1

    if-ne v10, p1, :cond_1

    .line 3628
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x2050076

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040472

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$35;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$35;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104043e

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$34;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$34;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/WifiDisplayController$33;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$33;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/WifiDisplayController$32;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$32;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    .line 3688
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    .line 4076
    :cond_0
    :goto_0
    return-void

    .line 3690
    :cond_1
    const/4 v10, 0x2

    if-ne v10, p1, :cond_2

    .line 3692
    const v10, 0x2050073

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->reviseHDMIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3695
    .local v5, "messageString":Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040472

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$39;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$39;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104043e

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$38;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$38;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/WifiDisplayController$37;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$37;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/WifiDisplayController$36;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$36;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

    .line 3743
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_WfdUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 3745
    .end local v5    # "messageString":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x3

    if-ne v10, p1, :cond_3

    .line 3746
    const v10, 0x2050074

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->reviseHDMIString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3749
    .restart local v5    # "messageString":Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040472

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$43;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$43;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104043e

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$42;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$42;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/WifiDisplayController$41;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$41;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/WifiDisplayController$40;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$40;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_HDMIUpdate:Landroid/app/AlertDialog;

    .line 3793
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mHDMIExcludeDialog_HDMIUpdate:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 3795
    .end local v5    # "messageString":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x4

    if-ne v10, p1, :cond_4

    .line 3797
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x2050084

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x2050085

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040472

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$46;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$46;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104043e

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$45;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$45;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/WifiDisplayController$44;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$44;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecteDialog:Landroid/app/AlertDialog;

    .line 3831
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecteDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 3833
    :cond_4
    const/4 v10, 0x5

    if-ne v10, p1, :cond_5

    .line 3836
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3837
    .local v0, "adbInflater":Landroid/view/LayoutInflater;
    const v10, 0x2070003

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3838
    .local v2, "checkboxLayout":Landroid/view/View;
    const v10, 0x2100006

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 3839
    .local v1, "checkbox":Landroid/widget/CheckBox;
    const v10, 0x2050091

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setText(I)V

    .line 3842
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x2050090

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040472

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$49;

    invoke-direct {v12, p0, v1}, Lcom/android/server/display/WifiDisplayController$49;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$48;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$48;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/WifiDisplayController$47;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$47;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mChangeResolutionDialog:Landroid/app/AlertDialog;

    .line 3900
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mChangeResolutionDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 3902
    .end local v0    # "adbInflater":Landroid/view/LayoutInflater;
    .end local v1    # "checkbox":Landroid/widget/CheckBox;
    .end local v2    # "checkboxLayout":Landroid/view/View;
    :cond_5
    const/4 v10, 0x6

    if-ne v10, p1, :cond_7

    .line 3905
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3906
    .restart local v0    # "adbInflater":Landroid/view/LayoutInflater;
    const v10, 0x2070003

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3907
    .restart local v2    # "checkboxLayout":Landroid/view/View;
    const v10, 0x2100006

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 3908
    .restart local v1    # "checkbox":Landroid/widget/CheckBox;
    const v10, 0x2050091

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setText(I)V

    .line 3911
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_display_sound_path_do_not_remind"

    const/4 v12, -0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 3913
    .local v9, "value":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_6

    .line 3914
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3918
    :cond_6
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x2050089

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040472

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$51;

    invoke-direct {v12, p0, v1}, Lcom/android/server/display/WifiDisplayController$51;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/WifiDisplayController$50;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$50;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mSoundPathDialog:Landroid/app/AlertDialog;

    .line 3950
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mSoundPathDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 3952
    .end local v0    # "adbInflater":Landroid/view/LayoutInflater;
    .end local v1    # "checkbox":Landroid/widget/CheckBox;
    .end local v2    # "checkboxLayout":Landroid/view/View;
    .end local v9    # "value":I
    :cond_7
    const/4 v10, 0x7

    if-ne v10, p1, :cond_8

    .line 3955
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3956
    .restart local v0    # "adbInflater":Landroid/view/LayoutInflater;
    const v10, 0x207000e

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 3957
    .local v7, "progressLayout":Landroid/view/View;
    const v10, 0x210002e

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 3958
    .local v6, "progressBar":Landroid/widget/ProgressBar;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 3959
    const v10, 0x210002f

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 3960
    .local v8, "progressText":Landroid/widget/TextView;
    const v10, 0x2050094

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 3963
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$53;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$53;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/WifiDisplayController$52;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$52;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWaitConnectDialog:Landroid/app/AlertDialog;

    .line 3985
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWaitConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 3987
    .end local v0    # "adbInflater":Landroid/view/LayoutInflater;
    .end local v6    # "progressBar":Landroid/widget/ProgressBar;
    .end local v7    # "progressLayout":Landroid/view/View;
    .end local v8    # "progressText":Landroid/widget/TextView;
    :cond_8
    const/16 v10, 0x8

    if-ne v10, p1, :cond_9

    .line 3989
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mWaitConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->dismissDialogDetail(Landroid/app/AlertDialog;)V

    .line 3991
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mSinkDeviceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x2050095

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3996
    .local v4, "message":Ljava/lang/String;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104043d

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$56;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$56;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104043e

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$55;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$55;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/WifiDisplayController$54;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$54;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mConfirmConnectDialog:Landroid/app/AlertDialog;

    .line 4038
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mConfirmConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4039
    .end local v4    # "message":Ljava/lang/String;
    :cond_9
    const/16 v10, 0x9

    if-ne v10, p1, :cond_0

    .line 4042
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4043
    .restart local v0    # "adbInflater":Landroid/view/LayoutInflater;
    const v10, 0x207000e

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 4044
    .restart local v7    # "progressLayout":Landroid/view/View;
    const v10, 0x210002e

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 4045
    .restart local v6    # "progressBar":Landroid/widget/ProgressBar;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 4046
    const v10, 0x210002f

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 4047
    .restart local v8    # "progressText":Landroid/widget/TextView;
    const v10, 0x2050096

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 4050
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$58;

    invoke-direct {v12, p0}, Lcom/android/server/display/WifiDisplayController$58;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/server/display/WifiDisplayController$57;

    invoke-direct {v11, p0}, Lcom/android/server/display/WifiDisplayController$57;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;

    .line 4072
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mBuildConnectDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v10}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    goto/16 :goto_0
.end method

.method private readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 6
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1762
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1765
    return-void
.end method

.method private registerEMObserver(II)V
    .locals 9
    .param p1, "widthPixels"    # I
    .param p2, "heightPixels"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2719
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20b0007

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    .line 2720
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20b0008

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    .line 2721
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20b0009

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    .line 2722
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20b000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    .line 2723
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20b000b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    .line 2724
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x20b000c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    .line 2726
    const-string v2, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerEMObserver(), tt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",nt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",ps:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",psd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",so:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_SECURE_OPTION:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_display_display_toast_time"

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2736
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_display_notification_time"

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2738
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_display_sqc_info_on"

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2740
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_display_qe_on"

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2746
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_display_max_resolution"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2750
    .local v0, "r":I
    if-ne v0, v7, :cond_4

    .line 2751
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    if-gt v2, v8, :cond_2

    .line 2753
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_RESOLUTION:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    .line 2772
    :goto_2
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v1

    .line 2773
    .local v1, "resolutionIndex":I
    const-string v2, "WifiDisplayController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mResolution:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", resolutionIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    const-string v2, "media.wfd.video-format"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_display_auto_channel_selection"

    iget-boolean v6, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    if-eqz v6, :cond_6

    :goto_3
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2780
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_max_resolution"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2782
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_power_saving_option"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2784
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_power_saving_delay"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2787
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_latency_profiling"

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2789
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_chosen_capability"

    const-string v5, ""

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2791
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetLatencyInfo()V

    .line 2792
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->initSecureOption()V

    .line 2795
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_display_toast_time"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2797
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_notification_time"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2799
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_sqc_info_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2801
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_qe_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2805
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_auto_channel_selection"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2807
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_max_resolution"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2809
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_latency_profiling"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2811
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_security_option"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2815
    return-void

    .end local v0    # "r":I
    .end local v1    # "resolutionIndex":I
    :cond_0
    move v2, v4

    .line 2738
    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 2740
    goto/16 :goto_1

    .line 2756
    .restart local v0    # "r":I
    :cond_2
    const/16 v2, 0x438

    if-lt p1, v2, :cond_3

    const/16 v2, 0x780

    if-lt p2, v2, :cond_3

    .line 2757
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .line 2759
    :cond_3
    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .line 2764
    :cond_4
    if-ltz v0, :cond_5

    if-gt v0, v8, :cond_5

    .line 2766
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .line 2768
    :cond_5
    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    goto/16 :goto_2

    .restart local v1    # "resolutionIndex":I
    :cond_6
    move v3, v4

    .line 2778
    goto/16 :goto_3
.end method

.method private reportFeatureState()V
    .locals 4

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->computeFeatureState()I

    move-result v0

    .line 791
    .local v0, "featureState":I
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportFeatureState(), featureState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    return-void
.end method

.method private requestPeers()V
    .locals 3

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$8;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$8;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 930
    return-void
.end method

.method private resetLatencyInfo()V
    .locals 3

    .prologue
    .line 3193
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wifi_info"

    const-string v2, "0,0,0,0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3195
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wfd_latency"

    const-string v2, "0,0,0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3197
    return-void
.end method

.method private resetReconnectVariable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3588
    const-string v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3591
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    .line 3592
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mReConnecting:Z

    .line 3593
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3594
    return-void
.end method

.method private resetSignalParam()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2703
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2704
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2706
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mScoreIndex:I

    .line 2707
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2708
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScore:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 2707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2711
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z

    .line 2712
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mToastTimerStarted:Z

    .line 2714
    return-void
.end method

.method private resetWfdInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 675
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 676
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    .line 677
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 678
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setUibcSupported(Z)V

    .line 679
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setContentProtected(Z)V

    .line 680
    return-void
.end method

.method private retryConnection()V
    .locals 2

    .prologue
    .line 1061
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1062
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 1063
    return-void
.end method

.method private revertResolutionChange()V
    .locals 5

    .prologue
    .line 2946
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "revertResolutionChange(), resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v0

    .line 2949
    .local v0, "idxModified":I
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v1

    .line 2952
    .local v1, "idxOriginal":I
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    const-string v2, "media.wfd.video-format"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mPrevResolution:I

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    .line 2958
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_max_resolution"

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2960
    return-void
.end method

.method private reviseHDMIString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 4189
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    invoke-interface {v1}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->getDisplayType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    invoke-interface {v1}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->getDisplayType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4193
    :cond_0
    const-string v1, "HDMI"

    const-string v2, "MHL"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 4199
    .end local p1    # "input":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 4195
    .restart local p1    # "input":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4196
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiDisplayController"

    const-string v2, "HdmiManager.getDisplayType() RemoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendKeyEvent(II)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "isDown"    # I

    .prologue
    .line 1983
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1984
    .local v1, "now":J
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1985
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->translateAsciiToKeyCode(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 1991
    :goto_0
    return-void

    .line 1988
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->translateAsciiToKeyCode(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->injectKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private sendTap(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 1994
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "now":J
    move-wide v2, v0

    move v5, p1

    move v6, p2

    move v7, v4

    .line 1995
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 1996
    const/4 v9, 0x1

    move-wide v5, v0

    move-wide v7, v0

    move v10, p1

    move v11, p2

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->injectPointerEvent(Landroid/view/MotionEvent;)V

    .line 1997
    return-void
.end method

.method private setAutoChannelSelection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3090
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoChannelSelection(), auto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z

    if-eqz v0, :cond_0

    .line 3093
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setP2pAutoChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 3097
    :goto_0
    return-void

    .line 3095
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setP2pAutoChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 1
    .param p1, "dialogID"    # I

    .prologue
    .line 4087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z

    .line 4088
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V

    .line 4090
    return-void
.end method

.method private showLatencyPanel()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 2991
    const-string v3, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2994
    .local v0, "adbInflater":Landroid/view/LayoutInflater;
    const v3, 0x2070012

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    .line 2997
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    const v4, 0x2100049

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 2998
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    const-string v4, "AP:\nS:\nR:\nAL:\n"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3006
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 3007
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7ef

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3009
    const/16 v3, 0x8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3011
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3012
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3013
    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3014
    const v3, 0x3f333333    # 0.7f

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3017
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 3020
    .local v2, "windowManager":Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyPanelView:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3021
    return-void
.end method

.method private showNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x2050082

    const v5, 0x2050080

    .line 3512
    const-string v3, "WifiDisplayController"

    const-string v4, "showNotification()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v7, v5, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3520
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3522
    .local v1, "mResource":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x108036b

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3528
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v2

    .line 3531
    .local v2, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v7, v5, v2, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3535
    return-void
.end method

.method private startProfilingInfo()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x64

    .line 3163
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3164
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->showLatencyPanel()V

    .line 3169
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3170
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3172
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3173
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3174
    return-void

    .line 3166
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->hideLatencyPanel()V

    goto :goto_0
.end method

.method private stopPeerDiscovery()V
    .locals 3

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$7;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$7;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 898
    return-void
.end method

.method private stopProfilingInfo()V
    .locals 2

    .prologue
    .line 3179
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->hideLatencyPanel()V

    .line 3182
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mLatencyInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3183
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanWifiAp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3184
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDelayProfiling:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3187
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetLatencyInfo()V

    .line 3189
    return-void
.end method

.method private translateAsciiToKeyCode(I)I
    .locals 4
    .param p1, "ascii"    # I

    .prologue
    .line 2094
    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    .line 2095
    add-int/lit8 v0, p1, -0x29

    .line 2106
    :goto_0
    return v0

    .line 2096
    :cond_0
    const/16 v1, 0x41

    if-lt p1, v1, :cond_1

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_1

    .line 2097
    add-int/lit8 v0, p1, -0x24

    goto :goto_0

    .line 2099
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->translateSpecialCode(I)I

    move-result v0

    .line 2100
    .local v0, "newKeyCode":I
    if-lez v0, :cond_2

    .line 2101
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "special code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2104
    :cond_2
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translateAsciiToKeyCode: ascii is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private translateSpecialCode(I)I
    .locals 1
    .param p1, "ascii"    # I

    .prologue
    .line 2014
    const/4 v0, 0x0

    .line 2015
    .local v0, "newKeyCode":I
    sparse-switch p1, :sswitch_data_0

    .line 2090
    :goto_0
    return v0

    .line 2017
    :sswitch_0
    const/16 v0, 0x43

    .line 2018
    goto :goto_0

    .line 2020
    :sswitch_1
    const/16 v0, 0x42

    .line 2021
    goto :goto_0

    .line 2023
    :sswitch_2
    const/16 v0, 0x3b

    .line 2024
    goto :goto_0

    .line 2026
    :sswitch_3
    const/16 v0, 0x73

    .line 2027
    goto :goto_0

    .line 2029
    :sswitch_4
    const/16 v0, 0x3e

    .line 2030
    goto :goto_0

    .line 2032
    :sswitch_5
    const/16 v0, 0x42

    .line 2033
    goto :goto_0

    .line 2035
    :sswitch_6
    const/16 v0, 0x38

    .line 2036
    goto :goto_0

    .line 2038
    :sswitch_7
    const/16 v0, 0x37

    .line 2039
    goto :goto_0

    .line 2041
    :sswitch_8
    const/16 v0, 0x4c

    .line 2042
    goto :goto_0

    .line 2044
    :sswitch_9
    const/16 v0, 0x49

    .line 2045
    goto :goto_0

    .line 2047
    :sswitch_a
    const/16 v0, 0x5c

    .line 2048
    goto :goto_0

    .line 2050
    :sswitch_b
    const/16 v0, 0x5d

    .line 2051
    goto :goto_0

    .line 2053
    :sswitch_c
    const/16 v0, 0x13

    .line 2054
    goto :goto_0

    .line 2056
    :sswitch_d
    const/16 v0, 0x14

    .line 2057
    goto :goto_0

    .line 2059
    :sswitch_e
    const/16 v0, 0x16

    .line 2060
    goto :goto_0

    .line 2062
    :sswitch_f
    const/16 v0, 0x15

    .line 2063
    goto :goto_0

    .line 2065
    :sswitch_10
    const/16 v0, 0x6f

    .line 2066
    goto :goto_0

    .line 2068
    :sswitch_11
    const/16 v0, 0x47

    .line 2069
    goto :goto_0

    .line 2071
    :sswitch_12
    const/16 v0, 0x48

    .line 2072
    goto :goto_0

    .line 2074
    :sswitch_13
    const/16 v0, 0x44

    .line 2075
    goto :goto_0

    .line 2077
    :sswitch_14
    const/16 v0, 0x45

    .line 2078
    goto :goto_0

    .line 2080
    :sswitch_15
    const/16 v0, 0x46

    .line 2081
    goto :goto_0

    .line 2083
    :sswitch_16
    const/16 v0, 0x4a

    .line 2084
    goto :goto_0

    .line 2086
    :sswitch_17
    const/16 v0, 0x4b

    goto :goto_0

    .line 2015
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_5
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x14 -> :sswitch_3
        0x1b -> :sswitch_10
        0x20 -> :sswitch_4
        0x21 -> :sswitch_b
        0x22 -> :sswitch_a
        0x25 -> :sswitch_c
        0x26 -> :sswitch_d
        0x27 -> :sswitch_e
        0x28 -> :sswitch_f
        0xba -> :sswitch_16
        0xbb -> :sswitch_15
        0xbc -> :sswitch_7
        0xbd -> :sswitch_14
        0xbe -> :sswitch_6
        0xbf -> :sswitch_8
        0xc0 -> :sswitch_13
        0xdb -> :sswitch_11
        0xdc -> :sswitch_9
        0xdd -> :sswitch_12
        0xde -> :sswitch_17
    .end sparse-switch
.end method

.method private tryDiscoverPeers()V
    .locals 4

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$6;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 879
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 880
    return-void
.end method

.method private turnOffHdmi()V
    .locals 4

    .prologue
    .line 3614
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    if-eqz v1, :cond_0

    .line 3616
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mediatek/common/hdmi/IMtkHdmiManager;->enableHdmi(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3621
    :cond_0
    :goto_0
    return-void

    .line 3617
    :catch_0
    move-exception v0

    .line 3618
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hdmi manager RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unadvertiseDisplay()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1758
    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1759
    return-void
.end method

.method private updateChosenCapability(I)V
    .locals 9
    .param p1, "usingUIBC"    # I

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    .line 3101
    const-string v0, ""

    .line 3103
    .local v0, "capability":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-eqz v5, :cond_0

    .line 3105
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v4

    .line 3106
    .local v4, "usingPCMAudio":I
    if-ne v4, v7, :cond_1

    .line 3107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LPCM(2 ch),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3114
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v1

    .line 3115
    .local v1, "isCBPOnly":I
    if-ne v1, v7, :cond_2

    .line 3116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "H.264(CBP level 3.1),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3123
    :goto_1
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mResolution:I

    invoke-direct {p0, v5}, Lcom/android/server/display/WifiDisplayController;->getResolutionIndex(I)I

    move-result v2

    .line 3124
    .local v2, "resolutionIndex":I
    const/4 v5, 0x5

    if-ne v2, v5, :cond_3

    .line 3125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1280x720 30p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3135
    :goto_2
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v8}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v3

    .line 3136
    .local v3, "usingHDCP":I
    if-ne v3, v7, :cond_6

    .line 3137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "with HDCP,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3143
    :goto_3
    if-eqz p1, :cond_7

    .line 3144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "with UIBC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3152
    .end local v1    # "isCBPOnly":I
    .end local v2    # "resolutionIndex":I
    .end local v3    # "usingHDCP":I
    .end local v4    # "usingPCMAudio":I
    :cond_0
    :goto_4
    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateChosenCapability(), connected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", capability:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_display_chosen_capability"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3159
    return-void

    .line 3110
    .restart local v4    # "usingPCMAudio":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AAC(2 ch),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3119
    .restart local v1    # "isCBPOnly":I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "H.264(CHP level 4.1),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 3126
    .restart local v2    # "resolutionIndex":I
    :cond_3
    const/4 v5, 0x6

    if-ne v2, v5, :cond_4

    .line 3127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1280x720 60p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3128
    :cond_4
    if-ne v2, v8, :cond_5

    .line 3129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1920x1080 30p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3131
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "640x480 60p,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 3140
    .restart local v3    # "usingHDCP":I
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "without HDCP,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 3147
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "without UIBC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method

.method private updateConnection()V
    .locals 18

    .prologue
    .line 1073
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 1079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    if-ne v1, v3, :cond_2

    .line 1081
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1082
    .local v12, "localInterface":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v11, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1084
    .local v11, "localDeviceName":Ljava/lang/String;
    :goto_1
    const-string v1, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopped listening for RTSP connection on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from Wifi display : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    .line 1088
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    .line 1089
    const-string v1, "WifiDisplayController"

    const-string v3, "\tbefore dispose() ---> "

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    invoke-interface {v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnecting()V

    .line 1091
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v1}, Landroid/media/RemoteDisplay;->dispose()V

    .line 1092
    const-string v1, "WifiDisplayController"

    const-string v3, "\t<--- after dispose()"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1095
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1096
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    .line 1097
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 1100
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1106
    .end local v11    # "localDeviceName":Ljava/lang/String;
    .end local v12    # "localInterface":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_7

    .line 1470
    :cond_3
    :goto_2
    return-void

    .line 1081
    :cond_4
    const-string v12, "localhost"

    goto/16 :goto_0

    .line 1082
    .restart local v12    # "localInterface":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v11, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v11, "N/A"

    goto/16 :goto_1

    .line 1109
    .end local v12    # "localInterface":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v1, v3, :cond_8

    .line 1110
    const-string v1, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnecting from Wifi display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1112
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1113
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1115
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1117
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1118
    .local v14, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lcom/android/server/display/WifiDisplayController$12;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_2

    .line 1149
    .end local v14    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v1, :cond_3

    .line 1152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v1, v3, :cond_9

    .line 1153
    const-string v1, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling connection to Wifi display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1155
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1157
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1161
    .restart local v14    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lcom/android/server/display/WifiDisplayController$13;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_2

    .line 1197
    .end local v14    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v1, :cond_b

    .line 1198
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v1, :cond_a

    .line 1199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 1201
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    goto/16 :goto_2

    .line 1206
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v1, :cond_10

    .line 1207
    const-string v1, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting to Wifi display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1210
    new-instance v8, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v8}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1211
    .local v8, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    new-instance v17, Landroid/net/wifi/WpsInfo;

    invoke-direct/range {v17 .. v17}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 1212
    .local v17, "wps":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_c

    .line 1213
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    move-object/from16 v0, v17

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1222
    :goto_3
    move-object/from16 v0, v17

    iput-object v0, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 1223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1226
    const-string v1, "wfd.source.go_intent"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1229
    .local v9, "goIntent":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 1231
    const-string v1, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source go_intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v1, 0xf
 
    iput v1, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    .line 1234
    .local v2, "display":Landroid/hardware/display/WifiDisplay;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1237
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->setAutoChannelSelection()V

    .line 1240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1241
    .local v13, "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/android/server/display/WifiDisplayController$14;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v3, v8, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 1272
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z

    .line 1275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1276
    .restart local v14    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v15

    .line 1277
    .local v15, "port":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "127.0.0.1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1278
    .local v10, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1281
    const-string v1, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listening for RTSP connection on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from Wifi display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , Speed-Up rtsp setup, DRM Content isPlaying = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    new-instance v1, Lcom/android/server/display/WifiDisplayController$15;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v14}, Lcom/android/server/display/WifiDisplayController$15;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-static {v10, v1, v3}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)Landroid/media/RemoteDisplay;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1385
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v1, :cond_f

    const/16 v16, 0x78

    .line 1388
    .local v16, "rtspTimeout":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    move/from16 v0, v16

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 1214
    .end local v2    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v9    # "goIntent":Ljava/lang/String;
    .end local v10    # "iface":Ljava/lang/String;
    .end local v13    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v14    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v15    # "port":I
    .end local v16    # "rtspTimeout":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1215
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 1216
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1218
    const/4 v1, 0x2

    move-object/from16 v0, v17

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 1220
    :cond_e
    const/4 v1, 0x1

    move-object/from16 v0, v17

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_3

    .line 1385
    .restart local v2    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v9    # "goIntent":Ljava/lang/String;
    .restart local v10    # "iface":Ljava/lang/String;
    .restart local v13    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v14    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v15    # "port":I
    :cond_f
    const/16 v16, 0x4b

    goto :goto_4

    .line 1394
    .end local v2    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v8    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v9    # "goIntent":Ljava/lang/String;
    .end local v10    # "iface":Ljava/lang/String;
    .end local v13    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v14    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v15    # "port":I
    .end local v17    # "wps":Landroid/net/wifi/WpsInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-nez v1, :cond_3

    .line 1395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v7

    .line 1396
    .local v7, "addr":Ljava/net/Inet4Address;
    if-nez v7, :cond_3

    .line 1397
    const-string v1, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get local interface address for communicating with Wifi display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    goto/16 :goto_2
.end method

.method private updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 978
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 979
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 980
    sget-boolean v1, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 981
    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDesiredDevice: new information "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 985
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 987
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V

    .line 990
    :cond_1
    return-void
.end method

.method private updateIfHdcp(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 2119
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2120
    .local v0, "secure":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2121
    const-string v1, "wfd.hdcp"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    :goto_1
    return-void

    .line 2119
    .end local v0    # "secure":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2124
    .restart local v0    # "secure":Z
    :cond_1
    const-string v1, "wfd.hdcp"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateIfSinkConnected(Z)V
    .locals 5
    .param p1, "connected"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4604
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-ne v0, p1, :cond_1

    .line 4636
    :cond_0
    :goto_0
    return-void

    .line 4607
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 4620
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->blockNotificationList(Z)V

    .line 4623
    const-string v3, "WifiDisplayController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set session available as "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4624
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 4625
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4629
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLockSink:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 4630
    if-eqz p1, :cond_4

    .line 4631
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLockSink:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 4623
    goto :goto_1

    :cond_3
    move v1, v2

    .line 4624
    goto :goto_2

    .line 4633
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWakeLockSink:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateScanState()V
    .locals 3

    .prologue
    .line 821
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScanState(), mSinkEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_2

    .line 829
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-nez v0, :cond_0

    .line 831
    const-string v0, "WifiDisplayController"

    const-string v1, "Starting Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 833
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanStarted()V

    .line 834
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    goto :goto_0

    .line 837
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 844
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_0

    .line 845
    :cond_3
    const-string v0, "WifiDisplayController"

    const-string v1, "Stopping Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 847
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopPeerDiscovery()V

    .line 848
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V

    goto :goto_0
.end method

.method private updateScoreLevel(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    const/4 v1, 0x0

    .line 2670
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 2671
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-gez v0, :cond_0

    .line 2672
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2674
    :cond_0
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2700
    :goto_0
    return-void

    .line 2676
    :cond_1
    const/16 v0, 0x50

    if-lt p1, v0, :cond_3

    .line 2677
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-gez v0, :cond_2

    .line 2678
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2680
    :cond_2
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0

    .line 2682
    :cond_3
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_5

    .line 2683
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-lez v0, :cond_4

    .line 2684
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2686
    :cond_4
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0

    .line 2688
    :cond_5
    const/16 v0, 0xa

    if-lt p1, v0, :cond_7

    .line 2689
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-lez v0, :cond_6

    .line 2690
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2692
    :cond_6
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0

    .line 2695
    :cond_7
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    if-lez v0, :cond_8

    .line 2696
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2698
    :cond_8
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 486
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 487
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "wifi_display_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 489
    const-string v2, "wifi_display_certification_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    .line 492
    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 493
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v2, :cond_0

    .line 494
    const-string v2, "wifi_display_wps_config"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->loadDebugLevel()V

    .line 500
    const/4 v0, 0x0

    .line 506
    .local v0, "HDMIOn":Z
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-ne v3, v2, :cond_3

    if-ne v3, v0, :cond_3

    .line 507
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->dialogWfdHdmiConflict(I)V

    .line 514
    :goto_2
    return-void

    .end local v0    # "HDMIOn":Z
    :cond_1
    move v2, v4

    .line 487
    goto :goto_0

    :cond_2
    move v2, v4

    .line 489
    goto :goto_1

    .line 511
    .restart local v0    # "HDMIOn":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->enableWifiDisplay()V

    goto :goto_2
.end method

.method private updateSettingsHDMI()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2402
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2404
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 2405
    .local v0, "HDMIOn":Z
    const-string v4, "hdmi_enable_status"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 2408
    :goto_0
    if-ne v2, v0, :cond_0

    iget-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-ne v2, v4, :cond_0

    .line 2409
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->computeFeatureState()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 2410
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->dialogWfdHdmiConflict(I)V

    .line 2420
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 2405
    goto :goto_0

    .line 2413
    :cond_2
    sget-boolean v2, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 2414
    const-string v2, "WifiDisplayController"

    const-string v4, "HDMI on and WFD feature state isn\'t on --> turn off WifiDisplay directly"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_display_on"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private updateSignalLevel()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x5

    const/4 v7, 0x0

    .line 2554
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getAverageScore()I

    move-result v0

    .line 2557
    .local v0, "avarageScore":I
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->updateScoreLevel(I)V

    .line 2559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",L:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2562
    .local v4, "message":Ljava/lang/String;
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_7

    .line 2565
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_1

    .line 2566
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 2567
    const-string v5, "WifiDisplayController"

    const-string v6, "setWfdLevel():+2"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v11}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2571
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2574
    :cond_1
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    .line 2616
    :cond_2
    :goto_0
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    if-lez v5, :cond_3

    .line 2617
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2618
    :cond_3
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    if-ge v5, v8, :cond_4

    .line 2619
    iput v8, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2621
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2624
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleLevelChange()V

    .line 2626
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_10

    .line 2627
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v7}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v2

    .line 2628
    .local v2, "expectedBitRate":I
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v10}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v1

    .line 2629
    .local v1, "currentBitRate":I
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v11}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v3

    .line 2631
    .local v3, "fluencyRate":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",ER:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2632
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",CR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2634
    if-eq v3, v9, :cond_5

    .line 2635
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",FR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2638
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z

    if-eqz v5, :cond_6

    .line 2639
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2644
    :cond_6
    const-string v5, "WifiDisplayController"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    .end local v1    # "currentBitRate":I
    .end local v2    # "expectedBitRate":I
    .end local v3    # "fluencyRate":I
    :goto_1
    return-void

    .line 2576
    :cond_7
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_a

    .line 2579
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_9

    .line 2580
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 2581
    const-string v5, "WifiDisplayController"

    const-string v6, "setWfdLevel():+1"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    :cond_8
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v10}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2584
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2587
    :cond_9
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto/16 :goto_0

    .line 2590
    :cond_a
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, -0x6

    if-gt v5, v6, :cond_d

    .line 2593
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_c

    .line 2594
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_b

    .line 2595
    const-string v5, "WifiDisplayController"

    const-string v6, "setWfdLevel():-2"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    :cond_b
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2598
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2600
    :cond_c
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto/16 :goto_0

    .line 2602
    :cond_d
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    const/4 v6, -0x4

    if-gt v5, v6, :cond_2

    .line 2605
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v5, :cond_f

    .line 2606
    sget-boolean v5, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v5, :cond_e

    .line 2607
    const-string v5, "WifiDisplayController"

    const-string v6, "setWfdLevel():-1"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    :cond_e
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v5, v9}, Landroid/media/RemoteDisplay;->setWfdLevel(I)V

    .line 2610
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mLevel:I

    .line 2612
    :cond_f
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mScoreLevel:I

    goto/16 :goto_0

    .line 2648
    :cond_10
    const-string v5, "WifiDisplayController"

    const-string v6, "mRemoteDisplay is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateWfdEnableState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 628
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWfdEnableState(), mWifiDisplayOnSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWifiP2pEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-eqz v0, :cond_1

    .line 632
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    .line 636
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-nez v0, :cond_0

    .line 637
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 639
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 659
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 660
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    .line 661
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    .line 662
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 663
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 667
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->dismissDialog()V

    goto :goto_0
.end method

.method private updateWfdInfo(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 684
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWfdInfo(), enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mWfdEnabling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetWfdInfo()V

    .line 690
    if-nez p1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 693
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$3;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$3;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 787
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 713
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    .line 719
    :goto_1
    const-string v0, "WifiDisplayController"

    const-string v1, "Set session available as true"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 721
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/16 v1, 0x1c44

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    .line 722
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    .line 725
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setUibcSupported(Z)V

    .line 741
    :goto_2
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDCP Tx support? false, our wfd info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$4;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$4;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    goto :goto_1

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setUibcSupported(Z)V

    goto :goto_2

    .line 781
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private updateWfdStatFile(I)V
    .locals 0
    .param p1, "wfd_stat"    # I

    .prologue
    .line 2443
    return-void
.end method

.method private updateWifiChannelId(ZLandroid/content/Intent;)V
    .locals 5
    .param p1, "connected"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3240
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_0

    .line 3241
    const-string v2, "p2pGroupInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 3244
    .local v1, "wifiP2pGroup":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v0

    .line 3246
    .local v0, "freq":I
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->getFreqId(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    .line 3248
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWifiChannelId(), freq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    .end local v0    # "freq":I
    .end local v1    # "wifiP2pGroup":Landroid/net/wifi/p2p/WifiP2pGroup;
    :goto_0
    return-void

    .line 3252
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    .line 3254
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWifiChannelId(), id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateWifiPowerSavingMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 4129
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiPowerSaving:Z

    if-eq v0, p1, :cond_0

    .line 4130
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiPowerSaving:Z

    .line 4131
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerSavingMode():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiPowerSaving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setPowerSavingMode(Z)V

    .line 4134
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiDisplayOnSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiP2pEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWfdEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWfdEnabling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNetworkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScanRequested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDiscoverPeersInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDesiredDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDisconnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCancelingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectedDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectionRetriesLeft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteDisplayInterface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemoteDisplayConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplaySurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplayWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplayHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdvertisedDisplayFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBackupShowTouchVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mBackupShowTouchVal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFast_NeedFastRtsp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mFast_NeedFastRtsp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFast_DesiredMac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mFast_DesiredMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsNeedRotate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsNeedRotate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsConnected_OtherP2p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsConnecting_P2p_Rtsp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnecting_P2p_Rtsp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsWFDConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDRMContent_Mediaplayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayerID_Mediaplayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAvailableWifiDisplayPeers: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 552
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    return-void
.end method

.method public getIfSinkEnabled()Z
    .locals 4

    .prologue
    .line 4204
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    return v0
.end method

.method public requestConnect(Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 580
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 585
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-eqz v2, :cond_1

    .line 586
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 604
    :cond_0
    return-void

    .line 589
    :cond_1
    sget-boolean v2, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 590
    const-string v2, "WifiDisplayController"

    const-string v3, "mAvailableWifiDisplayPeers dump:"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 594
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    sget-boolean v2, Lcom/android/server/display/WifiDisplayController;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 595
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_4
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 598
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0
.end method

.method public requestDisconnect()V
    .locals 3

    .prologue
    .line 619
    const-string v0, "WifiDisplayController"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 624
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->resetReconnectVariable()V

    .line 625
    return-void
.end method

.method public requestEnableSink(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    .line 4210
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", option = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", WfdEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    if-eqz v0, :cond_1

    .line 4236
    :cond_0
    :goto_0
    return-void

    .line 4218
    :cond_1
    if-ne p1, v4, :cond_2

    .line 4219
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestStopScan()V

    .line 4222
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    .line 4225
    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayController;->updateWfdInfo(Z)V

    .line 4228
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-nez v0, :cond_3

    .line 4229
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestStartScan()V

    goto :goto_0

    .line 4233
    :cond_3
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    goto :goto_0
.end method

.method public requestPause()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    .line 610
    :cond_0
    return-void
.end method

.method public requestResume()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    .line 616
    :cond_0
    return-void
.end method

.method public requestStartScan()V
    .locals 4

    .prologue
    .line 557
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSinkEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z

    if-eqz v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-nez v0, :cond_0

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 567
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    goto :goto_0
.end method

.method public requestStopScan()V
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 574
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 577
    :cond_0
    return-void
.end method

.method public requestSuspendDisplay(ZLandroid/view/Surface;)V
    .locals 4
    .param p1, "suspend"    # Z
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 4289
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",suspend = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4290
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkSurface:Landroid/view/Surface;

    .line 4292
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4293
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 4294
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteDisplay;->suspendDisplay(ZLandroid/view/Surface;)V

    .line 4297
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->blockNotificationList(Z)V

    .line 4303
    :goto_1
    return-void

    .line 4297
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4300
    :cond_2
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State is wrong !!!, SinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestWaitConnection(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4239
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mSinkState:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->isSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4242
    const-string v0, "WifiDisplayController"

    const-string v1, "State is wrong! Ignore the request !"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4286
    :goto_0
    return-void

    .line 4246
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnected_OtherP2p:Z

    if-eqz v0, :cond_1

    .line 4247
    const-string v0, "WifiDisplayController"

    const-string v1, "OtherP2P is connected! Show dialog!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->notifyDisplayConnecting()V

    .line 4250
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    goto :goto_0

    .line 4254
    :cond_1
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mSinkSurface:Landroid/view/Surface;

    .line 4255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z

    .line 4257
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$59;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$59;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 4276
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 4277
    sget-object v0, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4279
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$60;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$60;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendUibcInputEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 4308
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 4309
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, p1}, Landroid/media/RemoteDisplay;->sendUibcEvent(Ljava/lang/String;)V

    .line 4312
    :cond_0
    return-void
.end method
