.class Landroid/net/wifi/WifiConfigStore;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfigStore$1;,
        Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;,
        Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DNS_KEY:Ljava/lang/String; = "dns"

.field private static final EOS:Ljava/lang/String; = "eos"

.field private static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field private static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final IPCONFIG_FILE_VERSION:I = 0x2

.field private static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field private static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field private static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field private static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field private static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field private static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final VDBG:Z

.field private static final ipConfigFile:Ljava/lang/String;


# instance fields
.field private mConfiguredNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisconnectNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileObserver:Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLastPriority:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mNetworkIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

.field private mWifiAutoConnController:Landroid/net/wifi/WifiAutoConnController;

.field private mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "wn"    # Landroid/net/wifi/WifiNative;

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    .line 169
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    .line 177
    iput-object p1, p0, Landroid/net/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 184
    iput-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    .line 185
    iput-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mFileObserver:Landroid/net/wifi/WifiConfigStore$WpaConfigFileObserver;

    .line 187
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;Landroid/os/Handler;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "wn"    # Landroid/net/wifi/WifiNative;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiConfigStore;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;)V

    new-instance v0, Landroid/net/wifi/WifiAutoConnController;

    invoke-direct {v0, p0, p1, p3}, Landroid/net/wifi/WifiAutoConnController;-><init>(Landroid/net/wifi/WifiConfigStore;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiAutoConnController:Landroid/net/wifi/WifiAutoConnController;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 121
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method private addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .locals 29
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1126
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    .line 1127
    .local v19, "netId":I
    const/16 v20, 0x0

    .line 1129
    .local v20, "newNetwork":Z
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static/range {p1 .. p1}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 1131
    .local v23, "savedNetId":Ljava/lang/Integer;
    if-eqz v23, :cond_2

    .line 1132
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1143
    .end local v23    # "savedNetId":Ljava/lang/Integer;
    :cond_0
    const/16 v24, 0x1

    .line 1147
    .local v24, "updateFailed":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string v27, "bssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 1152
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed to set BSSID: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1414
    :goto_0
    if-eqz v24, :cond_1f

    .line 1415
    if-eqz v20, :cond_1

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->removeNetwork(I)Z

    .line 1417
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Failed to set a network variable, removed network: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1419
    :cond_1
    new-instance v22, Landroid/net/wifi/NetworkUpdateResult;

    const/16 v26, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    .line 1445
    .end local v24    # "updateFailed":Z
    :goto_1
    return-object v22

    .line 1134
    .restart local v23    # "savedNetId":Ljava/lang/Integer;
    :cond_2
    const/16 v20, 0x1

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiNative;->addNetwork()I

    move-result v19

    .line 1136
    if-gez v19, :cond_0

    .line 1137
    const-string v26, "Failed to add a network!"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1138
    new-instance v22, Landroid/net/wifi/NetworkUpdateResult;

    const/16 v26, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    goto :goto_1

    .line 1156
    .end local v23    # "savedNetId":Ljava/lang/Integer;
    .restart local v24    # "updateFailed":Z
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string/jumbo v27, "ssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 1161
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed to set SSID: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1165
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1167
    .local v6, "allowedKeyManagementString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/BitSet;->cardinality()I

    move-result v26

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string v27, "key_mgmt"

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 1172
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed to set key_mgmt: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1177
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1179
    .local v8, "allowedProtocolsString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/BitSet;->cardinality()I

    move-result v26

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string/jumbo v27, "proto"

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v8}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 1184
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed to set proto: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1189
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1191
    .local v4, "allowedAuthAlgorithmsString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/BitSet;->cardinality()I

    move-result v26

    if-eqz v26, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string v27, "auth_alg"

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v4}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_7

    .line 1196
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed to set auth_alg: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1201
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1204
    .local v7, "allowedPairwiseCiphersString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/BitSet;->cardinality()I

    move-result v26

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string/jumbo v27, "pairwise"

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 1209
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed to set pairwise: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1214
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1216
    .local v5, "allowedGroupCiphersString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/BitSet;->cardinality()I

    move-result v26

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string v27, "group"

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v5}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 1221
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed to set group: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1228
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "*"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string/jumbo v27, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_a

    .line 1233
    const-string v26, "failed to set psk"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1237
    :cond_a
    const/4 v13, 0x0

    .line 1238
    .local v13, "hasSetKey":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    .line 1239
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v14, v0, :cond_d

    .line 1242
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v26, v26, v14

    if-eqz v26, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v26, v26, v14

    const-string v27, "*"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_c

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v27, v27, v14

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v28, v0

    aget-object v28, v28, v14

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 1247
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed to set wep_key"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v27, v0

    aget-object v27, v27, v14

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1250
    :cond_b
    const/4 v13, 0x1

    .line 1239
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1255
    .end local v14    # "i":I
    :cond_d
    if-eqz v13, :cond_e

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string/jumbo v27, "wep_tx_keyidx"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 1260
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed to set wep_tx_keyidx: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1265
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v26, v0

    if-ltz v26, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string/jumbo v27, "priority"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_f

    .line 1269
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": failed to set priority: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1274
    :cond_f
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v27, v0

    const-string/jumbo v28, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v26, v0

    if-eqz v26, :cond_10

    const/16 v26, 0x1

    :goto_3
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move/from16 v1, v19

    move-object/from16 v2, v28

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_11

    .line 1278
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": failed to set hiddenSSID: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1274
    :cond_10
    const/16 v26, 0x0

    goto :goto_3

    .line 1283
    :cond_11
    const/16 v16, 0x0

    .line 1284
    .local v16, "isWapi":Z
    const/16 v21, 0x0

    .local v21, "p":I
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/BitSet;->size()I

    move-result v26

    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_13

    .line 1285
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 1286
    const/16 v26, 0x2

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    .line 1287
    const-string v26, "WifiConfigStore"

    const-string/jumbo v27, "this is WAPI"

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/16 v16, 0x1

    .line 1284
    :cond_12
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1292
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v26, v0

    if-eqz v26, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 1296
    :cond_14
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1298
    .local v11, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->needsKeyStore()Z

    move-result v26

    if-eqz v26, :cond_16

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v26

    sget-object v27, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_15

    .line 1306
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": key store is locked"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1315
    :cond_15
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 1316
    .local v9, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v18

    .line 1318
    .local v18, "keyId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->installKeys(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_16

    .line 1319
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": failed to install keys"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1322
    .end local v9    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v18    # "keyId":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1323
    .local v10, "e":Ljava/lang/IllegalStateException;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " invalid config for key installation"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1328
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :cond_16
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v12

    .line 1329
    .local v12, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_18

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1330
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1331
    .local v25, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_17

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->removeKeys(Landroid/security/KeyStore;)V

    .line 1336
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": failed to set "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1345
    .end local v11    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v12    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string v27, "imsi"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_19

    .line 1350
    const-string v26, "WifiConfigStore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to set imsi: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1353
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string/jumbo v27, "sim_slot"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1a

    .line 1358
    const-string v26, "WifiConfigStore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to set simSlot: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1373
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string/jumbo v27, "pac_file"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1b

    .line 1378
    const-string v26, "WifiConfigStore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to set pacFile: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1381
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string/jumbo v27, "phase1"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1c

    .line 1386
    const-string v26, "WifiConfigStore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to set phase1: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1391
    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ieee80211w:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string v27, "ieee80211w"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ieee80211w:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1d

    .line 1397
    const-string v26, "WifiConfigStore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to set ieee80211w: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ieee80211w:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1401
    :cond_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ocsp:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v26, v0

    const-string/jumbo v27, "ocsp"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ocsp:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1e

    .line 1407
    const-string v26, "WifiConfigStore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to set ocsp: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ocsp:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1411
    :cond_1e
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1429
    .end local v4    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    .end local v5    # "allowedGroupCiphersString":Ljava/lang/String;
    .end local v6    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v7    # "allowedPairwiseCiphersString":Ljava/lang/String;
    .end local v8    # "allowedProtocolsString":Ljava/lang/String;
    .end local v13    # "hasSetKey":Z
    .end local v16    # "isWapi":Z
    .end local v21    # "p":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 1430
    .restart local v9    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_20

    .line 1431
    new-instance v9, Landroid/net/wifi/WifiConfiguration;

    .end local v9    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1432
    .restart local v9    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v26, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v26

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1433
    sget-object v26, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v26

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1434
    move/from16 v0, v19

    iput v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1437
    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static {v9}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v22

    .line 1443
    .local v22, "result":Landroid/net/wifi/NetworkUpdateResult;
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    .line 1444
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/NetworkUpdateResult;->setNetworkId(I)V

    goto/16 :goto_1
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1844
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1

    .line 1846
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1848
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1849
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-eqz v1, :cond_3

    .line 1850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1852
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyIpSettingsFromConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/LinkProperties;
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1551
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    .line 1552
    .local v3, "linkProperties":Landroid/net/LinkProperties;
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1553
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 1554
    .local v2, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_0

    .line 1556
    .end local v2    # "linkAddr":Landroid/net/LinkAddress;
    :cond_0
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 1557
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_1

    .line 1559
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_1
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1560
    .local v0, "dns":Ljava/net/InetAddress;
    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_2

    .line 1562
    .end local v0    # "dns":Ljava/net/InetAddress;
    :cond_2
    return-object v3
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1887
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1890
    :cond_0
    return-void
.end method

.method private localLog(Ljava/lang/String;I)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 1893
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-nez v1, :cond_0

    .line 1907
    :goto_0
    return-void

    .line 1898
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 1899
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1900
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1902
    if-eqz v0, :cond_1

    .line 1903
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1900
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1905
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1883
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1879
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    return-void
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 1824
    array-length v1, p2

    .line 1826
    .local v1, "size":I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1828
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1829
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1837
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1828
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1835
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to look-up a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1837
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "set"    # Ljava/util/BitSet;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 1804
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1805
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 1809
    .local v1, "nextSetBit":I
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    .line 1811
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mWifiAutoConnController:Landroid/net/wifi/WifiAutoConnController;
 
    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiAutoConnController;->selectNetwork(I)V

    if-eq v1, v2, :cond_0

    .line 1812
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1816
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 1817
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1820
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private markAllNetworksDisabled()V
    .locals 1

    .prologue
    .line 789
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 790
    return-void
.end method

.method private markAllNetworksDisabledExcept(I)V
    .locals 4
    .param p1, "netId"    # I

    .prologue
    const/4 v3, 0x1

    .line 778
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 779
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p1, :cond_0

    .line 780
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v3, :cond_0

    .line 781
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 782
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_0

    .line 786
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method private readIpAndProxyConfigurations()V
    .locals 24

    .prologue
    .line 980
    const/4 v8, 0x0

    .line 982
    .local v8, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v21, Ljava/io/BufferedInputStream;

    new-instance v22, Ljava/io/FileInputStream;

    sget-object v23, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-direct/range {v22 .. v23}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v21 .. v22}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 985
    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v9, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    .line 986
    .local v20, "version":I
    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 987
    const-string v21, "Bad version on IP configuration file, ignore read"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1109
    if-eqz v9, :cond_0

    .line 1111
    :try_start_2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v8, v9

    .line 1115
    .end local v9    # "in":Ljava/io/DataInputStream;
    .end local v20    # "version":I
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .line 1044
    .end local v8    # "in":Ljava/io/DataInputStream;
    .local v5, "exclusionList":Ljava/lang/String;
    .local v7, "id":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .local v10, "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .local v11, "key":Ljava/lang/String;
    .local v13, "linkProperties":Landroid/net/LinkProperties;
    .local v14, "pacFileUrl":Ljava/lang/String;
    .local v15, "proxyHost":Ljava/lang/String;
    .local v17, "proxyPort":I
    .local v19, "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v20    # "version":I
    :cond_2
    :try_start_3
    const-string v21, "eos"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v21

    if-eqz v21, :cond_11

    .line 1054
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v7, v0, :cond_13

    .line 1055
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1058
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v2, :cond_12

    .line 1059
    const-string v21, "configuration found for missing network, ignored"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 992
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "linkProperties":Landroid/net/LinkProperties;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :cond_3
    :goto_2
    const/4 v7, -0x1

    .line 994
    .restart local v7    # "id":I
    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 995
    .restart local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    sget-object v19, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 996
    .restart local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    new-instance v13, Landroid/net/LinkProperties;

    invoke-direct {v13}, Landroid/net/LinkProperties;-><init>()V

    .line 997
    .restart local v13    # "linkProperties":Landroid/net/LinkProperties;
    const/4 v15, 0x0

    .line 998
    .restart local v15    # "proxyHost":Ljava/lang/String;
    const/4 v14, 0x0

    .line 999
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    const/16 v17, -0x1

    .line 1000
    .restart local v17    # "proxyPort":I
    const/4 v5, 0x0

    .line 1004
    .restart local v5    # "exclusionList":Ljava/lang/String;
    :goto_3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    .line 1006
    .restart local v11    # "key":Ljava/lang/String;
    :try_start_5
    const-string v21, "id"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1007
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    goto :goto_3

    .line 1008
    :cond_4
    const-string v21, "ipAssignment"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1009
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-result-object v10

    goto :goto_3

    .line 1010
    :cond_5
    const-string v21, "linkAddress"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1011
    new-instance v12, Landroid/net/LinkAddress;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1013
    .local v12, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v13, v12}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1049
    .end local v12    # "linkAddr":Landroid/net/LinkAddress;
    :catch_0
    move-exception v4

    .line 1050
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ignore invalid address while reading"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 1105
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "linkProperties":Landroid/net/LinkProperties;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v20    # "version":I
    :catch_1
    move-exception v21

    move-object v8, v9

    .line 1109
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :goto_4
    if-eqz v8, :cond_1

    .line 1111
    :try_start_7
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 1112
    :catch_2
    move-exception v21

    goto/16 :goto_1

    .line 1014
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "exclusionList":Ljava/lang/String;
    .restart local v7    # "id":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v13    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    .restart local v15    # "proxyHost":Ljava/lang/String;
    .restart local v17    # "proxyPort":I
    .restart local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v20    # "version":I
    :cond_6
    :try_start_8
    const-string v21, "gateway"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1015
    const/4 v3, 0x0

    .line 1016
    .local v3, "dest":Landroid/net/LinkAddress;
    const/4 v6, 0x0

    .line 1017
    .local v6, "gateway":Ljava/net/InetAddress;
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1019
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 1030
    :cond_7
    :goto_5
    new-instance v21, Landroid/net/RouteInfo;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 1106
    .end local v3    # "dest":Landroid/net/LinkAddress;
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v6    # "gateway":Ljava/net/InetAddress;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "linkProperties":Landroid/net/LinkProperties;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v20    # "version":I
    :catch_3
    move-exception v4

    move-object v8, v9

    .line 1107
    .end local v9    # "in":Ljava/io/DataInputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :goto_6
    :try_start_9
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error parsing configuration"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1109
    if-eqz v8, :cond_1

    .line 1111
    :try_start_a
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_1

    .line 1112
    :catch_4
    move-exception v21

    goto/16 :goto_1

    .line 1021
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "dest":Landroid/net/LinkAddress;
    .restart local v5    # "exclusionList":Ljava/lang/String;
    .restart local v6    # "gateway":Ljava/net/InetAddress;
    .restart local v7    # "id":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v13    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    .restart local v15    # "proxyHost":Ljava/lang/String;
    .restart local v17    # "proxyPort":I
    .restart local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v20    # "version":I
    :cond_8
    :try_start_b
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 1022
    new-instance v3, Landroid/net/LinkAddress;

    .end local v3    # "dest":Landroid/net/LinkAddress;
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1026
    .restart local v3    # "dest":Landroid/net/LinkAddress;
    :cond_9
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 1027
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_5

    .line 1031
    .end local v3    # "dest":Landroid/net/LinkAddress;
    .end local v6    # "gateway":Ljava/net/InetAddress;
    :cond_a
    const-string v21, "dns"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1032
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 1109
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "linkProperties":Landroid/net/LinkProperties;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .end local v20    # "version":I
    :catchall_0
    move-exception v21

    move-object v8, v9

    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :goto_7
    if-eqz v8, :cond_b

    .line 1111
    :try_start_c
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 1112
    :cond_b
    :goto_8
    throw v21

    .line 1034
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "exclusionList":Ljava/lang/String;
    .restart local v7    # "id":I
    .restart local v9    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v13    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v14    # "pacFileUrl":Ljava/lang/String;
    .restart local v15    # "proxyHost":Ljava/lang/String;
    .restart local v17    # "proxyPort":I
    .restart local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .restart local v20    # "version":I
    :cond_c
    :try_start_d
    const-string/jumbo v21, "proxySettings"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 1035
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-result-object v19

    goto/16 :goto_3

    .line 1036
    :cond_d
    const-string/jumbo v21, "proxyHost"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 1037
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 1038
    :cond_e
    const-string/jumbo v21, "proxyPort"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 1039
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    goto/16 :goto_3

    .line 1040
    :cond_f
    const-string/jumbo v21, "proxyPac"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1041
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    .line 1042
    :cond_10
    const-string v21, "exclusionList"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1043
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 1047
    :cond_11
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ignore unknown key "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "while reading"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    .line 1061
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_12
    :try_start_e
    iput-object v13, v2, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1062
    sget-object v21, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 1072
    const-string v21, "Ignore invalid ip assignment while reading"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1076
    :goto_9
    sget-object v21, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_1

    .line 1097
    const-string v21, "Ignore invalid proxy settings while reading"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1065
    :pswitch_0
    iput-object v10, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_9

    .line 1068
    :pswitch_1
    const-string v21, "BUG: Found UNASSIGNED IP on file, use DHCP"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1069
    sget-object v21, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v21

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_9

    .line 1078
    :pswitch_2
    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1079
    new-instance v18, Landroid/net/ProxyProperties;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v15, v1, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1081
    .local v18, "proxyProperties":Landroid/net/ProxyProperties;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_2

    .line 1084
    .end local v18    # "proxyProperties":Landroid/net/ProxyProperties;
    :pswitch_3
    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1085
    new-instance v16, Landroid/net/ProxyProperties;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;)V

    .line 1087
    .local v16, "proxyPacProperties":Landroid/net/ProxyProperties;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_2

    .line 1090
    .end local v16    # "proxyPacProperties":Landroid/net/ProxyProperties;
    :pswitch_4
    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto/16 :goto_2

    .line 1093
    :pswitch_5
    const-string v21, "BUG: Found UNASSIGNED proxy on file, use NONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1094
    sget-object v21, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v21

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto/16 :goto_2

    .line 1102
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_13
    const-string v21, "Missing id while parsing configuration"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 1112
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v10    # "ipAssignment":Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "linkProperties":Landroid/net/LinkProperties;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    .end local v15    # "proxyHost":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .end local v19    # "proxySettings":Landroid/net/wifi/WifiConfiguration$ProxySettings;
    :catch_5
    move-exception v21

    goto/16 :goto_0

    .end local v9    # "in":Ljava/io/DataInputStream;
    .end local v20    # "version":I
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v22

    goto/16 :goto_8

    .line 1109
    :catchall_1
    move-exception v21

    goto/16 :goto_7

    .line 1106
    :catch_7
    move-exception v4

    goto/16 :goto_6

    .line 1105
    :catch_8
    move-exception v21

    goto/16 :goto_4

    .line 1062
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1076
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1573
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1574
    .local v7, "netId":I
    if-gez v7, :cond_0

    .line 1788
    :goto_0
    return-void

    .line 1584
    :cond_0
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "ssid"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1585
    .local v10, "value":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1586
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x22

    if-eq v11, v12, :cond_4

    .line 1587
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1597
    :goto_1
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v12, "bssid"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1598
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1599
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1604
    :goto_2
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "priority"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1605
    const/4 v11, -0x1

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1606
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1608
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1613
    :cond_1
    :goto_3
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "scan_ssid"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1614
    const/4 v11, 0x0

    iput-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1615
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1617
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1622
    :cond_2
    :goto_5
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "wep_tx_keyidx"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1623
    const/4 v11, -0x1

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1624
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1626
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1631
    :cond_3
    :goto_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    const/4 v11, 0x4

    if-ge v2, v11, :cond_9

    .line 1632
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    sget-object v12, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1634
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1635
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v10, v11, v2

    .line 1631
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1591
    .end local v2    # "i":I
    :cond_4
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 1594
    :cond_5
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 1601
    :cond_6
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_2

    .line 1617
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 1637
    .restart local v2    # "i":I
    :cond_8
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v11, v2

    goto :goto_8

    .line 1641
    :cond_9
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "psk"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1642
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1643
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1648
    :goto_9
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v13, "proto"

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1650
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 1651
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1652
    .local v9, "vals":[Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_a
    if-ge v3, v6, :cond_c

    aget-object v8, v0, v3

    .line 1653
    .local v8, "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1655
    .local v4, "index":I
    if-ltz v4, :cond_a

    .line 1656
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 1652
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1645
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_b
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_9

    .line 1661
    :cond_c
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "key_mgmt"

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1663
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 1664
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1665
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_b
    if-ge v3, v6, :cond_e

    aget-object v8, v0, v3

    .line 1666
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1668
    .restart local v4    # "index":I
    if-ltz v4, :cond_d

    .line 1669
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 1665
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1674
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_e
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "auth_alg"

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1676
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 1677
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1678
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_c
    if-ge v3, v6, :cond_10

    aget-object v8, v0, v3

    .line 1679
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1681
    .restart local v4    # "index":I
    if-ltz v4, :cond_f

    .line 1682
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 1678
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1687
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_10
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string/jumbo v13, "pairwise"

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1689
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 1690
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1691
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_d
    if-ge v3, v6, :cond_12

    aget-object v8, v0, v3

    .line 1692
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1694
    .restart local v4    # "index":I
    if-ltz v4, :cond_11

    .line 1695
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 1691
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1700
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_12
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "group"

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1702
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 1703
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1704
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_e
    if-ge v3, v6, :cond_14

    aget-object v8, v0, v3

    .line 1705
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Landroid/net/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1707
    .restart local v4    # "index":I
    if-ltz v4, :cond_13

    .line 1708
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 1704
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1713
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_14
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v11, :cond_15

    .line 1714
    new-instance v11, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v11}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1716
    :cond_15
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v1

    .line 1717
    .local v1, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/net/wifi/WifiEnterpriseConfig;->getSupplicantKeys()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_f
    if-ge v3, v6, :cond_17

    aget-object v5, v0, v3

    .line 1718
    .local v5, "key":Ljava/lang/String;
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v11, v7, v5}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1719
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 1720
    invoke-direct {p0, v10}, Landroid/net/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1722
    :cond_16
    const-string v11, "NULL"

    invoke-virtual {v1, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 1726
    .end local v5    # "key":Ljava/lang/String;
    :cond_17
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v12, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v11, v12, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->migrateOldEapTlsNative(Landroid/net/wifi/WifiNative;I)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 1727
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    .line 1730
    :cond_18
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v12, p0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->migrateCerts(Landroid/security/KeyStore;)V

    .line 1731
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v12, p0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->initializeSoftwareKeystoreFlag(Landroid/security/KeyStore;)V

    .line 1734
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v12, "imsi"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1735
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_19

    .line 1736
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    .line 1741
    :goto_11
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "sim_slot"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1742
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1a

    .line 1743
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 1758
    :goto_12
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "pac_file"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1759
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1b

    .line 1760
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    .line 1765
    :goto_13
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "phase1"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1766
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    .line 1767
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    .line 1773
    :goto_14
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v12, "ieee80211w"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1774
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1d

    .line 1775
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->ieee80211w:Ljava/lang/String;

    .line 1780
    :goto_15
    iget-object v11, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v12, "ocsp"

    invoke-virtual {v11, v7, v12}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1781
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1e

    .line 1782
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->ocsp:Ljava/lang/String;

    goto/16 :goto_0

    .line 1738
    :cond_19
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    goto :goto_11

    .line 1745
    :cond_1a
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    goto :goto_12

    .line 1762
    :cond_1b
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    goto :goto_13

    .line 1769
    :cond_1c
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    goto :goto_14

    .line 1777
    :cond_1d
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->ieee80211w:Ljava/lang/String;

    goto :goto_15

    .line 1784
    :cond_1e
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->ocsp:Ljava/lang/String;

    goto/16 :goto_0

    .line 1627
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v11

    goto/16 :goto_6

    .line 1618
    :catch_1
    move-exception v11

    goto/16 :goto_5

    .line 1609
    :catch_2
    move-exception v11

    goto/16 :goto_3
.end method

.method private removeConfigAndSendBroadcastIfNeeded(I)V
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 424
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 425
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 427
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->removeKeys(Landroid/security/KeyStore;)V

    .line 430
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 434
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 436
    :cond_1
    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1791
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1792
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1794
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1796
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    .prologue
    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 681
    const-string/jumbo v1, "multipleChanges"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 683
    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    .line 667
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 669
    const-string/jumbo v1, "multipleChanges"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 670
    const-string/jumbo v1, "wifiConfiguration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 671
    const-string v1, "changeReason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 673
    return-void
.end method

.method private writeIpAndProxyConfigurations()V
    .locals 4

    .prologue
    .line 815
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 817
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 820
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-static {v2}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->write(Ljava/util/List;)V

    .line 821
    return-void
.end method

.method private writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .locals 19
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1452
    const/4 v8, 0x0

    .line 1453
    .local v8, "ipChanged":Z
    const/4 v15, 0x0

    .line 1454
    .local v15, "proxyChanged":Z
    const/4 v10, 0x0

    .line 1456
    .local v10, "linkProperties":Landroid/net/LinkProperties;
    sget-object v17, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 1491
    const-string v17, "Ignore invalid ip assignment during write"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1495
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v17, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_1

    .line 1516
    const-string v17, "Ignore invalid proxy configuration during write"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1520
    :cond_1
    :goto_1
    :pswitch_1
    if-nez v8, :cond_f

    .line 1521
    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/WifiConfigStore;->copyIpSettingsFromConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/LinkProperties;

    move-result-object v10

    .line 1530
    :goto_2
    if-nez v15, :cond_10

    .line 1531
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1541
    :cond_2
    :goto_3
    if-nez v8, :cond_3

    if-eqz v15, :cond_4

    .line 1542
    :cond_3
    move-object/from16 v0, p1

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1543
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 1544
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1547
    :cond_4
    new-instance v17, Landroid/net/wifi/NetworkUpdateResult;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v15}, Landroid/net/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object v17

    .line 1458
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v5

    .line 1460
    .local v5, "currentLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v13

    .line 1462
    .local v13, "newLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    .line 1463
    .local v3, "currentDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    .line 1464
    .local v11, "newDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    .line 1465
    .local v6, "currentRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v14

    .line 1467
    .local v14, "newRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-interface {v5, v13}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_9

    :cond_5
    const/4 v9, 0x1

    .line 1470
    .local v9, "linkAddressesDiffer":Z
    :goto_4
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    invoke-interface {v3, v11}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_a

    :cond_6
    const/4 v7, 0x1

    .line 1472
    .local v7, "dnsesDiffer":Z
    :goto_5
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    invoke-interface {v6, v14}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_b

    :cond_7
    const/16 v16, 0x1

    .line 1475
    .local v16, "routesDiffer":Z
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    if-nez v9, :cond_8

    if-nez v7, :cond_8

    if-eqz v16, :cond_0

    .line 1479
    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1467
    .end local v7    # "dnsesDiffer":Z
    .end local v9    # "linkAddressesDiffer":Z
    .end local v16    # "routesDiffer":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 1470
    .restart local v9    # "linkAddressesDiffer":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .line 1472
    .restart local v7    # "dnsesDiffer":Z
    :cond_b
    const/16 v16, 0x0

    goto :goto_6

    .line 1483
    .end local v3    # "currentDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v5    # "currentLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v6    # "currentRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    .end local v7    # "dnsesDiffer":Z
    .end local v9    # "linkAddressesDiffer":Z
    .end local v11    # "newDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v13    # "newLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v14    # "newRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 1484
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1498
    :pswitch_4
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v12

    .line 1499
    .local v12, "newHttpProxy":Landroid/net/ProxyProperties;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 1501
    .local v4, "currentHttpProxy":Landroid/net/ProxyProperties;
    if-eqz v12, :cond_d

    .line 1502
    invoke-virtual {v12, v4}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    const/4 v15, 0x1

    :goto_7
    goto/16 :goto_1

    :cond_c
    const/4 v15, 0x0

    goto :goto_7

    .line 1504
    :cond_d
    if-eqz v4, :cond_e

    const/4 v15, 0x1

    .line 1506
    :goto_8
    goto/16 :goto_1

    .line 1504
    :cond_e
    const/4 v15, 0x0

    goto :goto_8

    .line 1508
    .end local v4    # "currentHttpProxy":Landroid/net/ProxyProperties;
    .end local v12    # "newHttpProxy":Landroid/net/ProxyProperties;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 1509
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 1523
    :cond_f
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1524
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->copyIpSettingsFromConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/LinkProperties;

    move-result-object v10

    .line 1525
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IP config changed SSID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " linkProperties: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1533
    :cond_10
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 1534
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1535
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "proxy changed SSID = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 1537
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " proxyProperties: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 1495
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addDisconnectNetwork(I)V
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 1929
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    monitor-enter v1

    .line 1930
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1931
    monitor-exit v1

    .line 1932
    return-void

    .line 1931
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 396
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v0

    .line 397
    .local v0, "result":Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 398
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v0, Landroid/net/wifi/NetworkUpdateResult;->isNewNetwork:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 402
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    return v1

    .line 398
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method clearLinkProperties(I)V
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 623
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 624
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_0

    .line 626
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 627
    .local v1, "proxy":Landroid/net/ProxyProperties;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->clear()V

    .line 628
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 630
    .end local v1    # "proxy":Landroid/net/ProxyProperties;
    :cond_0
    return-void
.end method

.method disableAllNetworks()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 481
    const/4 v2, 0x0

    .line 482
    .local v2, "networkDisabled":Z
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 483
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiAutoConnController:Landroid/net/wifi/WifiAutoConnController;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiAutoConnController;->isDisableByUser(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 484
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->disableNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    const/4 v2, 0x1

    .line 486
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 488
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable network failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiAutoConnController:Landroid/net/wifi/WifiAutoConnController;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiAutoConnController;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 493
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    if-eqz v2, :cond_3

    .line 494
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 496
    :cond_3
    return-void
.end method

.method disableNetwork(I)Z
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    return v0
.end method

.method disableNetwork(II)Z
    .locals 6
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .prologue
    const/4 v5, 0x1

    .line 514
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiNative;->disableNetwork(I)Z

    move-result v2

    .line 515
    .local v2, "ret":Z
    const/4 v1, 0x0

    .line 516
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 518
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v5, :cond_0

    .line 519
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 520
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 521
    move-object v1, v0

    .line 523
    :cond_0
    if-eqz v1, :cond_1

    .line 524
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 527
    :cond_1
    return v2
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1859
    const-string v2, "WifiConfigStore"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLastPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1861
    const-string v2, "Configured networks"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1863
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 1865
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1867
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v2, :cond_1

    .line 1868
    const-string v2, "WifiConfigStore - Log Begin ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1869
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1870
    const-string v2, "WifiConfigStore - Log End ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1872
    :cond_1
    return-void
.end method

.method enableAllNetworks()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 238
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-interface {v4}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 239
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiAutoConnController:Landroid/net/wifi/WifiAutoConnController;
 
    invoke-virtual {v3}, Landroid/net/wifi/WifiAutoConnController;->shouldEnableAllNetworks()Z
 
    move-result v3
 
    if-nez v3, :cond_miui_0
 
    return-void
 
    :cond_miui_0
    const/4 v3, 0x0

    .line 240
    .local v3, "networkEnabledStateChanged":Z
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-interface {v4}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasCustomizedAutoConnect()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfigStore;->getDisconnectNetworks()Ljava/util/List;

    move-result-object v1

    .line 242
    .local v1, "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 243
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v4, v7, :cond_0

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 245
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    const/4 v3, 0x1

    .line 247
    iput v8, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 249
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable network failed on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 255
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v4, v7, :cond_3

    .line 256
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 257
    const/4 v3, 0x1

    .line 258
    iput v8, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 260
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable network failed on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 266
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    if-eqz v3, :cond_6

    .line 267
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 268
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 271
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "networkEnabledStateChanged":Z
    :cond_6
    return-void
.end method

.method enableNetwork(IZ)Z
    .locals 6
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 448
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v2

    .line 449
    .local v2, "ret":Z
    if-eqz p2, :cond_1

    .line 451
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 464
    :cond_0
    :goto_0
    return v2

    .line 454
    :cond_1
    const/4 v1, 0x0

    .line 455
    .local v1, "enabledNetwork":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 456
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    move-object v1, v0

    .line 457
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    if-eqz v1, :cond_0

    .line 460
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method enableNetworkWithoutBroadcast(IZ)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 468
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v1

    .line 470
    .local v1, "ret":Z
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 471
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 473
    :cond_0
    if-eqz p2, :cond_1

    .line 474
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 476
    :cond_1
    return v1
.end method

.method forgetNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 375
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->removeNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 377
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)V

    .line 378
    const/4 v0, 0x1

    .line 381
    :goto_0
    return v0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1875
    sget-object v0, Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method getConfiguredNetworks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 228
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-object v2
.end method

.method getDisconnectNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1941
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1942
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    monitor-enter v4

    .line 1943
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1944
    .local v1, "netId":Ljava/lang/Integer;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1946
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "netId":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1947
    return-object v2
.end method

.method getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 599
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 600
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 601
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getProxyProperties(I)Landroid/net/ProxyProperties;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    .line 640
    .local v0, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v0, :cond_0

    .line 641
    new-instance v1, Landroid/net/ProxyProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    .line 643
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isUsingStaticIp(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 652
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 653
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v2, :cond_0

    .line 654
    const/4 v1, 0x1

    .line 656
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method loadAndEnableAllNetworks()V
    .locals 2

    .prologue
    const-string v0, "Loading config and enabling all networks"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiAutoConnController:Landroid/net/wifi/WifiAutoConnController;

    invoke-virtual {v0}, Landroid/net/wifi/WifiAutoConnController;->loadAndEnableAllNetworks()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method loadConfiguredNetworks()V
    .locals 12

    .prologue
    .line 686
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v5

    .line 687
    .local v5, "listStr":Ljava/lang/String;
    const/4 v9, 0x0

    iput v9, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    .line 689
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 690
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 692
    if-nez v5, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 697
    .local v4, "lines":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v9, v4

    if-ge v2, v9, :cond_8

    .line 698
    aget-object v9, v4, v2

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 700
    .local v8, "result":[Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 702
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    array-length v9, v8

    const/4 v10, 0x3

    if-le v9, v10, :cond_2

    .line 710
    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 697
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 703
    :catch_0
    move-exception v1

    .line 704
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 715
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    array-length v9, v8

    const/4 v10, 0x3

    if-le v9, v10, :cond_7

    .line 716
    const/4 v9, 0x3

    aget-object v9, v8, v9

    const-string v10, "[CURRENT]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 717
    const/4 v9, 0x0

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 725
    :goto_3
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 726
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v10, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    if-le v9, v10, :cond_3

    .line 727
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v9, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    .line 729
    :cond_3
    sget-object v9, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v9, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 730
    sget-object v9, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v9, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 733
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 738
    :cond_4
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 718
    :cond_5
    const/4 v9, 0x3

    aget-object v9, v8, v9

    const-string v10, "[DISABLED]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 719
    const/4 v9, 0x1

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_3

    .line 721
    :cond_6
    const/4 v9, 0x2

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_3

    .line 723
    :cond_7
    const/4 v9, 0x2

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_3

    .line 745
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "result":[Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    .line 746
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 750
    iget-object v9, p0, Landroid/net/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 752
    const/4 v6, 0x0

    .line 754
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    :goto_4
    if-eqz v3, :cond_9

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    goto :goto_4

    .line 766
    :cond_9
    if-eqz v7, :cond_0

    .line 767
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 769
    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 760
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v9

    .line 766
    :goto_5
    if-eqz v6, :cond_0

    .line 767
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 769
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .line 762
    :catch_4
    move-exception v9

    .line 766
    :goto_6
    if-eqz v6, :cond_0

    .line 767
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 769
    :catch_5
    move-exception v9

    goto/16 :goto_0

    .line 765
    :catchall_0
    move-exception v9

    .line 766
    :goto_7
    if-eqz v6, :cond_a

    .line 767
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 771
    :cond_a
    :goto_8
    throw v9

    .line 769
    :catch_6
    move-exception v10

    goto :goto_8

    .line 765
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 762
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 760
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method needsUnlockedKeyStore()Z
    .locals 4

    .prologue
    .line 798
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 800
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->needsSoftwareBackedKeyStore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    const/4 v2, 0x1

    .line 809
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method removeDisconnectNetwork(I)V
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 1935
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    monitor-enter v1

    .line 1936
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1937
    monitor-exit v1

    .line 1938
    return-void

    .line 1937
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 416
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNative;->removeNetwork(I)Z

    move-result v0

    .line 417
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)V

    .line 420
    :cond_0
    return v0
.end method

.method saveConfig()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    move-result v0

    return v0
.end method

.method saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 327
    if-eqz p1, :cond_0

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v6, :cond_1

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 329
    :cond_0
    new-instance v2, Landroid/net/wifi/NetworkUpdateResult;

    invoke-direct {v2, v6}, Landroid/net/wifi/NetworkUpdateResult;-><init>(I)V

    .line 343
    :goto_0
    return-object v2

    .line 332
    :cond_1
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v6, :cond_3

    const/4 v1, 0x1

    .line 333
    .local v1, "newNetwork":Z
    :goto_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v2

    .line 334
    .local v2, "result":Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v0

    .line 336
    .local v0, "netId":I
    if-eqz v1, :cond_2

    if-eq v0, v6, :cond_2

    .line 337
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v0, v4}, Landroid/net/wifi/WifiNative;->enableNetwork(IZ)Z

    .line 338
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 340
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 341
    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .end local v0    # "netId":I
    .end local v1    # "newNetwork":Z
    .end local v2    # "result":Landroid/net/wifi/NetworkUpdateResult;
    :cond_3
    move v1, v4

    .line 332
    goto :goto_1

    .restart local v0    # "netId":I
    .restart local v1    # "newNetwork":Z
    .restart local v2    # "result":Landroid/net/wifi/NetworkUpdateResult;
    :cond_4
    move v4, v5

    .line 341
    goto :goto_2
.end method

.method selectNetwork(I)Z
    .locals 8
    .param p1, "netId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 288
    if-ne p1, v7, :cond_0

    .line 315
    :goto_0
    return v2

    .line 291
    :cond_0
    iget v4, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    const v5, 0xf4240

    if-le v4, v5, :cond_4

    .line 292
    :cond_1
    const-string v4, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to reset the priority, mLastPriority:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v4, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 294
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v4, v7, :cond_2

    .line 295
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 296
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto :goto_1

    .line 299
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iput v2, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    .line 303
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 304
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 305
    iget v2, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiConfigStore;->mLastPriority:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 307
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    .line 308
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 311
    invoke-virtual {p0, p1, v3}, Landroid/net/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move v2, v3

    .line 315
    goto :goto_0
.end method

.method setIpConfiguration(ILandroid/net/LinkProperties;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 1915
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1916
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 1918
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_0

    .line 1919
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 1921
    :cond_0
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1925
    :goto_0
    return-void

    .line 1923
    :cond_1
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No configuration for netId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setLinkProperties(ILandroid/net/LinkProperties;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 608
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 609
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 611
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 614
    :cond_0
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 616
    :cond_1
    return-void
.end method

.method setWifiFwkExt(Lcom/mediatek/common/wifi/IWifiFwkExt;)V
    .locals 0
    .param p1, "wifiExt"    # Lcom/mediatek/common/wifi/IWifiFwkExt;

    .prologue
    .line 1951
    iput-object p1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    .line 1952
    return-void
.end method

.method startWpsErPbc(Ljava/lang/String;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 2017
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 2018
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNative;->startWpsErPbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2020
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 2021
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 2026
    :goto_0
    return-object v0

    .line 2023
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS Er with pbc!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsErPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1981
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 1982
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p1, p2, p3}, Landroid/net/wifi/WifiNative;->startWpsErPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1984
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 1985
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 1990
    :goto_0
    return-object v0

    .line 1987
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS Er with pin!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsErPinAny(Ljava/lang/String;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1999
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 2000
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNative;->startWpsErPinAny(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2002
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 2003
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 2008
    :goto_0
    return-object v0

    .line 2005
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS Er with pin any!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsNfc()Landroid/net/wifi/WpsResult;
    .locals 3

    .prologue
    .line 2034
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 2035
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->wpsNfc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2037
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 2038
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 2043
    :goto_0
    return-object v0

    .line 2040
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS NFC!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsNfcTagRead(Ljava/lang/String;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 2052
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 2053
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNative;->wpsNfcTagRead(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2055
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 2056
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 2061
    :goto_0
    return-object v0

    .line 2058
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS NFC tag read!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 582
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 583
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 586
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 591
    :goto_0
    return-object v0

    .line 588
    :cond_0
    const-string v1, "Failed to start WPS push button configuration"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 589
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsReg(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1961
    new-instance v7, Landroid/net/wifi/WpsResult;

    invoke-direct {v7}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 1962
    .local v7, "result":Landroid/net/wifi/WpsResult;
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->SSID:Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/WpsInfo;->authentication:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WpsInfo;->encryption:Ljava/lang/String;

    iget-object v6, p1, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/WifiNative;->startWpsRegModify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1964
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 1965
    sget-object v0, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v0, v7, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 1970
    :goto_0
    return-object v7

    .line 1967
    :cond_0
    const-string v0, "WifiConfigStore"

    const-string v1, "Failed to start WPS Reg with modifying AP\'s info!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    sget-object v0, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v0, v7, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 545
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 546
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 549
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 554
    :goto_0
    return-object v0

    .line 551
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 552
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 563
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 564
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 566
    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    invoke-direct {p0}, Landroid/net/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 568
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 573
    :goto_0
    return-object v0

    .line 570
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 571
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 347
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 348
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 349
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 365
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-void

    .line 350
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-object v1, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 352
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    :pswitch_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_miui_0

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    :cond_miui_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfigStore;->mWifiAutoConnController:Landroid/net/wifi/WifiAutoConnController;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiAutoConnController;->disConnect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
