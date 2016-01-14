.class public Lcom/android/internal/telephony/MMTelSSUtils;
.super Ljava/lang/Object;
.source "MMTelSSUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MMTelSSUtils"

.field static XcapUri:Ljava/lang/String;

.field static ia:Ljava/net/InetAddress;

.field static queryXcapSrvDone:Z

.field static remoteIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->XcapUri:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/MMTelSSUtils;->queryXcapSrvDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpCredentialPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, ""

    .line 195
    .local v0, "sPassword":Ljava/lang/String;
    return-object v0
.end method

.method public static getHttpCredentialUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, ""

    .line 188
    .local v0, "sUserName":Ljava/lang/String;
    return-object v0
.end method

.method public static getXIntendedId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 166
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v1

    .line 167
    .local v1, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    const-string v0, ""

    .line 169
    .local v0, "sIntendedId":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    .line 170
    .local v3, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 171
    .local v2, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/SimServs;->setIntendedId(Ljava/lang/String;)V

    .line 181
    :cond_0
    return-object v0
.end method

.method public static getXcapRootUri()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 60
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v3

    .line 61
    .local v3, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/SimServs;->getXcapRoot()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "rootUri":Ljava/lang/String;
    const-string v6, "MMTelSSUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getXcapRootUri():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-nez v2, :cond_0

    .line 66
    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {v3, v2}, Lcom/mediatek/simservs/client/SimServs;->setXcapRoot(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v6, v2

    .line 107
    :goto_1
    return-object v6

    .line 72
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    .line 73
    .local v5, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 75
    .local v4, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_3

    .line 76
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "impi":Ljava/lang/String;
    const-string v6, "MMTelSSUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getXcapRootUri():get APP_FAM_IMS and impi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v3, v0}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByImpi(Ljava/lang/String;)V

    .line 102
    .end local v0    # "impi":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/SimServs;->getXcapRoot()Ljava/lang/String;

    move-result-object v2

    .line 103
    const-string v6, "MMTelSSUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getXcapRoot():rootUri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_3
    const/4 v1, 0x0

    .line 82
    .local v1, "mccMnc":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 83
    const-string v6, "MMTelSSUtils"

    const-string v7, "getXcapRootUri():IMS uiccApp is null, try to select USIM uiccApp"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 85
    if-nez v4, :cond_4

    .line 86
    const-string v6, "MMTelSSUtils"

    const-string v7, "getXcapRootUri():Select USIM/SIM uiccApp failed: null pointer"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v6, 0x0

    goto :goto_1

    .line 91
    :cond_4
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 92
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v6, "MMTelSSUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get mccMnc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from the IccRecrods"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_3
    if-eqz v1, :cond_2

    .line 99
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mediatek/simservs/client/SimServs;->setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 95
    :cond_5
    const-string v6, "MMTelSSUtils"

    const-string v7, "getXcapRootUri():uiccApp get null IccRecords!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getXui()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 111
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v4

    .line 112
    .local v4, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/SimServs;->getXui()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "sXui":Ljava/lang/String;
    const-string v7, "MMTelSSUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getXui():sXui from simSrv="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-nez v3, :cond_5

    .line 116
    invoke-static {}, Lcom/android/internal/telephony/ImsXuiManager;->getInstance()Lcom/android/internal/telephony/ImsXuiManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/ImsXuiManager;->getXui()Ljava/lang/String;

    move-result-object v3

    .line 117
    const-string v7, "MMTelSSUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getXui():sXui from XuiManager="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {v4, v3}, Lcom/mediatek/simservs/client/SimServs;->setXui(Ljava/lang/String;)V

    move-object v7, v3

    .line 161
    :goto_0
    return-object v7

    .line 123
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    .line 124
    .local v6, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    .line 125
    .local v5, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v5, :cond_2

    .line 128
    const-string v1, ""

    .line 131
    .local v1, "sImpu":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/mediatek/simservs/client/SimServs;->setXuiByImpu(Ljava/lang/String;)V

    .line 156
    .end local v1    # "sImpu":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/mediatek/simservs/client/SimServs;->getXui()Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string v7, "MMTelSSUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getXui():sXui="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v3

    .line 158
    goto :goto_0

    .line 134
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "sImsi":Ljava/lang/String;
    const-string v7, "MMTelSSUtils"

    const-string v8, "getXui():IMS uiccApp is null, try to select USIM uiccApp"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    .line 137
    if-nez v5, :cond_3

    .line 138
    const-string v7, "MMTelSSUtils"

    const-string v8, "getXui():Select USIM/SIM uiccApp failed: null pointer"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v7, 0x0

    goto :goto_0

    .line 142
    :cond_3
    const/4 v0, 0x0

    .line 143
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 144
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v7, "MMTelSSUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getXui():Imsi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mccMnc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_2
    if-eqz v0, :cond_1

    .line 151
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v2, v7, v8}, Lcom/mediatek/simservs/client/SimServs;->setXuiByImsiMccMnc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_4
    const-string v7, "MMTelSSUtils"

    const-string v8, "getXui():uiccApp get null IccRecords!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "mccMnc":Ljava/lang/String;
    .end local v2    # "sImsi":Ljava/lang/String;
    .end local v5    # "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v6    # "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_5
    move-object v7, v3

    .line 161
    goto/16 :goto_0
.end method

.method public static isSupportXcap()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 201
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSUtils;->getXcapRootUri()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MMTelSSUtils;->XcapUri:Ljava/lang/String;

    .line 202
    sput-object v1, Lcom/android/internal/telephony/MMTelSSUtils;->remoteIp:Ljava/lang/String;

    .line 203
    sput-object v1, Lcom/android/internal/telephony/MMTelSSUtils;->ia:Ljava/net/InetAddress;

    .line 204
    sput-boolean v3, Lcom/android/internal/telephony/MMTelSSUtils;->queryXcapSrvDone:Z

    .line 206
    const-string v0, "MMTelSSUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportXcap():XcapUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MMTelSSUtils;->XcapUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v0, "MMTelSSUtils"

    const-string v1, "Not Enable VOLTE feature! Return directly to use CSFB SS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v3
.end method
