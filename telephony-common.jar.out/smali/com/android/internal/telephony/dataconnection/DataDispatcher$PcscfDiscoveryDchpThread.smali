.class Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;
.super Ljava/lang/Thread;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PcscfDiscoveryDchpThread"
.end annotation


# static fields
.field private static final ACTION_CLEAR:I = 0x3

.field private static final ACTION_GET_V4:I = 0x1

.field private static final ACTION_GET_V6:I = 0x2


# instance fields
.field private final SERVICE_TYPE_ARRAY:[Ljava/lang/String;

.field private mAction:I

.field private mEvent:Lcom/android/internal/telephony/ImsAdapter$VaEvent;

.field private mInterfaceName:Ljava/lang/String;

.field private mTransactionId:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataDispatcher;ILjava/lang/String;Lcom/android/internal/telephony/ImsAdapter$VaEvent;I)V
    .locals 3
    .param p2, "transactionId"    # I
    .param p3, "interfaceName"    # Ljava/lang/String;
    .param p4, "event"    # Lcom/android/internal/telephony/ImsAdapter$VaEvent;
    .param p5, "action"    # I

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1370
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SIP+D2T"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SIPS+D2T"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SIP+D2U"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->SERVICE_TYPE_ARRAY:[Ljava/lang/String;

    .line 1378
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mTransactionId:I

    .line 1379
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    .line 1380
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mEvent:Lcom/android/internal/telephony/ImsAdapter$VaEvent;

    .line 1381
    iput p5, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mAction:I

    .line 1382
    return-void
.end method

.method private clearSipInfo()V
    .locals 3

    .prologue
    .line 1487
    :try_start_0
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 1488
    .local v1, "netd":Landroid/os/INetworkManagementService;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearSipInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1498
    .end local v1    # "netd":Landroid/os/INetworkManagementService;
    :goto_0
    return-void

    .line 1489
    :catch_0
    move-exception v0

    .line 1490
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1491
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1492
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1493
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 1494
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1495
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 1496
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSipInfo()V
    .locals 18

    .prologue
    .line 1404
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/NetworkUtils;->doSipDhcpRequest(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1405
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PCSCF discovery doSipDhcpRequest response fail [interface="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1100(Ljava/lang/String;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mTransactionId:I

    move/from16 v16, v0

    const/16 v17, 0x1

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V
    invoke-static/range {v15 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1200(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 1478
    :goto_0
    return-void

    .line 1410
    :cond_0
    const/4 v12, 0x0

    .line 1412
    .local v12, "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->SERVICE_TYPE_ARRAY:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_9

    aget-object v14, v1, v5

    .line 1413
    .local v14, "serviceType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1414
    .local v11, "pcscfHost":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1415
    .local v10, "pcscfByteArray":[B
    const/4 v9, 0x0

    .line 1416
    .local v9, "pcscf":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1418
    .local v13, "port":I
    :try_start_0
    const-string v15, "network_management"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    .line 1419
    .local v8, "netd":Landroid/os/INetworkManagementService;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mAction:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1420
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    const-string v16, "v4"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v14, v0}, Landroid/os/INetworkManagementService;->getSipInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v11

    .line 1434
    .end local v8    # "netd":Landroid/os/INetworkManagementService;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->isInterrupted()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1435
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "reject PCSCF discovery DHCP due to the dhcp thread is interrupted before DNS query ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1100(Ljava/lang/String;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mTransactionId:I

    move/from16 v16, v0

    const/16 v17, 0x1

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V
    invoke-static/range {v15 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1200(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 1450
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->isInterrupted()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1451
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "reject PCSCF discovery DHCP due to the dhcp thread is interrupted after DNS query ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1100(Ljava/lang/String;)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mTransactionId:I

    move/from16 v16, v0

    const/16 v17, 0x1

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V
    invoke-static/range {v15 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1200(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    .line 1412
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1422
    .restart local v8    # "netd":Landroid/os/INetworkManagementService;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    const-string v16, "v6"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v14, v0}, Landroid/os/INetworkManagementService;->getSipInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    goto :goto_2

    .line 1424
    .end local v8    # "netd":Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v3

    .line 1425
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1426
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1427
    .local v3, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 1428
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    .line 1429
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2

    .line 1430
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 1431
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    .line 1437
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_2
    if-eqz v11, :cond_3

    .line 1439
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PCSCF discovery DHCP result [host="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", port="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 1440
    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 1441
    .local v6, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    .line 1442
    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v13

    goto/16 :goto_3

    .line 1443
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    :catch_4
    move-exception v3

    .line 1444
    .local v3, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_3

    .line 1447
    .end local v3    # "e":Ljava/net/UnknownHostException;
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PCSCF discovery DHCP but no SIP response ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1100(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1453
    :cond_4
    if-eqz v10, :cond_8

    array-length v15, v10

    if-lez v15, :cond_8

    .line 1454
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v15, v10

    invoke-direct {v2, v15}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1455
    .local v2, "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    array-length v15, v10

    if-ge v4, v15, :cond_6

    .line 1456
    if-nez v4, :cond_5

    .line 1457
    aget-byte v15, v10, v4

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1455
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1459
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-byte v16, v10, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1461
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1463
    if-nez v12, :cond_7

    .line 1465
    new-instance v12, Lcom/android/internal/telephony/dataconnection/PcscfInfo;

    .end local v12    # "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    invoke-direct {v12}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;-><init>()V

    .line 1467
    .restart local v12    # "pcscfInfo":Lcom/android/internal/telephony/dataconnection/PcscfInfo;
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PCSCF discovery DHCP get server address ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", port="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", serviceTYpe="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1100(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v12, v9, v13}, Lcom/android/internal/telephony/dataconnection/PcscfInfo;->add(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1470
    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PCSCF discovery DHCP but empty SIP host ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->loge(Ljava/lang/String;)V
    invoke-static {v15}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1100(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1474
    .end local v9    # "pcscf":Ljava/lang/String;
    .end local v10    # "pcscfByteArray":[B
    .end local v11    # "pcscfHost":[Ljava/lang/String;
    .end local v13    # "port":I
    .end local v14    # "serviceType":Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_a

    .line 1475
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mTransactionId:I

    move/from16 v16, v0

    move/from16 v0, v16

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->responsePcscfDiscovery(ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V
    invoke-static {v15, v0, v12}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1300(Lcom/android/internal/telephony/dataconnection/DataDispatcher;ILcom/android/internal/telephony/dataconnection/PcscfInfo;)V

    goto/16 :goto_0

    .line 1477
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->this$0:Lcom/android/internal/telephony/dataconnection/DataDispatcher;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mTransactionId:I

    move/from16 v16, v0

    const/16 v17, 0x1

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->rejectPcscfDiscovery(II)V
    invoke-static/range {v15 .. v17}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$1200(Lcom/android/internal/telephony/dataconnection/DataDispatcher;II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public interrupt()V
    .locals 0

    .prologue
    .line 1390
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->clearSipInfo()V

    .line 1391
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 1392
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1503
    const-class v1, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;

    monitor-enter v1

    .line 1504
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mAction:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mAction:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1505
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCSCF discovery DHCP thread started [threadid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->mAction:I

    if-ne v0, v4, :cond_1

    const-string v0, "ACTION_GET_V4]"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 1506
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->getSipInfo()V

    .line 1512
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCSCF discovery DHCP thread finished [threadid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 1513
    monitor-exit v1

    .line 1514
    return-void

    .line 1505
    :cond_1
    const-string v0, "ACTION_GET_V6]"

    goto :goto_0

    .line 1508
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCSCF discovery DHCP thread started [threadid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", CLEAR]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataDispatcher;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher;->access$000(Ljava/lang/String;)V

    .line 1509
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataDispatcher$PcscfDiscoveryDchpThread;->clearSipInfo()V

    goto :goto_1

    .line 1513
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
